import 'package:flutter/material.dart';

class InternetExceptionWidget extends StatefulWidget {
  const InternetExceptionWidget({super.key});

  @override
  State<InternetExceptionWidget> createState() =>
      _InternetExceptionWidgetState();
}

class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: height * .15),
            Icon(
              Icons.cloud_off,
              color: Colors.red,
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            SizedBox(
              height: height * .15,
            )
          ],
        ));
  }
}
