import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeChild extends StatefulWidget {
   HomeChild({Key? key,this.Info}) : super(key: key);
   var Info;

  @override
  _HomeChildState createState() => _HomeChildState();
}

class _HomeChildState extends State<HomeChild> {

  @override
  void initState() {
    // TODO: implement initState
    print("当前传入内容：${widget.Info}");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
        child: Text("",style: TextStyle(fontSize: 8.sp),maxLines: 100,),
      ),
    );
  }
}
