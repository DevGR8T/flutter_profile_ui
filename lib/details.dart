import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details(
      {required this.logo,
      required this.text,
      required this.arrowshow,
      super.key});
  final IconData logo;
  final String text;
  final bool arrowshow;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      alignment: Alignment.center,
      height: 50,
      width: 270,
      decoration: BoxDecoration(
          color: Colors.grey[700], borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Icon(
              logo,
              size: 30,
              color: Colors.white,
            ),
            Text(
              text,
              style: TextStyle(
                  fontFamily: 'Serif',
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.white),
            ),
            Spacer(),
            arrowshow
                ? Icon(
                    Icons.arrow_forward_sharp,
                    size: 19,
                    color: Colors.white,
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
