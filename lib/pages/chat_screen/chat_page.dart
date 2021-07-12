import 'package:flutter/material.dart';
import 'package:food_app/common/color_resources.dart';
import 'package:food_app/model/message_model.dart';
import 'package:food_app/pages/chat_screen/chat_screen_view_model.dart';

class ChatScreen extends StatefulWidget {

  @override
  ChatScreenState createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
   ChatScreenViewModel? model;
   TextEditingController typeTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    model ?? (model = ChatScreenViewModel(this));
    print("Current page --> $runtimeType");

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            appBar(),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                chatList(),
                message()
              ],
            )


          ],
        ),
      ),
    );
  }

  appBar(){
    return Container(
      color: ColorRes.kGreenColor,
      height: 118,
      padding: EdgeInsets.only(top: 60, left: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /*GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
              child: Icon(Icons.arrow_back, color: Colors.white,),
          ),*/
          Container(
            child: Text("Chat", style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),),
          ),
          Container()
        ],
      ),
    );
  }

  chatList(){
    return Container(
      height: MediaQuery.of(context).size.height/1.3,
      child: ListView.builder(
          itemCount: model!.smsData.length +1,
          itemBuilder: (context, index) {
            bool isLast = index==model?.smsData.length;
            if(isLast) {
              return SizedBox(height: 70);
            } else {
              if(model!.smsData[index].senderId == '1' ) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: 2,),
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width / 1.5,
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      margin: EdgeInsets.only(top: 15, right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          //color: AppColor.themeColor
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: Text(model!.smsData[index].message,
                              style: TextStyle(color: Colors.white, fontSize: 15),),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.only(right: 10),
                            child: Text(model!.smsData[index].time,
                              style: TextStyle(color: Colors.white, fontSize: 13),),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              } else {
                return Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 50,),

                        /*Container(
                          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: Image.asset(
                              model.smsData[index].image, height: 30,),
                          ),
                        ),*/
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width / 1.7,
                          padding: EdgeInsets.only(bottom: 5),
                          margin: EdgeInsets.only(top: 15, right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorRes.lightGreenColor
                          ),
                          child: Container(
                            padding: EdgeInsets.only(left: 10, top: 5),
                            child: Text(model!.smsData[index].message),
                          ),
                        ),
                        Container(
                          //alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(left: 10, top: 5),
                          child: Text(model!.smsData[index].time),
                        )
                      ],
                    )
                  ],
                );
              }
            }
          }),
    );
  }

  message(){
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorRes.lightGreenColor
      ),
      child: Row(
        children: [
          Container(
            child: Icon(Icons.emoji_emotions, color: Colors.grey, size: 20,),
          ),

          Expanded(
            child: Container(
             //height: 45,
              /*decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  //border: Border.all(color: Colors.grey.shade400, width: 1),
                  color: Colors.grey.shade200
              ),*/
              child: TextFormField(
                controller: typeTextController,
                decoration: InputDecoration(
                    hintText: "Type Your message",
                    contentPadding: EdgeInsets.only(left: 10),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(30)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(30)),
                    border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    /*suffixIcon: InkWell(
                      onTap: () {
                        *//*model.smsData.add(MessageModel(
                            name: "Will",
                            senderId: '1',
                            message: typeTextController.text,
                            time: "10:05 AM",
                            date: "2020-01-20",
                            image: ImagePath.profile,
                            relation: "Staff"
                        ));
                        typeTextController.clear();
                        setState(() {});*//*
                      },
                      child: CircleAvatar(
                        radius: 28,
                        //backgroundColor: Colors.blue,
                        //child: Icon(Icons.send)
                        child: ClipOval(
                            child: Icon(Icons.send)
                        ),
                      ),
                    )*/
                ),
              ),
            ),
          ),

          Icon(Icons.camera_alt, color: Colors.grey, size: 22,),
          SizedBox(width: 5,),
          Icon(Icons.picture_in_picture, color: Colors.grey, size: 22),
          SizedBox(width: 5,),
          GestureDetector(
            onTap: (){
              model!.smsData.add(MessageModel(
                 // name: "Will",
                  senderId: '1',
                  message: typeTextController.text,
                  time: "10:05 AM",
                 // date: "2020-01-20",
                 // image: ImagePath.profile,
                 // relation: "Staff"
              ));
              typeTextController.clear();
              setState(() {});
            },
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.orangeAccent,
              //child: Icon(Icons.send)
              child: ClipOval(
                  child: Icon(Icons.send, color: Colors.white,)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
