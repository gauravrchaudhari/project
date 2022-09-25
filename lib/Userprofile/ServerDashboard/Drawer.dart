import 'package:flutter/material.dart';
import 'package:washing_app/UserProfile/ServerDashboard/ShopDetails.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

import 'ServiceForm.dart';

// class DrawerScreen extends StatefulWidget {
//   const DrawerScreen({Key? key}) : super(key: key);

//   @override
//   DrawerScreenState createState() => DrawerScreenState();
// }

// class DrawerScreenState extends State<DrawerScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Drawer Screen"),
//       ),
//       body: const Center(
//         child: Text("Body Part"),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.symmetric(horizontal: 20.0),
//           children: [
//             DrawerHeader(
//                 child: Row(
//               children: [
//                 Container(
//                   width: 60.0,
//                   height: 60.0,
//                   decoration: const BoxDecoration(
//                     color: Color(0xff7c94b6),
//                     image: DecorationImage(
//                       image: NetworkImage(
//                           "https://avatars.githubusercontent.com/u/18672346?v=4"),
//                       fit: BoxFit.cover,
//                     ),
//                     borderRadius: BorderRadius.all(Radius.circular(75.0)),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 15.0,
//                 ),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: const [
//                     Text("Vikas Suthar",
//                         style: TextStyle(
//                             color: Colors.deepOrangeAccent,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20.0)),
//                     Text("52 Events",
//                         style: TextStyle(
//                             fontWeight: FontWeight.normal, fontSize: 15.0)),
//                   ],
//                 )
//               ],
//             )),
//             menuItem("Home", Icons.home, true),
//             menuItem("Explore", Icons.search, false),
//             menuItem("My Events", Icons.event, false),
//             menuItem("Tasks", Icons.task, false),
//             menuItem("Invite Friends", Icons.inventory, false),
//             menuItem("Settings", Icons.settings, false),
//             menuItem("About", Icons.info, false),
//             const SizedBox(height: 100.0),
//             menuItem("Log Out", Icons.logout, false),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget menuItem(String title, IconData iconData, bool isSelected) {
//     return ListTile(
//       selected: isSelected,
//       selectedColor: Colors.deepOrangeAccent,
//       title: Text(
//         title,
//         style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
//       ),
//       leading: Icon(iconData),
//       onTap: () {
//         Navigator.of(context).pop();
//         final snackBar = SnackBar(
//           content: Text("Press On $title"),
//           action: SnackBarAction(
//             label: "Undo",
//             onPressed: () {},
//           ),
//         );
//         ScaffoldMessenger.of(context).showSnackBar(snackBar);
//       },
//     );
//   }
// }

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // DrawerHeader(
          //   decoration: BoxDecoration(
          //     color: Colors.grey[300],
          //   ),
          //   child: const Text("Hii !!"),
          // ),
          // ignore: prefer_const_constructors
          UserAccountsDrawerHeader(
            accountName: const Text("Mahesh Lode"),
            accountEmail: null,
            arrowColor: Colors.grey,
            currentAccountPicture: const CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80'),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Account"),
            subtitle: const Text("Personal Details"),
            trailing: const Icon(Icons.edit),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const ShopDetails()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.shop),
            title: const Text("Shop"),
            subtitle: const Text("Shop Details"),
            trailing: const Icon(Icons.edit),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) =>ServiceForm()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.help_outlined),
            title: const Text("Help"),
            //subtitle: Text("Personal De"),
            onTap: () {
              const Text("Hello");
            },
            //trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            subtitle: const Text(""),
            onTap: () {
              const Text("Hello");
            },
            //trailing: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}

// class ServiceForm extends StatelessWidget {
//   ServiceForm({super.key});
//   // List<dynamic> services;
//   List<String> services = <String>[
//     'Exterior Washing',
//     'Interior Washing',
//     'Desk Coating',
//     'Filter Cleaning'
//   ];
//   String? SelectedService = "";
//   // @override
//   // void initState() {
//   //   initState();
//
//   //   this.services.add({"id": 1, "name": "Exterior Washing"});
//   //   this.services.add({"id": 2, "name": "Interior Washing"});
//   //   this.services.add({"id": 3, "name": "desk Coating"});
//   //   this.services.add({"id": 4, "name": "Filter Cleaning"});
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text("Your Services"),
//           backgroundColor: Colors.pink[300],
//         ),
//         body: Column(children: [
//           DropdownButton(
//             value: SelectedService,
//             items: services
//                 .map((e) => DropdownMenuItem(
//                       child: Text(e),
//                       value: e,
//                     ))
//                 .toList(),
//             onChanged: (value) {
//               setState(() {
//                 SelectedService = value as String;
//               });
//             },
//             icon: const Icon(Icons.arrow_drop_down_circle, color: Colors.pink),
//           )
//         ]),
//       ),
//     );
//   }
//
//   //void setState(Null Function() param0) {}
// }
