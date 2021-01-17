import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:user_poll/bloc.dart';
import 'package:userpoll/userpoll.dart';
import 'package:users_repository/users_repository.dart';
import 'package:polls_repository/polls_repository.dart';
import 'package:int_datetime/int_datetime.dart';

import 'user_poll_event.dart';
import 'user_poll_state.dart';
export 'user_poll_event.dart';
export 'user_poll_state.dart';

class UserPollBloc extends Bloc<UserPollEvent, UserPollState> {
  //
  final PollsRepository repo;
  final UsersRepository users;
  UserEntity user;
  UserPoll current;
  bool loaded = false;

  UserPollBloc({@required this.repo, @required this.users, this.current}) {
    user = users.current;
  }

  @override
  UserPollState get initialState => (users.current.pollAvailability)
      ? UserPollLoadingState()
      : UserPollIsDisabled();

  //

  @override
  Stream<UserPollState> mapEventToState(
    UserPollEvent event,
  ) async* {
    //
    yield UserPollLoadingState();

    if (loaded) {
      //
      /// if polls are already loaded and start evenet was sent
      if (event.runtimeType == UserPollRestartEvent)
        yield* _processActionsThatNeedReload(event);
      else if (current. /*poll is already*/ voted)
        yield UserPollIsVotedState();
      else
        yield* _processUserActions(event);

      //
    } else {
      //

      if (user.pollAvailability /*is true*/) {
        /// first, we will show a loading state
        yield UserPollLoadingState();

        /// if not loaded, but enabled for cur user
        yield* _loadPollsForCurrentUser(event);
      }

      //

      else {
        /// if polls are disabled for cur user
        yield* _processActionsThatNeedReload(event);
      }
    }
  }

  Stream<UserPollState> _processActionsThatNeedReload(
    UserPollEvent event,
  ) async* {
    switch (event.runtimeType) {
      //

      /// If poll needs to restart business logic
      /// then it will break the switch
      /// and will start _businessLogic with UserPollRestartEvent
      ///
      /// If not, will yield needed State
      /// and end current stack of function calls with "return"
      //
      case UserPollOnOffEvent:
        //

        users.pollSettingsSetter(
            availability: event.availability, studying: event.studying);

        //

        if (event.availability == false) {
          loaded = false;
          yield UserPollIsDisabled();
          return;
        }
        break;

      case UserPollChangeUserEvent:
        user = event.user;
        loaded = false;
        break;

      default:
        yield initialState;
        return;
    }
    yield* mapEventToState(UserPollRestartEvent());
  }

  Stream<UserPollState> _loadPollsForCurrentUser(
    UserPollEvent event,
  ) async* {
    //

    /// then we will load our polls repository
    await repo.load(user.id);

    /// then set the current poll by a todays poll
    current = await repo.todayPoll;

    if (current == null) {
      /// if no todays poll exists, create one
      current = UserPoll(dt: dtDay, mood: 3);

      /// and add it to repo
      repo.todayPoll = current;

      /// then save it
      await repo.save(user.id);
    }
    loaded = true;

    /// and finally, show our poll
    yield* _showThePoll();
  }

  Stream<UserPollState> _showThePoll() async* {
    if (current. /*poll is already*/ voted)
      yield UserPollIsVotedState();
    else if (user.pollsAreComplex)
      yield UserPollIsComplexState();
    else
      yield UserPollIsSimpleState();
  }

  Stream<UserPollState> _processUserActions(
    UserPollEvent event,
  ) async* {
    switch (event.runtimeType) {
      //

      /// if type of poll is changed
      case UserPollSwitchSimpleEvent:
      case UserPollSwitchComplexEvent:
        user.pollsAreComplex = !user.pollsAreComplex;
        users.write();
        yield* _showThePoll();
        break;

      /// if poll was voted
      case UserPollVoteEvent:
        current.voted = true;
        await repo.save(user.id);
        yield UserPollIsVotedState();
        break;

      /// on changeUser or disablePoll
      default:
        yield* _processActionsThatNeedReload(event);
        break;
    }
  }
}
