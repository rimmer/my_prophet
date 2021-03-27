part of 'screen.dart';

Column propheciesEnabling({
  @required MutableBool luck,
  @required MutableBool internalStrength,
  @required MutableBool moodlet,
  @required MutableBool ambition,
  @required MutableBool intelligence,
}) {
  return Column(
    children: [
      _prophecyEnablingItem(
        text: localeText.prophecyId['LUCK'],
        value: luck,
        onChanged: (_) {},
      ),
      _prophecyEnablingItem(
        text: localeText.prophecyId['INTERNAL_STRENGTH'],
        value: internalStrength,
        onChanged: (_) {},
      ),
      _prophecyEnablingItem(
        text: localeText.prophecyId['MOODLET'],
        value: moodlet,
        onChanged: (_) {},
      ),
      _prophecyEnablingItem(
        text: localeText.prophecyId['AMBITION'],
        value: ambition,
        onChanged: (_) {},
      ),
      _prophecyEnablingItem(
        text: localeText.prophecyId['INTUITION'],
        value: intelligence,
        onChanged: (_) {},
      ),
    ],
  );
}

ListTile _prophecyEnablingItem(
        {@required String text,
        @required MutableBool value,
        @required Function(bool) onChanged}) =>
    ListTile(
      leading: Text(
        text,
        style: AppTextStyle.labelText,
      ),
      trailing: MagicCheckbox(
        value: value,
        onChanged: onChanged,
      ),
    );
