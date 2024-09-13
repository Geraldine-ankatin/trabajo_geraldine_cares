import 'package:flutter/material.dart';
import 'package:trabajo_geraldine_cares/widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        // leading: const Icon(Icons.menu),
        flexibleSpace:Container(
          alignment:const Alignment(-0.4, 0.8),
          child: Image.network(
            'https://lh3.googleusercontent.com/sYGCKFdty43En6yLGeV94mfNGHXfVj-bQYitHRndarB7tHmQq_kyVxhlPejeCBVEEYUbnKG2_jUzgNXoPoer6XJm71V3uz2Z6q0CmNw=w0',
            width: 200,
            height: 50,
          ),
        ),
        title: const Padding(
          padding:EdgeInsets.only(top: 45, left: 0),
          child: Divider(
            color: Colors.grey,    
            thickness: 1, 
          ),
        )
      ),
      body: SizedBox(
        width: double.infinity, 
        height:double.infinity , 
        child: Wrap(
          children: [
            Container(
              color: Colors.white,
              padding:const EdgeInsets.all(16),
              child: Column(
                children: [
                  Image.network(
                    'https://innovationforchange.net/wp-content/uploads/2021/06/2560px-Google_Meet_text_logo_2020.svg_-1.png',
                    width: 200,
                    height: 35,
                  ),
                  const Text(
                    'Videollamadas con quien quieras, desde cualquier lugar',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Mantente en contacto y colabora con amigos, familiares y colegas, estés donde estés.',
                    textAlign: TextAlign.center,
                    style: TextStyle( 
                      fontSize: 19,
                      color: Color.fromARGB(255, 88, 86, 86),
                    ),
                  ),                  
                ],
              ),
            ),
            Center(
              child: SizedBox(
                width: 288,
                height: 55,
                child:  ElevatedButton(
                  style: ElevatedButton.styleFrom( 
                    backgroundColor:const  Color.fromARGB(255, 66, 133, 244),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'login'); 
                  },
                  child: const Text(
                    'Iniciar sesión',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                )   
              ), 
            ),
            Center(
              child: FloatingActionButton.extended(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)), 
                label:const Row(
                  mainAxisSize: MainAxisSize.min ,
                  children:[
                    Text(
                      'Prueba Meet para el trabajo',
                      style: TextStyle(
                        color: Color.fromARGB(255, 66, 133, 244),
                        fontSize: 18
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
                onPressed: (){ },    
              ),
            ),
            Center(
              child: Image.network(
                'https://lh3.googleusercontent.com/6FrXK0BclBMaKyJduB_XIHvzAEUW-XFBsJThiwJZrwM7Q7pnFprjfvTsfVRvKIf5iDBYQfwb37N6JProaywgFBqO4w4HBxFGGa7TNEA=e365-pa-nu-rw-w720',
                width: double.infinity,
                height: 250,
              ),
            ),
          ],
        ),
      ),
      drawer:const  drawer_menu(),
    );
  }
}



