import 'package:flutter/material.dart';
import 'package:morept_fitness_app/models/questions.dart';

class QuestionsProvider extends ChangeNotifier {
  String q1 = '1', q2 = '1', q3 = '1', q4 = '1', q5 = '1', q6 = '1', q7 = '1';
  List<Questions> getQuestion1() {
    const List<Questions> question = <Questions>[
      Questions(title: 'morept.shop', id: '1'),
      Questions(title: 'morept.world', id: '2'),
      Questions(title: 'itrainformore.app', id: '3'),
    ];
    return question;
  }

  List<Questions> getQuestion2() {
    final List<Questions> question = <Questions>[];
    if (q1 == '1') {
      question.add(const Questions(title: 'Services', id: '1'));
      question.add(const Questions(title: 'transform packages', id: '2'));
      question.add(const Questions(title: 'gym accelerator', id: '3'));
    } else if (q1 == '2') {
      question.add(const Questions(title: 'local events', id: '1'));
      question.add(const Questions(title: 'locate a PT', id: '2'));
      question
          .add(const Questions(title: 'Training and qualifications', id: '3'));
    } else {
      question.add(const Questions(title: 'Apparel', id: '1'));
      question.add(const Questions(title: 'Fitness equipment', id: '2'));
      question.add(const Questions(title: 'Personal equipment', id: '3'));
    }
    return question;
  }

  List<Questions> getQuestion3() {
    final List<Questions> question = <Questions>[];
    if (q2 == '1') {
      question.add(const Questions(title: 'Services', id: '1'));
      question.add(const Questions(title: 'you vs you', id: '2'));
      question.add(const Questions(title: 'mpt', id: '3'));
    } else if (q2 == '2') {
      question.add(const Questions(title: 'transform packages', id: '1'));
      question.add(const Questions(title: 'Just results', id: '2'));
      question.add(const Questions(title: 'starter pack', id: '3'));
      question.add(const Questions(title: 'Physique + Technique', id: '4'));
      question.add(const Questions(title: 'F2F', id: '5'));
    } else {
      question.add(const Questions(title: 'gym accelerator', id: '1'));
      question.add(const Questions(title: 'bodycheck', id: '2'));
      question.add(const Questions(title: 'more nutrition', id: '3'));
    }
    return question;
  }

  String getQuestion2Title() {
    String title;
    if (q1 == '1') {
      title = 'morept.shop';
    } else if (q1 == '2') {
      title = 'morept.world';
    } else {
      title = 'itrainformore.app';
    }
    return title;
  }

  String getQuestion3Title() {
    String title;
    if (q2 == '1') {
      title = 'PLEASE CHOOSE YOUR SERVICE';
    } else if (q2 == '2') {
      title = 'PLEASE CHOOSE YOUR TRANSFORMATION PACKAGE';
    } else {
      title = 'PLEASE CHOOSE YOUR GYM ACCELERATOR';
    }
    return title;
  }

  String getQuestion4Title() {
    String title;
    if (q1 == '1' && q2 == '1' && q3 == '2') {
      title = 'Please choose your you vs you Service';
    } else if (q1 == '1' && q2 == '1' && q3 == '3') {
      title = 'Please choose your mpt Service';
    } else if (q1 == '1' && q2 == '2' && q3 == '2') {
      title = 'Please choose your Just results Service';
    } else if (q1 == '1' && q2 == '2' && q3 == '3') {
      title = 'Please choose your starter pack Service';
    } else if (q1 == '1' && q2 == '2' && q3 == '4') {
      title = 'Please choose your Physique + Technique Service';
    } else if (q1 == '1' && q2 == '2' && q3 == '5') {
      title = 'Please choose your F2F Service';
    } else {
      title = 'PLEASE CHOOSE YOUR GYM ACCELERATOR';
    }
    return title;
  }

  void onChangeQ1(String? value) {
    q1 = value!;
    notifyListeners();
  }

  void onChangeQ2(String? value) {
    q2 = value!;
    notifyListeners();
  }

  void onChangeQ3(String? value) {
    q3 = value!;
    notifyListeners();
  }

  void onChangeQ4(String? value) {
    q4 = value!;
    notifyListeners();
  }

  void onChangeQ5(String? value) {
    q5 = value!;
    notifyListeners();
  }

  void onChangeQ6(String? value) {
    q6 = value!;
    notifyListeners();
  }

  void onChangeQ7(String? value) {
    q7 = value!;
    notifyListeners();
  }
}
