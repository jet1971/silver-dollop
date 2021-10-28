import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'colors.dart' as color;

class VideoInfo extends StatefulWidget {
  const VideoInfo({Key? key}) : super(key: key);

  @override
  _VideoInfoState createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  List videoInfo = [];
  initData() async {
    await DefaultAssetBundle.of(context)
        .loadString("json/videoinfo.json")
        .then((value) {
      videoInfo = json.decode(value);
    });
  }

  @override
  void initState() {
    super.initState();
    initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          color.AppColor.gradientFirst.withOpacity(0.9),
          color.AppColor.gradientSecond,
        ],
        begin: const FractionalOffset(0.0, 0.4),
        end: Alignment.topRight,
      )),
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
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(Icons.arrow_back_ios,
                          size: 20, color: color.AppColor.secondPageTitleColor),
                    ),
                    Expanded(child: Container()),
                    Icon(Icons.info_outline,
                        size: 20, color: color.AppColor.secondPageTitleColor),
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
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Container(
                      width: 85,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(colors: [
                            color.AppColor.secondPageContainerGradient1stColor,
                            color.AppColor.secondPageContainerGradient2ndColor,
                          ])),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.timer,
                            color: color.AppColor.secondPageIconColor,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "68 min",
                            style: TextStyle(
                                fontSize: 16,
                                color: color.AppColor.secondPageIconColor),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 210,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(colors: [
                            color.AppColor.secondPageContainerGradient1stColor,
                            color.AppColor.secondPageContainerGradient2ndColor,
                          ])),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.handyman_outlined,
                            color: color.AppColor.secondPageIconColor,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Resistance Band",
                            style: TextStyle(
                                fontSize: 16,
                                color: color.AppColor.secondPageIconColor),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(70))),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Circuit 1: Legs Toning",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: color.AppColor.circuitsColor),
                    ),
                    Expanded(child: Container()),
                    Row(
                      children: [
                        Icon(Icons.loop,
                            size: 30, color: color.AppColor.loopColor),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "3 sets",
                          style: TextStyle(
                            fontSize: 17,
                            color: color.AppColor.setsColor,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: videoInfo.length,
                      itemBuilder: (_, int index) {
                        return GestureDetector(
                          onTap: () {
                            debugPrint(index.toString());
                          },
                          child: Container(
                            height: 135,
                            color: Colors.redAccent,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 80,
                                      height: 80,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                              image: AssetImage(videoInfo[index]
                                                  ["thumbnail"]))),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ))
        ],
      ),
    ));
  }
}
