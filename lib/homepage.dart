import 'package:flutter/material.dart';
import 'questionbank.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

Questionbank questionbank = Questionbank();
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  // List <String> questions =[
  //   //no
  //   'You’re shorter at night than you are in the morning',//yes
  //   'Our blood contains gold',//yes
  //   'Coffee is made from berries'//yes
  //   'Wheat is the most widely cultivated and consumed crop in the world.'//no
  // ];
List <Icon> score = [];
 void finishedQuestion(){
  setState(() {
    score = [];
  });
 }

 void checkAnswer(bool userPickedAnswer) {
       bool correctAnswer = questionbank.getanswer();
       
        setState(() {
          if(questionbank.finishedQuestion() == true){
            Alert(context: context, title: "RETRY", desc: "You have reached the end").show();
            questionbank.reset();
            score = [];
          }else{
          if(correctAnswer == userPickedAnswer ){
                    score.add(const Icon(Icons.check,color: Colors.green,));
                  }
                  else{
                    score.add(const Icon(Icons.close,color: Colors.red,));
                  }
                   questionbank.nextQuestion();
  } });
 }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  flex: 6,
                  child: Center(
                    child: Text(
                       questionbank.getquestion(),
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  )),
             Expanded(
               flex: 1,
               child: GestureDetector(
                 onTap: () {
                    checkAnswer(true);
                 },
                 child: Container(
                   width: double.infinity,
                   height: 40,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(24),
                      color: Colors.green,
                   ),
                   child: Center(
                     child: Text(
                       'True',
                       style: Theme.of(context).textTheme.bodyMedium,
                     ),
                   ),
                 ),
               ),
             ),
             const SizedBox(height: 10,),
             Expanded(
               flex: 1,
               child: GestureDetector(
                 onTap: () {
                  checkAnswer(false);
                 },
                 child: Container(
                   width: double.infinity,
                   height: 40,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(24),
                      color: Colors.red,
                   ),
                   child: Center(
                     child: Text(
                       'False',
                       style: Theme.of(context).textTheme.bodyMedium,
                     ),
                   ),
                 ),
               ),
             ),
               const SizedBox(
                height: 40,
              ),
             Row(
              children: [
                ...score,
              ],
             )
            ],
            
          ),
        ),
      ),
    );
  }
}

