class Question{
  String _name;
  bool _isCorrect;
  Question(this._name, this._isCorrect);
  String get getName => this._name;
  set setName(String name) => this._name = name;
  bool get getAnswer => this._isCorrect;
  set setAnswer(bool correct) => this._isCorrect = correct;
}