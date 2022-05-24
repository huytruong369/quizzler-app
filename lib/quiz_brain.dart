import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:quizzer/question.dart';

class QuizBrain {
  int _questionNum = 0;
  final List<Question> _questionBank = [
    Question(lorem(paragraphs: 1, words: 13), true),
    Question(lorem(paragraphs: 1, words: 13), true),
    Question(lorem(paragraphs: 1, words: 13), false),
    Question(lorem(paragraphs: 1, words: 13), true),
    Question(lorem(paragraphs: 1, words: 13), false),
    Question(lorem(paragraphs: 1, words: 13), true),
    Question(lorem(paragraphs: 1, words: 13), true),
    Question(lorem(paragraphs: 1, words: 13), false),
  ];

  String getQuestionText() {
    return _questionBank[_questionNum].question;
  }

  bool getAnswerText() {
    return _questionBank[_questionNum].answer;
  }

  bool isFinish() {
    if (_questionNum >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNum = 0;
  }

  void nextquestion() {
    if (_questionNum < _questionBank.length - 1) {
      _questionNum++;
    }
  }
}
