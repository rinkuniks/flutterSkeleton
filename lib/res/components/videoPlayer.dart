import 'package:flutter/material.dart';
import 'package:mvvm/res/color.dart';
import 'package:mvvm/view_model/services/splash_services.dart';
import 'package:vimeo_video_player/vimeo_video_player.dart';

/// Created by Sawan Kumar on 12/05/23.

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({Key? key}) : super(key: key);

  @override
  State<VideoPlayer> createState() => VideoViewState();
}

class VideoViewState extends State<VideoPlayer> {
  SplashServices splashServices = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   // splashServices.checkAuthentication(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: VimeoVideoPlayer(
  url: 'https://vimeo.com/70591644',
)),
    );
  }
}
