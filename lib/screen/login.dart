import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          child: Image.network(
            'https://pbs.twimg.com/profile_images/1313547461512880128/XpnRuLqK_400x400.jpg',
            width: 50,
            height: 50,
            ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SizedBox(
        width: double.infinity, 
        height:double.infinity ,
        child: Center(
          
            child: Container(
            color: Colors.white,
            padding:const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Inicia sesión',
                  style: TextStyle(fontSize: 35),
                ),
                const Text(
                  '\nUtiliza tu cuenta de Google\n',
                  style: TextStyle(fontSize: 20),
                  ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Correo electrónico o teléfono',
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 108, 108, 108)
                      ),
                  ),
                ),
                const Text(
                  '\n¿Has olvidado tu correo electronico?\n',
                  style: TextStyle(fontSize: 16, color:Color.fromARGB(255, 66, 133, 244)),
                ),
                const Text(
                  '\n¿No es tu ordenador? Usa una ventana de navegación privada para iniciar sesión.',
                  style: TextStyle(fontSize:16 ),

                ),
                const Text(
                  'Mas informacion sobre como usar el modo invitado\n',
                  style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 66, 133, 244)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      'Crear cuenta',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 66, 133, 244),
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:const Color.fromARGB(255, 66, 133, 244),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'password');
                      },
                      child:const Text(
                        'Siguiente',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                  ],
                ),
                Expanded(child: Container(),),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Español (España)   ',
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.blueGrey,
                    ),
                    Text('  Ayuda   '),
                    Text('Privacidad   '),
                    Text('Términos'),
                  ],
                ),
              ],
            ),
          ),

        ),
      ),
    );
  }
}