bool validateStructure({required String value}){
  String textPattern = r'^.{8,}$';
  RegExp regExp = new RegExp(textPattern);
  return regExp.hasMatch(value);
}