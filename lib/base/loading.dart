import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

/// Created by Sawan Kumar on 18/05/23.

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Opacity(
        opacity: 0.5,
        child: Container(
            color: Colors.black,
            child:  const Center(
              child: SizedBox(height:300, width :300,
                child: SpinKitCircle(
                  color: Colors.blue,
                  size: 100.0,
                ),
              ),
            )));
  }
}