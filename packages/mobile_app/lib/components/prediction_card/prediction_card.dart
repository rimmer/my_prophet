import 'common.dart';

class PredictionCard extends StatefulWidget {
  final String text;

  PredictionCard({this.text = "I am the card!"});

  @override
  _PredictionCardState createState() => _PredictionCardState();
}

class _PredictionCardState extends State<PredictionCard>
    with SingleTickerProviderStateMixin {
  AnimationController _textFadeController;
  Animation<double> _textFade;

  @override
  void initState() {
    _textFadeController = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );

    _textFade = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _textFadeController,
      curve: Curves.ease,
    ));

    super.initState();
  }

  @override
  void dispose() {
    _textFadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _textFadeController
      ..reset()
      ..forward();

    return Container(
      height: height,
      width: width,
      margin: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        bottom: 8.0,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: StaticAsset.rust["card_text"],
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: AnimatedBuilder(
        animation: _textFadeController,
        builder: (context, child) => FadeTransition(
          opacity: _textFade,
          child: Center(
            child: SingleChildScrollView(
              child: Text(
                widget.text,
                style: AppTextStyle.predictionCardText,
              ),
            ),
          ),
        ),
      ),
    );
  }
}