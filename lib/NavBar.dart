import 'package:bookmyveg/login_page.dart';
import 'package:boxicons/boxicons.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ant_design.dart';
import 'package:iconify_flutter/icons/ion.dart';

//import 'package:iconify_flutter/icons/gridiconsebsymbol.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const IconThemeData(color: Colors.deepOrange);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Color.fromRGBO(234, 235, 209, 0.90),
          UserAccountsDrawerHeader(
            accountName: Text('User'),
            accountEmail: Text('User@gmail.com'),
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
                        Icons.format_list_bulleted,
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
                        Icons.shopping_cart,
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

          const ListTile(
            leading: Icon(Boxicons.bxs_user_detail),
            title: Text('My Profile'),
            //onTap: () => null,
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.person_alt),
            title: Text('About Us'),
            //onTap: () => null,
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.doc_checkmark),
            title: Text('Privacy Policy'),
            //onTap: () => null,
          ),
          const ListTile(
            leading: Iconify(Ion.arrow_return_left),
            title: Text('Return Refund'),
            //onTap: () => null,
          ),
          const ListTile(
            leading: Icon(Icons.rate_review_outlined),
            title: Text('Review Us'),
            //onTap: () => null,
          ),
          const ListTile(
            leading: Icon(FluentIcons.share_24_filled),
            title: Text('Share with Friends'),
            //onTap: () => null,
          ),
          ListTile(
            leading: Iconify(AntDesign.logout_outlined),
            title: Text('Logout'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => login(),
              ),
            ),
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
