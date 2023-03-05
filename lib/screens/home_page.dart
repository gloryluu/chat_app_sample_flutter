import 'package:chat_app_sample_flutter/screens/channel_page/channel_page.dart';
import 'package:chat_app_sample_flutter/screens/chat_page/chat_page.dart';
import 'package:chat_app_sample_flutter/screens/profile_page/profile_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const ChatPage(),
    const ChannelPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('BottomNavigationBar Sample'),
      // ),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work),
            label: 'Channels',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}


// class HomePage extends StatelessWidget {
//   int _selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ChatPage(),
//       bottomNavigationBar: BottomNavigationBar(
//         selectedItemColor: Colors.red,
//         unselectedItemColor: Colors.grey.shade600,
//         selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
//         unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
//         type: BottomNavigationBarType.fixed,
//         items: [
//           const BottomNavigationBarItem(
//             icon: Icon(Icons.message),
//             label: 'Chats',
//           ),
//           const BottomNavigationBarItem(
//             icon: Icon(Icons.group_work),
//             label: 'Channels',
//           ),
//           const BottomNavigationBarItem(
//             icon: Icon(Icons.account_box),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }

//     void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
// }
