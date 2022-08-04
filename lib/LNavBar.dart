import 'package:bookmyveg/login_page.dart';
import 'package:boxicons/boxicons.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class lnavbar extends StatelessWidget {
  const lnavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const IconThemeData(color: Colors.deepOrange);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Color.fromRGBO(234, 235, 209, 0.90),
          UserAccountsDrawerHeader(
            accountName: Text(''),
            accountEmail: Text(
              'Welcome User !',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                    'https://img.freepik.com/free-vector/cute-panda-sipping-boba-milk-tea-cartoon-icon-illustration-animal-food-icon-concept-isolated-flat-cartoon-style_138676-2173.jpg?w=2000',
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                    'https://img.freepik.com/free-photo/abstract-flowing-neon-wave-background_53876-101942.jpg?w=2000'),
                fit: BoxFit.cover,
              ),
            ),
            margin: EdgeInsets.zero,
          ),
          Container(
            padding: EdgeInsets.only(bottom: 8.0),
            color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.view_list_rounded,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'My Order',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.shopping_cart_sharp,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Cart',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            // decoration: BoxDecoration(
            //   color: Color.fromRGBO(234, 235, 209, 0.90),
            // ),
          ),
          // Colors.blue,
          // Container(
          //   decoration: BoxDecoration(
          //     color: Color.fromRGBO(234, 235, 209, 0.90),
          //   ),
          // ),

          ListTile(
            leading: Icon(Icons.home_rounded),
            title: Text('Login/SignUp'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => login(),
              ),
            ),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.person_alt),
            title: Text('About Us'),
            //onTap: () => null,
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.doc_checkmark),
            title: Text('Terms & Privacy'),
            //onTap: () => null,
          ),
          const ListTile(
            leading: Icon(Icons.privacy_tip_outlined),
            title: Text('Privacy Policy'),
            //onTap: () => null,
          ),
          const ListTile(
            leading: Icon(Icons.cached_sharp),
            title: Text('Return Refund'),
            //onTap: () => null,
          ),
          const ListTile(
            leading: Icon(Icons.message_outlined),
            title: Text('Review Us'),
            //onTap: () => null,
          ),
          const ListTile(
            leading: Icon(FluentIcons.share_24_filled),
            title: Text('Share with Friends'),
            //onTap: () => null,
          ),
          const ListTile(
            leading: Icon(Boxicons.bx_copyright),
            title: Text('Powered By Book My Veg'),
            //onTap: () => null,
          ),
        ],
      ),
    );
  }
}
