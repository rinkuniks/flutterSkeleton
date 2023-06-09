import 'package:flutter/material.dart';
import '../color.dart';

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
    // Font family missing 
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
                color: AppColors.blueText,
                onPressed: onPressed,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                      color: AppColors.white),
                ),
              ) 

              :

              MaterialButton(
                shape: RoundedRectangleBorder(
                   side: const BorderSide(color: AppColors.logInText),
                    borderRadius: BorderRadius.circular(5)),
                color: AppColors.white,
                onPressed: onPressed,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                      color: AppColors.logInText),
                ),
              )
              );
  }
}
