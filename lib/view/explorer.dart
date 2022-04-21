import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../controller/explorer_controller.dart';

class Video extends StatelessWidget {
  Video({Key? key}) : super(key: key);
  var ex = Get.put(ExplorerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 204, 203, 1.0),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(232, 133, 133, 1),
        title: Text('المستكشف'.tr),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: ex.get_video(),
        builder: (ctx, snapShot) {
          if (snapShot.connectionState == ConnectionState.waiting) {
            return Center(
                child: CircularProgressIndicator(
              color: Color.fromRGBO(232, 133, 133, 1),
            ));
          }
          if (snapShot.hasData) {
            return ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: snapShot.data?.docs.length,
              itemBuilder: (ctx, index) {
                return Padding(
                  padding: EdgeInsets.only(top: 10.h),
                  child: ListTile(
                    tileColor: Colors.white,
                    iconColor: Color.fromRGBO(232, 133, 133, 1),
                    title: Center(
                      child: Text(
                        snapShot.data?.docs[index]['title'],
                        style: TextStyle(
                            color: Color.fromRGBO(215, 115, 114, 1.0),
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp),
                      ),
                    ),
                    subtitle: YoutubePlayer(
                        width: MediaQuery.of(context).size.width,
                        aspectRatio: 100.h / 100.w,
                        controller: YoutubePlayerController(
                          initialVideoId: YoutubePlayer.convertUrlToId(
                              snapShot.data?.docs[index]['url'])!,
                          flags: YoutubePlayerFlags(
                            autoPlay: false,
                            hideControls: false,
                            disableDragSeek: true,
                          ),
                        ),
                        progressColors: ProgressBarColors(
                            playedColor: Color.fromRGBO(232, 133, 133, 1),
                            handleColor: Colors.amberAccent,
                            backgroundColor: Color.fromRGBO(232, 133, 133, 1)),
                        progressIndicatorColor:
                            Color.fromRGBO(232, 133, 133, 1)),
                    //snapShot.data?.docs[index]['answer'],
                  ),
                );
              },
            );
          }
          return Container();
        },
      ),
    );
  }
}
/*YoutubePlayer(
controller:YoutubePlayerController(
initialVideoId: YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=2QM-JXud36A&list=RDMM2QM-JXud36A&start_radio=1")!,
flags: YoutubePlayerFlags(
autoPlay: true,
enableCaption: true,
hideControls: false,
),
), progressIndicatorColor: Colors.green),*/
