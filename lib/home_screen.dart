import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/question.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {

  final questions_text = [
    {
      'question' : 'Какое утверждение про циклы верное?',
      'answers' : [
    {'text': 'В цикле for может быть только один счетчик', 'answer': false},
		{'text': 'Цикл while может быть не выполнен ни разу', 'answer': true},
		{'text': 'Цикл for не может быть бесконечным','answer': false},
      ]
    },
   {
      'question' : 'Сколько раз выполнится цикл for (int i=0; i&lt;3; i++)?',
      'answers' : [
    {'text': '2', 'answer': false},
		{'text': '3', 'answer': true},
		{'text': '4','answer': false},
      ]
    },
     {
      'question' : 'Как правильно объявить переменную?',
      'answers' : [
    {'text': 'string text="text";', 'answer': false},
		{'text': 'char text[]="text";', 'answer': false},
		{'text': 'char text[]="text";','answer': true},
      ]
    },
     {
      'question' : 'Где процессор будет искать файл #include?',
      'answers' : [
    {'text': 'string text="text";', 'answer': false},
		{'text': 'char text[]="text";', 'answer': false},
		{'text': 'char text[]="text";','answer': true},
      ]
    },
    {
      'question' : 'Какого модификатора доступа не существует?',
      'answers' : [
    {'text': 'protected'
    , 'answer': false},
		{'text': 'included'
    , 'answer': true},
		{'text': 'private'
    ,'answer': false},
      ]
    },
    {
      'question' : 'Какое утверждение верно?',
      'answers' : [
    {'text': 'Размер переменной типа bool меньше, чем типа char', 'answer': false},
		{'text': 'Переменная типа float занимает столько же места, как и double', 'answer':false},
		{'text': 'Размер переменной типа char равен единице','answer': true},
      ]
    },
     {
      'question' : 'Чему равна переменная a и x?',
      'img':'assets/images/first.png',
      'answers' : [
    {'text': '8 и 7', 'answer': false},
		{'text': '8 и 2', 'answer': true},
		{'text': '6 и 2','answer': false},
      ]
    },
     {
      'question' : 'Что отобразится на экране?',
      'img':'assets/images/second.png',
      'answers' : [
    {'text': '10 234.5 8822', 'answer': false},
		{'text': '10234.58822', 'answer': false},
		{'text': '102340','answer': true},
      ]
    },
     {
      'question' : 'Чему будет равна переменная х?',
      'img':'assets/images/third.png',
      'answers' : [
    {'text': 'Остаток от деления 400 на 3,который умножается на 2', 'answer': false},
		{'text': 'Остаток от деления 400 на 6', 'answer': true},
		{'text': 'Количество процентов, которое 6 составляет от 400','answer': false},
      ]
    },
    {
      'question' : 'Чему будет равен вывод?',
      'img':'assets/images/fourth.png',
      'answers' : [
    {'text': '11', 'answer': true},
		{'text': '26', 'answer': false},
		{'text': '36','answer': false},
      ]
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Scaffold(
      
        backgroundColor: Colors.transparent,
        body: Container(
          height: context.screenHeight,
         
            child: Center(
              child: Container(
                child: ListView.builder(
                  itemCount: questions_text.length,
                  itemBuilder: ((context, index) {
                    var s = index +1;
                  return   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                          onPressed: () {
                            Get.to(()=>MyWidget(question: questions_text[index],));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              foregroundColor: Colors.black,
                              elevation: 0,
                              side: const BorderSide(
                                width: 1.0,
                                color: Color.fromRGBO(0,154,34,1)
                              )),
                          child:  Text('Задание ' + s.toString(),
                          style: TextStyle(color: Colors.white),)),
                  );})),
              ),
            ),
          ),
        ));
        }
}
    
