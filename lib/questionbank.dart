import 'package:flutter/material.dart';
import 'questions.dart';
class Questionbank {
  int _questionNumber = 0;
  final List<Question> _questionlist = [
    Question('There are five different blood groups', false),
    Question('Our body contains gold', true),
    Question('You are shorter at night than you are in the morning', true),
    Question('Wheat is the most widely cultivated and consumed crop in the world', false),
    Question('A group of crocodiles are called shrewdness', false),
    Question('Dogs can understand up to 250 hand gestures', true),
    Question('A hair of a polar bear\'s fur is white', false),
    Question('The Indian elephant is larger than the African elephant', false),
    Question('A snail can sleep for up to 3 months', false),
    Question('Apes cannot laugh', false),
    Question('Penguins can\'t be found on the continent of Africa', false),
    Question('The Amazon River has native dolphins', true),
    Question('A slug has four noses', true),
    Question('A Peregrine Falcon is the fastest bird in the world', true),
  ];

  String getquestion() {
    return (_questionlist[_questionNumber].question); 
  }

  bool getanswer() {
    return (_questionlist[_questionNumber].answer);
  }

  void nextQuestion() {
    if (_questionNumber < _questionlist.length - 1) {
      _questionNumber++;
    }
  }
  bool finishedQuestion(){
    if(_questionNumber >= _questionlist.length -1){
      return true;

    }else{
      return false;
    }
  }
  void reset(){
    _questionNumber = 0;
  }
}
