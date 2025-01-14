import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SignUpScreen extends StatefulWidget {
  final VoidCallback onViewSwitch;

  const SignUpScreen({Key? key, required this.onViewSwitch}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.red,child: Column(children: [Text( "Cryto Compact",
              style: Theme.of(context).textTheme.headline1,)],),)
         
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "REGISTRO",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(7.1),
            child: Text(
              "USUARIO",
              style: Theme.of(context).textTheme.headline2,textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: '',
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(7.1),
            child: Text(
              "CORREO ELECTRONICO",
              style: Theme.of(context).textTheme.headline2,textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: '',
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(7.1),
            child: Text(
              "Contraseña:",
              style: Theme.of(context).textTheme.headline2,textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              obscuringCharacter: "*",
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: '',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.offNamed('/content');
                    },
                    child: const Text("Registrar",style: TextStyle(color: Colors.black),),
                    style: ElevatedButton.styleFrom(primary: Colors.redAccent),),
                  ),
                ),
              
            ],
          ),
          //TextButton(
           // onPressed: widget.onViewSwitch,
            //child: const Text("Entrar"),
         // ),
         // const Spacer(),
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Equipo 9",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ],
      ),
    );
    
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
