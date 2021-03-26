part of '../screen.dart';

extension DailyScreenCardsMethods on _DailyScreenState {
  ListView cards() {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Center(
          child: (dat.currentCard != null)
              ? dat.currentCard
              : BigCardPlaceholder(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //

            (toShow.moodlet)
                ? Padding(
                    padding: EdgeInsets.symmetric(horizontal: 1.0),
                    child: GestureDetector(
                      onTap: () {
                        _chooseTree();
                        _chooseTreeBig();
                      },
                      child: (dat.treeChoise)
                          ? SmallBadCard(mode: 2, icon: "tree")
                          : (dat.treeWasChossen)
                              ? SmallBadCard(mode: 1, icon: "tree")
                              : SmallBadCard(mode: 0, icon: "tree"),
                    ),
                  )
                : SizedBox(),

            //

            (toShow.intuition)
                ? Padding(
                    padding: EdgeInsets.symmetric(horizontal: 1.0),
                    child: GestureDetector(
                      onTap: () {
                        _chooseCoin();
                        _chooseCoinBig();
                      },
                      child: (dat.coinChoise)
                          ? SmallBadCard(mode: 2, icon: "coins")
                          : (dat.coinWasChossen)
                              ? SmallBadCard(mode: 1, icon: "coins")
                              : SmallBadCard(mode: 0, icon: "coins"),
                    ),
                  )
                : SizedBox(),

            //

            (toShow.luck)
                ? Padding(
                    padding: EdgeInsets.symmetric(horizontal: 1.0),
                    child: GestureDetector(
                      onTap: () {
                        _chooseStar();
                        _chooseStarBig();
                      },
                      child: (dat.starChoise)
                          ? SmallBadCard(mode: 2, icon: "star")
                          : (dat.starWasChossen)
                              ? SmallBadCard(mode: 1, icon: "star")
                              : SmallBadCard(mode: 0, icon: "star"),
                    ),
                  )
                : SizedBox(),

            //

            (toShow.ambition)
                ? Padding(
                    padding: EdgeInsets.symmetric(horizontal: 1.0),
                    child: GestureDetector(
                      onTap: () {
                        _chooseSword();
                        _chooseSwordBig();
                      },
                      child: (dat.swordChoise)
                          ? SmallBadCard(mode: 2, icon: "sword")
                          : (dat.swordWasChossen)
                              ? SmallBadCard(mode: 1, icon: "sword")
                              : SmallBadCard(mode: 0, icon: "sword"),
                    ),
                  )
                : SizedBox(),

            //

            (toShow.internalStrength)
                ? Padding(
                    padding: EdgeInsets.symmetric(horizontal: 1.0),
                    child: GestureDetector(
                      onTap: () {
                        _chooseCup();
                        _chooseCupBig();
                      },
                      child: (dat.cupChoise)
                          ? SmallBadCard(mode: 2, icon: "cup")
                          : (dat.cupWasChossen)
                              ? SmallBadCard(mode: 1, icon: "cup")
                              : SmallBadCard(mode: 0, icon: "cup"),
                    ),
                  )
                : SizedBox(),

            //

            (toShow.internalStrength == false &&
                    toShow.moodlet == false &&
                    toShow.ambition == false &&
                    toShow.intuition == false &&
                    toShow.luck == false)
                ? Padding(
                    padding: EdgeInsets.symmetric(horizontal: 1.0),
                    child: GestureDetector(
                      onTap: () {
                        _chooseStar();
                        _chooseStarBig();
                      },
                      child: (dat.starChoise)
                          ? SmallBadCard(mode: 2, icon: "star")
                          : (dat.starWasChossen)
                              ? SmallBadCard(mode: 1, icon: "star")
                              : SmallBadCard(mode: 0, icon: "star"),
                    ),
                  )
                : SizedBox()

            //
          ],
        ),
      ],
    );
  }

  _chooseTree() {
    // ignore: invalid_use_of_protected_member
    setState(() {
      dat.treeChoise = true;
      dat.treeWasChossen = true;
      dat.coinChoise = false;
      dat.starChoise = false;
      dat.swordChoise = false;
      dat.cupChoise = false;
    });
  }

  _chooseTreeBig() {
    // ignore: invalid_use_of_protected_member
    setState(() {
      dat.currentCard = BigCard(
        text: getPrediction(type: ProphecyType.MOODLET),
      );
    });
  }

  _chooseCoin() {
    // ignore: invalid_use_of_protected_member
    setState(() {
      dat.coinChoise = true;
      dat.coinWasChossen = true;
      dat.treeChoise = false;
      dat.starChoise = false;
      dat.swordChoise = false;
      dat.cupChoise = false;
    });
  }

  _chooseCoinBig() {
    // ignore: invalid_use_of_protected_member
    setState(() {
      dat.currentCard = BigCard(
        text: getPrediction(type: ProphecyType.INTUITION),
      );
    });
  }

  _chooseStar() {
    // ignore: invalid_use_of_protected_member
    setState(() {
      dat.starChoise = true;
      dat.starWasChossen = true;
      dat.treeChoise = false;
      dat.coinChoise = false;
      dat.swordChoise = false;
      dat.cupChoise = false;
    });
  }

  _chooseStarBig() {
    // ignore: invalid_use_of_protected_member
    setState(() {
      dat.currentCard = BigCard(
        text: getPrediction(type: ProphecyType.LUCK),
      );
    });
  }

  _chooseSword() {
    // ignore: invalid_use_of_protected_member
    setState(() {
      dat.swordChoise = true;
      dat.swordWasChossen = true;
      dat.treeChoise = false;
      dat.coinChoise = false;
      dat.starChoise = false;
      dat.cupChoise = false;
    });
  }

  _chooseSwordBig() {
    // ignore: invalid_use_of_protected_member
    setState(() {
      dat.currentCard = BigCard(
        text: getPrediction(type: ProphecyType.AMBITION),
      );
    });
  }

  _chooseCup() {
    // ignore: invalid_use_of_protected_member
    setState(() {
      dat.cupChoise = true;
      dat.cupWasChossen = true;
      dat.treeChoise = false;
      dat.coinChoise = false;
      dat.starChoise = false;
      dat.swordChoise = false;
    });
  }

  _chooseCupBig() {
    // ignore: invalid_use_of_protected_member
    setState(() {
      dat.currentCard = BigCard(
        text: getPrediction(type: ProphecyType.INTERNAL_STRENGTH),
      );
    });
  }
}
