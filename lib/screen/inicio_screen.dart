import 'package:flutter/material.dart';

class InicioScreen extends StatelessWidget {
  const InicioScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network('https://innovationforchange.net/wp-content/uploads/2021/06/2560px-Google_Meet_text_logo_2020.svg_-1.png',
              width: 200,
              height: 35,),
            const Icon(Icons.help, color: Color.fromARGB(255, 96, 96, 96)),
            const Icon(Icons.feedback, color: Color.fromARGB(255, 96, 96, 96)),
            const Icon(Icons.settings, color: Color.fromARGB(255, 96, 96, 96)),
            const Icon(Icons.apps, color: Color.fromARGB(255, 96, 96, 96)),
            const Icon(Icons.account_circle, color: Colors.black),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: SizedBox(
        width: double.infinity, 
        height:double.infinity ,
        child: Wrap(
          children: [
            Container(
              padding:const EdgeInsets.all(18),
              color: Colors.white,
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Videollamadas y reuniones para todos',
                  style: TextStyle(fontSize: 35),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const Text('Conecta, colabora y celebra desde cualquier lugar con Google Meet',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              
                const SizedBox(height: 20),
                Container(
                  child: FloatingActionButton.extended(
                    backgroundColor: const Color.fromARGB(255, 66, 133, 244),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)), 
                    label:const Row(
                      mainAxisSize: MainAxisSize.min ,
                      children:[
                        Icon(Icons.videocam, color: Colors.white),
                        Text(
                          '  Nueva Reunión',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      
                      ],
                    ),
                    onPressed: (){ },    
                  ),
                 
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.keyboard),
                          labelText: 'Introduce un código o enlace',
                          labelStyle: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 88, 88, 88)
                          ),
                        ),
                      )
                    ),
                    Text('  Unirme', style: TextStyle(color: Colors.grey, fontSize: 16)),
                  ],
                ),
                const SizedBox(height: 20),
                const Divider(
                  color: Colors.grey,    
                  thickness: 1,             
                ),
                Center(
                  child: Image.network('https://www.gstatic.com/meet/premium_carousel_01_c90aec4dbb8bb21d1e18c468ad080c97.gif',
                    width: 300,
                    height:300 ,
                  ),
                ),

              ],
            ),
          ),
          ],
        ),
      ),
    );
  }
  
}