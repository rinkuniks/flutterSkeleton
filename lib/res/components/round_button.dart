import 'package:flutter/material.dart';

import '../appColors.dart';

/// Created by Sawan Kumar on 12/05/23.

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final bool loading;
  final bool bgColor;
  const RoundButton(
      {Key? key,
      required this.title,
      required this.onPressed,
      this.loading = false,
      this.bgColor = false,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 40,
        width:  MediaQuery.of(context).size.width - 60,
        child: loading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : !bgColor ?  MaterialButton(
                shape: RoundedRectangleBorder(
                   // side: BorderSide(color: AppColors.logInText),
                    borderRadius: BorderRadius.circular(5)),
                color: MyColors.blueText,
                onPressed: onPressed,
                child: Text(
                  title,
                  style: TextStyle(color: MyColors.white),
                ),
              ) 

              :

              MaterialButton(
                shape: RoundedRectangleBorder(
                   side: BorderSide(color: MyColors.logInText),
                    borderRadius: BorderRadius.circular(5)),
                color: MyColors.white,
                onPressed: onPressed,
                child: Text(
                  title,
                  style: TextStyle(color: MyColors.logInText),
                ),
              )
              );
  }
}
