import 'package:flutter/material.dart';

class AppBarPrincipal extends StatelessWidget implements PreferredSizeWidget {
  String usuario = 'nombreUsuario';

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('POSTULACIONES - Bienvenido $usuario'),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.power_off_sharp),
          onPressed: (){
            Navigator.pushReplacementNamed(context, 'login');
          }, 
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(40);
}