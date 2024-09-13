import 'package:flutter/material.dart';

class drawer_menu extends StatelessWidget {
  const drawer_menu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    ),
                    Image.network('https://lh3.googleusercontent.com/sYGCKFdty43En6yLGeV94mfNGHXfVj-bQYitHRndarB7tHmQq_kyVxhlPejeCBVEEYUbnKG2_jUzgNXoPoer6XJm71V3uz2Z6q0CmNw=w0',
                    width: 200,
                  ),
    
                ],
              ),
            ),
          ),
           ListTile(
            title:const Text('Soluciones'),
            onTap: () {},
          ),
          ListTile(
            title:const Text('Productos'),
            onTap: () {},
          ),
          ListTile(
            leading: Image.network('https://w7.pngwing.com/pngs/799/918/png-transparent-mail-google-gmail-google-s-logo-icon.png',
              height: 30,
              width: 30,
            ),
            title:const Text('Gmail'),
            onTap: () {},
          ),
          ListTile(
            leading: Image.network('https://w7.pngwing.com/pngs/37/745/png-transparent-google-calendar-google-s-logo-icon.png',
              height: 30,
              width: 30,
            ),
            title:const Text('Calendario'),
            onTap: () {},
          ),
          ListTile(
            leading: Image.network('https://w7.pngwing.com/pngs/297/1000/png-transparent-google-drive-google-logo-google-docs-google-angle-rectangle-triangle.png',
              width: 25,
            ),
            title:const Text('Drive'),
            onTap: () {},
          ),
          ListTile(
            leading: Image.network('https://w7.pngwing.com/pngs/704/812/png-transparent-google-meet-camera-logo-icon-thumbnail.png',
    
              width: 30,
            ),
            title:const Text('Meet'),
            onTap: () {Navigator.pushNamed(context, 'home');},
          ),
          ListTile(
            leading: Image.network('https://e7.pngegg.com/pngimages/205/953/png-clipart-google-docs-mobile-app-application-software-app-store-google-blue-angle-thumbnail.png',
              height: 30,
              width: 30,
            ),
            title:const Text('Documentos'),
            onTap: () {},
          ),
          ListTile(
            leading: Image.network('https://w7.pngwing.com/pngs/530/917/png-transparent-g-suite-google-docs-spreadsheet-google-sheets-google-angle-rectangle-logo.png',
    
              width: 40,
            ),
            title:const Text('Hojas de cálculo'),
            onTap: () {},
          ),
          ListTile(
            leading: Image.network('https://w1.pngwing.com/pngs/0/1010/png-transparent-google-logo-google-docs-google-slides-google-drive-g-suite-presentation-slide-presentation-program-microsoft-powerpoint.png',
              width: 40,
            ),
            title:const Text('Presentaciones'),
            onTap: () {},
          ),
          ListTile(
            leading: Image.network('https://static.wikia.nocookie.net/logopedia/images/d/d6/Google_Chat_icon_%282023%29.svg/revision/latest/scale-to-width-down/250?cb=20231215171250',
              width: 20,
            ),
            title:const Text('Chat'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}