import 'package:avatar_glow/avatar_glow.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    const Duration initialDelay = Duration(seconds: 1);
    return Scaffold(
        backgroundColor: const Color(0xFF4766F9),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 70),
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: 420,
            child: Stack(children: [
              // Image.asset('assets/splash_shadow.png'),
              Positioned(
                top: 120,
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: 220,
                  child: AvatarGlow(
                    startDelay: const Duration(milliseconds: 1000),
                    glowColor: Colors.white.withOpacity(0.20000000298023224),
                    glowShape: BoxShape.circle,
                    child: const SizedBox(),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 60,
                child: DelayedDisplay(
                  delay: initialDelay,
                  child: Image.asset(
                    'assets/splash_img.png',
                    width: 350,
                    height: 350,
                  ),
                ),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 10, bottom: 8),
            child: DelayedDisplay(
              delay: Duration(seconds: initialDelay.inSeconds + 1),
              child: const Text(
                'Easy Way to \nInvest in Crypto',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontFamily: 'SF UI  Text',
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.50,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: DelayedDisplay(
              delay: Duration(seconds: initialDelay.inSeconds + 2),
              child: Text(
                'A new way to manage and trade all your crypto easily and fastest in the market',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.699999988079071),
                  fontSize: 16,
                  fontFamily: 'SF UI  Text',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.50,
                ),
              ),
            ),
          ),
          DelayedDisplay(
            delay: Duration(seconds: initialDelay.inSeconds + 3),
            child: Container(
              margin: const EdgeInsets.only(left: 25, top: 24),
              width: 58,
              height: 58,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70), color: Colors.white),
              child: const Icon(Icons.arrow_forward, color: Color(0xFF4766F9)),
            ),
          )
        ]));
  }
}
