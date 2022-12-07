import 'package:flutter/material.dart';
import 'package:js_onboarding/utils/utils.dart';

class NextButton extends StatelessWidget {
  NextButton({
    Key key,
    @required this.onPressed,
  }) : super(key: key);

  final Function onPressed;

  final customBorder = BorderRadius.only(
    bottomLeft: Radius.circular(30.0),
    topLeft: Radius.circular(30.0),
  );

  final customGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      CustomTheme.colorBlue,
      CustomTheme.colorGreen,
    ],
  );

  final customTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
  );

  final customShadow = [
    BoxShadow(
      color: CustomTheme.colorBlue,
      blurRadius: 20.0,
      offset: Offset(0.0, 5.0),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: customBorder,
        boxShadow: customShadow,
      ),
      child: Material(
        borderRadius: customBorder,
        child: InkWell(
          onTap: onPressed,
          splashColor: CustomTheme.colorGreen,
          borderRadius: customBorder,
          child: Ink(
            padding: EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 12.0,
            ),
            decoration: BoxDecoration(
              gradient: customGradient,
              borderRadius: customBorder,
            ),
            child: Text(
              'NEXT',
              style: customTextStyle,
            ),
          ),
        ),
      ),
    );
    //Este Codgio  se comento porquee esta dentro de la   otras especificacioenes
    //
    // return ElevatedButton(
    //   style: ButtonStyle(
    //     elevation: MaterialStateProperty.resolveWith<double>((states) {
    //       return 10.0;
    //     }),
    //     backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
    //       return CustomTheme.colorBlue;
    //     }),
    //     shadowColor: MaterialStateProperty.resolveWith<Color>((states) {
    //       return CustomTheme.colorBlue;
    //     }),
    //     padding: MaterialStateProperty.resolveWith<EdgeInsets>((states) {
    //       return EdgeInsets.symmetric(
    //         horizontal: 30.0,
    //         vertical: 10.0,
    //       );
    //     }),
    //     shape: MaterialStateProperty.resolveWith<RoundedRectangleBorder>(
    //       (states) {
    //         return RoundedRectangleBorder(
    //           borderRadius: BorderRadius.only(
    //             bottomLeft: Radius.circular(30.0),
    //             topLeft: Radius.circular(30.0),
    //           ),
    //         );
    //       },
    //     ),
    //   ),
    //   child: Text(
    //     'NEXT',
    //     style: TextStyle(fontSize: 18.0),
    //   ),
    //   onPressed: () {},
    // );
  }
}
