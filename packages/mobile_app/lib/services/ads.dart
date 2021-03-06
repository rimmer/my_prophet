import 'package:flutter/widgets.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:my_prophet/services/static_provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Ad successfully received and ready to be shown
/// Call [AdWithoutView.show()] to show the ad
typedef AdsLoadedCallback = void Function(AdWithoutView ad);

/// Ad has been displayed and next action can be performed
typedef AdsWatchedCallback = void Function();

/// Something went wrong with the ad
typedef AdsFailedCallback = void Function(AdError error);

initAds({
  @required AdsLoadedCallback onLoaded,
  @required AdsWatchedCallback onWatched,
  AdsFailedCallback onFailed,
}) async {
  //
  if (onFailed == null)
    onFailed = (error) {
      onWatched();
    };

  //
  final adUnitProd = dotenv.env["ad_unit_prod_id"];
  final adUnitTest = dotenv.env["ad-unit-test-id"];

  //

  String adUnitId = StaticProvider.debug.isDebug ? adUnitTest : adUnitProd;

  await AdManagerInterstitialAd.load(
    adUnitId: adUnitId,
    adLoadCallback: AdManagerInterstitialAdLoadCallback(
      /// If Ad request is successfully received.
      onAdLoaded: (AdManagerInterstitialAd manager) {
        onLoaded(manager);
        debugPrint('Ad loaded.');
        StaticProvider.firebase.analytics.logEvent(name: "ad_loaded");
      },

      /// If Ad request is failed.
      onAdFailedToLoad: (LoadAdError error) {
        onFailed(error);
        StaticProvider.firebase.analytics.logEvent(
            name: "ad_failed_load",
            parameters: {
              'error_message': error.message,
              'error_code': error.code
            });
        debugPrint('Ad failed to load: $error');
      },
    ),
    request: AdManagerAdRequest(),
  );

  if (StaticProvider.ads.manager != null)
    StaticProvider.ads.manager.fullScreenContentCallback =
        FullScreenContentCallback(

            /// When Ad opens an overlay that covers the screen.
            onAdShowedFullScreenContent: (AdManagerInterstitialAd manager) {
      debugPrint('Ad opened.');
      StaticProvider.firebase.analytics.logEvent(name: "ad_opened");
    },

            /// When Ad removes an overlay that covers the screen.
            onAdDismissedFullScreenContent: (AdManagerInterstitialAd manager) {
      onWatched();
      manager.dispose();
      debugPrint('Ad closed.');
      StaticProvider.firebase.analytics.logEvent(name: "ad_watched");
    },

            /// An InterstitialAd can only be shown once.
            /// Subsequent calls to show will trigger this
            onAdFailedToShowFullScreenContent:
                (AdManagerInterstitialAd manager, AdError error) {
      /// dispose anyway
      manager.dispose();

      /// if not watched then it is not a subsequent call
      if (StaticProvider.ads.adsAreWatched == false) {
        onFailed(error);
        StaticProvider.firebase.analytics.logEvent(
            name: "ad_failed_show",
            parameters: {
              'error_message': error.message,
              'error_code': error.code
            });
        debugPrint('Ad failed to show: $error');
      }
    }, onAdImpression: (AdManagerInterstitialAd manager) {
      // @TODO
    });
}
