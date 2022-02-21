
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../ProviderModel/Models.dart';


void FeedBack(context){
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  GlobalKey Feed  = GlobalKey<FormState>();
   showDialog(context: context, builder: (BuildContext context){
    return Dialog(
      child: Container(
        height: 130.h,
        width: 60.w,
        child: Card(
          child: Form(
            key: Feed,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
      Column(children: [
        Container(
            height: 30.h,

            child: TextFormField(
              controller: textEditingController1,
              validator: (v){
                return v!.length > 5 ? null : "标题好好描述";
              },
              maxLines: 1,
              maxLength: 11,
              decoration: InputDecoration(
                  hintText: "请输入标题",
                  counterText: "",
                  hintStyle: TextStyle(fontSize: 9.sp)
              ),
            ),
        ),
      ],),
        Column(children: [
            Container(
              height: 50.h,
              child: TextFormField(
                controller: textEditingController2,
                validator: (v){
                  return v!.length > 5 ? null : "请好好描述";
                },
                maxLength: 150,
                maxLines: 3,
                decoration: InputDecoration(
                  counterText: "",
                    hintText: "请简单描述一下你要反馈的事情",
                    hintStyle: TextStyle(fontSize: 9.sp)
                ),
              ),
            ),
        ],),
                Container(
                  height: 30.h,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("提交",style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.bold,color: Colors.red),),
                      InkWell(onTap: (){
                        textEditingController1.clear();
                        textEditingController2.clear();
                      },child: Text("重置",style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.bold,color: Colors.red),)),

                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  });
}



///登录弹窗
void Login(context){

  var FromKey = GlobalKey<FormState>();
  showDialog(context: context, builder: (BuildContext context){
    return Dialog(

      child: Card(
        child: Container(
          height: 140.h,
          width: 50.w,
          child: Column(children: [
            Form(
              key: FromKey,
              child: Column(
                children: [
                  Container(
                    height: 20.h,
                    child: Center(child: Text("会员操作",style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.bold),)),
                  ),
                  Container(
                    height:40.h,
                    decoration: BoxDecoration(
                      border: Border(bottom:BorderSide(width: 1,color: Color(0xffe5e5e5)) )
                    ),
                    child: TextFormField(
                      validator: (v){
                        print("当前值:$v");
                        return v!.length > 5 ? null : "账号不能少于5位";
                      },
                      maxLength: 11,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "用户名为手机或邮箱",
                          hintStyle:TextStyle(fontSize: 8.sp),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(bottom:BorderSide(width: 1,color: Color(0xffe5e5e5)) )
                    ),
                    height: 40.h,
                    child: TextFormField(
                      validator: (v){
                        print("当前值:$v");
                        return v!.length > 5 ? null : "密码有误";
                      },
                      obscureText: true,
                      maxLength: 10,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                        hintText: "三次密码机会",
                        hintStyle:TextStyle(fontSize: 8.sp),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(onTap: (){
                        if((FromKey.currentState as FormState).validate()){
                          print("通过");
                        }
                      },child: Text("登录",style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.bold,color: Colors.indigo),)),
                      Text("注册",style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.bold,color: Colors.red),),
                    ],
                  )
                ],
              ),
            )
          ],
          ),
        ),
      ),
    );
  });
}




void Callme(context){
  //联系我
  showDialog(context: context, builder: (BuildContext context){
    return Dialog(
      child: Card(
        child:Container(
          height: 140.h,
          width: 50.w,
          child: Column(
            children: [
              Text("扫码支付,我自会加你",style: TextStyle(fontSize: 10.sp),),
              Container(
                height: 120.h,
                width: 50.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("Images/wexin.png"),
                        fit: BoxFit.contain
                    )
                ),
              ),

            ],
          ),
        ),
      ),
    );
  });
}


void AlertError(context){
  return showAboutDialog(
    context: context,
    applicationIcon: Image.asset(
      'Images/icon.jpg',
      height: 60.r,
      width: 60.r,
    ),
    applicationName: '论剑大会',
    applicationVersion: '1.0.0',
    applicationLegalese: '暂不开放',

    children: <Widget>[],
  );
}

PreferredSizeWidget AppbarWidegt(context,routePath){
  return AppBar(
    backgroundColor: Color(0x44000000),
    elevation: 0,
    leading: Container(
      width: 50.w,
      height:20.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(Provider.of<Models>(context,listen: false).city,style: TextStyle(fontSize:9.sp),),

          Text(Provider.of<Models>(context,listen: false).Weather,style: TextStyle(fontSize: 9.sp),),

        ],),
    ),
    actions: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(onTap: (){

            print("当前路由${routePath}");
            if(routePath != "/"){
              Navigator.of(context).pushNamed("/");
            }


          },child: Text("首页",style: TextStyle(fontSize: 10.sp),)),
          SizedBox(width: 10.w,),
          InkWell(onTap: (){
            if(routePath != "/history"){
              Navigator.of(context).pushNamed("/history");
            }

          },child: Text("日志记录",style: TextStyle(fontSize: 10.sp),)),
          SizedBox(width: 10.w,),
          GestureDetector(onTap: (){
            FeedBack(context);
          },
              child: Text("反馈资料",style: TextStyle(fontSize: 10.sp),)),
          SizedBox(width: 10.w,),
          InkWell(onTap: (){
            AlertError(context);
          },child: Text("发表博客",style: TextStyle(fontSize: 10.sp),)),
          SizedBox(width: 10.w,),
          InkWell(onTap: (){
            Callme(context);
          },child: Text("联系我们",style: TextStyle(fontSize: 10.sp),)),
          SizedBox(width: 10.w,),
          GestureDetector(onTap: (){
            Login(context);
          },child: Text("加入会员",style: TextStyle(fontSize: 10.sp),)),
          SizedBox(width: 10.w,),
        ],
      )
    ],
  );
}