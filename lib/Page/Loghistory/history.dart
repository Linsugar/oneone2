import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../Untils/UntilsWidget.dart';



class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    var routePath = ModalRoute.of(context)!.settings.name;
    return  Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppbarWidegt(context, routePath),
        body:     Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("Images/imag2.jpg"),
                  fit: BoxFit.cover
              )
          ),
          child: ListView.separated(
              itemBuilder: (context, int index){
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(0.5.w),
                      decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        colors:[Colors.white,Colors.blueAccent]
                      ),
                        borderRadius: BorderRadius.circular(2)
                      ),
                      width: 100.w,
                      height: 80.h,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("当前标题内容",maxLines: 1,style: TextStyle(fontSize: 10.sp),),
                          Text("当前更新内容",style: TextStyle(fontSize: 10.sp),maxLines: 3,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("更新时间：",maxLines: 1,style: TextStyle(fontSize: 10.sp),),
                              Text("更新者：",maxLines: 1,style: TextStyle(fontSize: 10.sp),)
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                );
              },
              separatorBuilder: (context,int index){
                return Column(
                  children: [
                    Container(
                      width: 100.w,

                      color: Colors.blue,
                    )
                  ],
                );
              },
              itemCount: 100),
        )
    );

  }
}
