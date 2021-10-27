import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart' as color;

class VideoInfo extends StatefulWidget {
  const VideoInfo({Key? key}) : super(key: key);

  @override
  _VideoInfoState createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                color.AppColor.gradientFirst.withOpacity(0.9),
                color.AppColor.gradientSecond,
              ],
            begin: const FractionalOffset(0.0, 0.4),
            end: Alignment.topRight,
          )
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_back_ios, size: 20,
                    color: color.AppColor.secondPageTitleColor),
                    Expanded(child: Container()),
                    Icon(Icons.info_outline  , size: 20,
                        color: color.AppColor.secondPageTitleColor),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  "Legs Toning",
                  style: TextStyle(
                      fontSize: 25,
                      color: color.AppColor.homePageContainerTextSmall),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "and Glutes Workout",
                  style: TextStyle(
                      fontSize: 25,
                      color: color.AppColor.homePageContainerTextSmall),
                ),
                SizedBox(height: 50,),
                Row(
                  children: [
                    Container(
                      width: 90,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            color.AppColor.secondPageContainerGradient1stColor,
                            color.AppColor.secondPageContainerGradient2ndColor,
                          ]
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.timer,
                          color: color.AppColor.secondPageIconColor,),
                          SizedBox(width: 5,),
                          Text(
                            "68 minss",
                            style: TextStyle(
                              fontSize: 16,
                              color:color.AppColor.secondPageIconColor
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
