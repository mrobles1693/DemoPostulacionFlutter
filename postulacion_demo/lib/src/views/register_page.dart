import 'package:flutter/material.dart';
import 'package:postulacion_demo/src/views/widgets/fondos_widget.dart';

class RegisterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            FondosWidgets().fondoLoginRegister(),
            zonaRegister(context, size)
          ],
        ),
      ),
    );
  }

  Widget zonaRegister(BuildContext context, size){
    return SingleChildScrollView(
      child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: size.width * 0.1,
                  vertical: size.height * 0.1
                ),
                width: size.width * 0.8,
                padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                   vertical: 10
                  ),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.blueAccent,
                      width: 0,
                    ),
                    left: BorderSide(
                      color: Colors.blueAccent,
                      width: 0,
                    ),
                    right: BorderSide(
                      color: Colors.blueAccent,
                      width: 0,
                    ),
                    bottom: BorderSide(
                      color: Colors.blueAccent,
                      width: 3.0,
                    ),
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                  ),
                ),
                child: ElementosRegister(),
              ),
    );
  }

  Widget ElementosRegister(){
    return Column(
      children: [
        const Text("REGISTRO USUARIO"),
        const SizedBox(
          height: 10,
        ),
        const TextField(
          decoration: InputDecoration(
            hintText: 'Nombres',
          ),
        ),
        const TextField(
          decoration: InputDecoration(
            hintText: 'Apellidos',
          ),
        ),
        const TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'Correo',
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
          child: const Text('REGISTRAR'),
          onPressed: () {
            // Navigator.pushReplacementNamed(context, 'menuPrincipal');
          },
        ),
      ],
    );
  }
}