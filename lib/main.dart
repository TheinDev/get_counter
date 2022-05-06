import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_counter/controller.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    final ctl = Get.put(Controller());
    return GetMaterialApp(home:  Scaffold(
      appBar: AppBar(title: Obx(()=>Text("Click ${ctl.count}")),),
      body: Container(

        child: Center(child: ElevatedButton(
          child: Text("Go To Other")


          ,onPressed: ()=> Get.to(NewPage()),
        ),),
      ),
    ),);
  }
}

class NewPage extends StatelessWidget {
   NewPage({Key? key}) : super(key: key);

  final Controller ctrl = Get.find();


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

