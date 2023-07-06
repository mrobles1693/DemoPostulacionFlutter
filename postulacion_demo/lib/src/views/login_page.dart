import 'package:flutter/material.dart';
import 'package:postulacion_demo/src/views/widgets/fondos_widget.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            FondosWidgets().fondoLoginRegister(),
            zonaLogin(context, size)
          ],
        ),
      ),
    );
  }


  Widget zonaLogin(BuildContext context, Size size) {
    return SingleChildScrollView(
      child: Row(
        children: [
          SizedBox(
            width: size.width * 0.15
          ),
          Column(
            children: [
              SizedBox(
                height: size.height * 0.25,
              ),
              Container(
                width: size.width * 0.7,
                height: (size.height > size.width) ? size.width * 0.8 : size.width * 0.4,
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: ElementosLogin(context),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget ElementosLogin(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("INICIAR SESIÓN"),
        const SizedBox(
          height: 10,
        ),
        const TextField(
          decoration: InputDecoration(
            hintText: 'Usuario',
          ),
        ),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Password',
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          child: const Text('INGRESAR'),
          onPressed: () {
            // Navigator.pushReplacementNamed(context, 'menuPrincipal');
          },
        ),
        ElevatedButton(
          child: const Text('REGISTRAR'),
          onPressed: () {
            Navigator.pushNamed(context, 'register');
          },
        ),
        ElevatedButton(
          child: const Text('TEST REST'),
          onPressed: () {
          },
        )
      ],
    );
  }

}