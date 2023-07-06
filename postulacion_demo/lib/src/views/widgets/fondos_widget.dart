import 'package:flutter/material.dart';

class FondosWidgets extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget fondoLoginRegister(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.blue, Colors.white, Colors.white]
          )
      ),
    );
  }
}