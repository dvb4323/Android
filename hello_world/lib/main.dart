import 'package:flutter/material.dart';

// class MyAppBar extends StatelessWidget {
//   const MyAppBar({required this.title, super.key});
//
//   final Widget title;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 56,
//       padding: const EdgeInsets.symmetric(horizontal: 8),
//       decoration: BoxDecoration(color: Colors.blue[500]),
//       child: Row(
//         children: [
//           const IconButton(
//             icon: Icon(Icons.menu),
//             tooltip: 'Navigation menu',
//             onPressed: null,
//           ),
//           Expanded(child: title),
//           const IconButton(
//             icon: Icon(Icons.search),
//             tooltip: 'Search',
//             onPressed: null,
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class MyScaffold extends StatelessWidget {
//   const MyScaffold({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Column(
//         children: [
//           MyAppBar(
//             title: Text(
//               'Example Title',
//               style: Theme.of(context).primaryTextTheme.titleLarge,
//             ),
//           ),
//           const Expanded(child: Center(child: Text('Hello, World!'))),
//         ],
//       ),
//     );
//   }
// }

void main() {
  runApp(const MaterialApp(title: 'My app', home: TutorialHome()));
}

class TutorialHome extends StatelessWidget {
  const TutorialHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: const Text('Example title'),
        actions: const [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          )
        ],
      ),
      body: const Center(child: Text('Hello, world!')),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
    );
  }
}
