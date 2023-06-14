import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:velocity_x/velocity_x.dart';

class MyWidget extends StatefulWidget {
  Map question;

   MyWidget({super.key,required this.question});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget>  with TickerProviderStateMixin {
    late AnimationController animationController;
    bool pressAttention = false;
    bool pressed = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 1000));
  }
  Widget build(BuildContext context) {

    return Scaffold(
    backgroundColor: Color.fromRGBO(46, 45, 45, 0.004),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 150),
            child: widget.question['img'] != null  ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Text(widget.question['question'],style: TextStyle(color: Colors.white,fontSize: 20),),
                Image.asset(widget.question['img']),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: widget.question['answers'].length,
                  itemBuilder: (context,index){
                  return    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          if (widget.question['answers'][index]['answer'] != null && pressed ==true){
                            
                          }
                          else{
                            if(widget.question['answers'][index]['answer'] == true){
                            setState(() {
                              pressAttention = widget.question['answers'][index]['answer'];
                               pressed = true;
                            });
                            animationController.forward();
                            
                            
                          }else{
                            setState(() {
                              pressed ==true ;
                            });
                            VxToast.show(context, msg: 'Попробуйте еще раз');
                          }
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor:widget.question['answers'][index]['answer'] == true && pressed ==true   ? Color.fromRGBO(0,154,34,1) : Colors.transparent,
                            foregroundColor: Colors.black,
                            elevation: 0,
                            side: const BorderSide(
                              width: 1.0,
                              color: Color.fromRGBO(0,154,34,1)
                            )),
                        child:  Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text( widget.question['answers'][index]['text'] ,
                          style: TextStyle(color: Colors.white),),
                        )),
                  );
                }),
                Container(
              height: 100.0,
              child: Lottie.asset(
                'assets/animations/f.json',
                controller: animationController,
                height: 180,
                width: 180,
                repeat: false,
              ),
              
            ),
          
            ]) : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Text(widget.question['question'],style: TextStyle(color: Colors.white,fontSize: 20),),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: widget.question['answers'].length,
                  itemBuilder: (context,index){
                  return    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          if (widget.question['answers'][index]['answer'] != null && pressed ==true){
                            
                          }
                          else{
                            if(widget.question['answers'][index]['answer'] == true){
                            setState(() {
                              pressAttention = widget.question['answers'][index]['answer'];
                               pressed = true;
                            });
                            animationController.forward();
                            
                            
                          }else{
                            setState(() {
                              pressed ==true ;
                            });
                            VxToast.show(context, msg: 'Попробуйте еще раз');
                          }
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor:widget.question['answers'][index]['answer'] == true && pressed ==true   ? Color.fromRGBO(0,154,34,1) : Colors.transparent,
                            foregroundColor: Colors.black,
                            elevation: 0,
                            side: const BorderSide(
                              width: 1.0,
                              color: Color.fromRGBO(0,154,34,1)
                            )),
                        child:  Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text( widget.question['answers'][index]['text'] ,
                          style: TextStyle(color: Colors.white),),
                        )),
                  );
                }),
                Container(
              height: 100.0,
              child: Lottie.asset(
                'assets/animations/f.json',
                controller: animationController,
                height: 180,
                width: 180,
                repeat: false,
              ),
              
            ),
          
            ])
          ),
        ),
    );
  }
}