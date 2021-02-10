import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Show Dialog',
        home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('Show Dialog'),
            ),
          ),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(onPressed: (){
                  Get.defaultDialog(
                    title: "Dialog",
                    titleStyle: TextStyle(fontSize: 30.0),
                    middleText: 'Hello RAMENDAR',
                    backgroundColor: Colors.green,
                    radius: 50.0,

                    //Customize middle text
                    content: Row(
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(height: 16.0,),
                        Expanded(child: Text('Loding Data'),),
                      ],
                    ),
                    textCancel:'Cancel',
                    cancelTextColor: Colors.white,
                    textConfirm: 'Confirm',
                    confirmTextColor: Colors.white,
                    onCancel: (){},
                    onConfirm: (){},
                    cancel: Text(
                      'Cancels',style: TextStyle(
                      color: Colors.white,
                    ),
                    ),
                    confirm: Text(
                      'Confirms',style: TextStyle(
                      color: Colors.white,
                    ),
                    ),
                    actions: [
                      RaisedButton(onPressed: (){},child: Text('Action -1'),),
                      RaisedButton(onPressed: (){},child: Text('Action -2'),),
                    ]
                  );
                },
                  child: Text('Show Dialog'),
                  )
              ],
            ),
          ),
        ),
    );
  }
}

