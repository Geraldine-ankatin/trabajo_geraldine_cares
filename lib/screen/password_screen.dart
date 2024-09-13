import 'package:flutter/material.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});
  
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
                  'Te damos la bienvenida',
                  style: TextStyle(fontSize: 35),
                ),
                const SizedBox(height: 10),
                OutlinedButton(
                  onPressed: () {},
                  child:const  Row(
                    children: [
                      Icon(Icons.account_circle),
                      Text('correo_del_usuario@ejemplo.com',style: TextStyle(color: Colors.black, fontSize: 16),),
                      Icon(Icons.keyboard_arrow_down,)
                    ]
                  ),
                ),
                const SizedBox(height: 60),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'introduce tu contraseña',
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 108, 108, 108)
                      ),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.check_box_outline_blank),
                    Text('  mostrar contraseña',style: TextStyle(fontSize: 16),),
                  ],
                ),
                const SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      '¿Has olvidado tu contraseña?',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 66, 133, 244),
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 66, 133, 244),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'inicio');
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