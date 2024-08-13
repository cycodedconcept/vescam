import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Buttons {
  Widget onboardingButtons({title, action}) {
    return SizedBox(
      height: 48,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: action,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: Text(
            title,
            style: const TextStyle(
                color: Color(0xff001F3F),
                fontSize: 16,
                fontWeight: FontWeight.w600),
          )),
    );
  }

  Widget fadedButtons({title, action}) {
    return SizedBox(
      height: 48,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: action,
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: const Color(0xffF8FAFB),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: Text(
            title,
            style: const TextStyle(
                color: Color(0xff001F3F),
                fontSize: 16,
                fontWeight: FontWeight.w600),
          )),
    );
  }

  Widget authButtons({title, action}) {
    return SizedBox(
      height: 48,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: action,
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: const Color(0xff001F3F),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          )),
    );
  }

  Widget borderButton({title, action}) {
    return SizedBox(
      height: 48,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: action,
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.white,
              side: const BorderSide(color: const Color(0xff001F3F)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: Text(
            title,
            style: const TextStyle(
                color: const Color(0xff001F3F),
                fontSize: 16,
                fontWeight: FontWeight.w600),
          )),
    );
  }

  Widget alternativeButtons({title, action}) {
    return InkWell(
      onTap: action,
      child: Container(
        height: 53,
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color(0xff004359),
            borderRadius: BorderRadius.circular(12)),
        child: const Center(
          child: Text(
            "Next",
            style: TextStyle(
                color: Colors.white, fontFamily: "OpenMed", fontSize: 16),
          ),
        ),
      ),
    );
  }

  Widget socialButtons({title, action, icon}) {
    return Container(
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 0),
                  blurRadius: 20,
                  spreadRadius: 0,
                  color: Colors.black.withOpacity(0.05))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/images/$icon"),
            const SizedBox(
              width: 15,
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Color(0xff030206),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            )
          ],
        ));
  }
}
