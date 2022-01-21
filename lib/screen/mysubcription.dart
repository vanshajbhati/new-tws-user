import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:provider/provider.dart';
import 'package:twsuser/apiService/apimanager.dart';

class MySubscription extends StatefulWidget {
  @override
  _MySubscriptionState createState() => _MySubscriptionState();
}

class _MySubscriptionState extends State<MySubscription> {

  String amount;

  @override
  void initState() {
    var future = Provider.of<ApiManager>(context,listen: false).isSubscriptionApi(context);
    future.then((value) {
      setState(() {
        amount = value.data.packageAmount;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black87,
        title: Text("MY SUBSCRIPTION",style: TextStyle(
            color: Colors.white
        ),),
        leading: Icon(Icons.arrow_back,color: Colors.white,),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[

                  Expanded(
                    flex: 1,
                      child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0XFF2CB3BF),
                    ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0XFF8BD2DF),
                                borderRadius: BorderRadius.circular(4)
                              ),
                              padding: EdgeInsets.only(left: 13,right: 13,top: 5,bottom: 5),
                                child: Text("STANDARD",
                                style: TextStyle(
                                  color: Colors.white,
                                ),)),
                            // SizedBox(height: 7,),
                            Text("4,999/-",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w600
                            ),),
                            // SizedBox(height: 7,),
                            Text("For 3 months",style: TextStyle(
                              fontSize: 13,
                              color: Colors.white
                            ),)
                          ],
                        ),
                      ),
                  ),

                  Container(
                    height: 100,
                    width: 14,
                    decoration: BoxDecoration(
                      color: Color(0XFF2CB3BF),

                    ),
                    child: Center(
                      child: DottedLine(
                        direction: Axis.vertical,
                        lineLength: double.infinity,
                        lineThickness: 1.0,
                        dashLength: 8.0,
                        dashColor: Colors.white,
                        dashRadius: 0.0,
                        dashGapLength: 4.0,
                        dashGapColor: Colors.transparent,
                        dashGapRadius: 0.0
                      ),
                    ),
                  ),

                  Expanded(
                      child: Container(
                        height: 120,
                        padding: EdgeInsets.only(left: 13),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0XFF2CB3BF),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[

                            Text("Feature",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.w600
                            ),),

                            SizedBox(height: 7,),

                            Row(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 2,
                                  backgroundColor: Colors.white),

                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Text("Progress Report Access",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal
                                    ),),
                                ),

                              ],
                            ),
                            SizedBox(height: 7,),
                            Row(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 2,
                                  backgroundColor: Colors.white,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Text("All Exercises",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal
                                    ),),
                                ),

                              ],
                            ),

                            SizedBox(height: 7,),
                            Row(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 2,
                                  backgroundColor: Colors.white,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Text("Checkins Acess",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal
                                    ),),
                                ),

                              ],
                            ),
                          ],
                        ),
                      )),
                ],
              ),
              /*Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top:20,bottom: 20,),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10)
                ),

                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [

                            Icon(Icons.watch_later_outlined,color: Color(0XFFD0D0D0),
                              size: 15,),

                            SizedBox(width: 6,),

                            Text("Next Billing Date",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0XFFD0D0D0)
                            ),)
                          ],
                        ),

                        Text("17 August, 2020",
                        style: TextStyle(
                          fontSize: 18*MediaQuery.of(context).textScaleFactor,
                          color: Color(0XFF5C5C5C),
                          fontWeight: FontWeight.w600
                        ),),

                      ],
                    ),

                    SizedBox(height: 20,),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Subscription Details",style: TextStyle(
                          fontSize: 19*MediaQuery.of(context).textScaleFactor,
                          color: Color(0XFF4E4E4E),
                          fontWeight: FontWeight.w600
                      ),),
                    ),

                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          height: 1,
                          width: MediaQuery.of(context).size.width,
                          color: Color(0XFFBDBDBD),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          width: 180,
                          height: 3,
                          color: Color(0XFF2CB3BF),
                        )
                      ],
                    ),

                    SizedBox(height: 9,),

                    Text("Lorem Ipsum ipsum sjds ja dioc soid aof ro of idfs oic siodn cks i",style: TextStyle(
                        color: Color(0XFFA3A3A3),
                        fontWeight: FontWeight.normal,
                        fontSize: 15
                    ),),

                    ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 6,
                        itemBuilder: (context,index){
                          return ListTile(
                            leading: Icon(Icons.check,color: Color(0XFF2CB3BF),),
                            title: Text("Customized Diet Plan",style: TextStyle(
                                fontSize: 16*MediaQuery.of(context).textScaleFactor,
                                color: Color(0XFF4E4E4E),
                                fontWeight: FontWeight.normal
                            ),),
                          );
                        }),

                  ],
                ),

              ),*/

            ],
          ),
        ),
      ),
    );
  }
}