import 'question.dart';

class QuizBrain{
  int _q_no = 0;

  List<Question> _questionbank = [
    Question(q: 'Surface area of earth is 510.1 million km².', a: true),
    Question(q: 'There are no planets beyond our solar system.', a: true),
    Question(q: 'Sunlight requires nearly 25 seconds to reach Earth.', a: false),
    Question(q: 'Blue stars are much cooler than red stars.', a: false),
    Question(q: 'The Moon is larger in surface area than the United States.', a: true),
    Question(q: 'Waterloo has the greatest number of tube platforms in London.', a: true),
    Question(q: 'In Harry Potter, Draco Malfoy has no siblings.', a: false), //Skylar Malfoy is his younger sister
    Question(q: " 'A' is the most common letter used in the English language.", a: false), //E
    Question(q: 'Australia is wider than the moon.', a: true),
    Question(q: 'The unicorn is the national animal of Scotland.', a: true),
  ];

  get context => null;

  void nextquestion() {
    if(_q_no < _questionbank.length - 1)
    {
      _q_no++;
    }
    print(_q_no);
    print(_questionbank.length);
  }
  String getQuestionText(){
    return _questionbank[_q_no].questionText;
  }

  bool getQuestionAnswer(){
    return _questionbank[_q_no].questionAnswer;
  }

  bool isFinished() {
    if (_q_no >= _questionbank.length - 1) {
      print('Now returning true');
      return true;
    }
    else {
      return false;
    }
  }
  void reset() {
    _q_no = 0;
  }
}