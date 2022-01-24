// https://stackoverflow.com/questions/50764558/expand-the-app-bar-in-flutter-to-allow-multi-line-title
// https://stackoverflow.com/questions/44489804/show-hide-widgets-in-flutter-programmatically
import 'package:flutter/material.dart';

// class SliverMultilineAppBar extends StatefulWidget {
//   final String? title;
//   final Widget? leading;
//   List<Widget>? actions;

//   SliverMultilineAppBar({this.title, this.leading, this.actions});

//   @override
//   _SliverMultilineAppBarState createState() => _SliverMultilineAppBarState(
//       title: title, leading: leading, actions: actions);
// }

// class _SliverMultilineAppBarState extends State<StatefulWidget> {
//   final String? title;
//   final Widget? leading;
//   List<Widget>? actions;
//   bool visibility = false;

//   _SliverMultilineAppBarState({this.title, this.leading, this.actions});

//   @override
//   void initState() {
//     super.initState();
//     actions?.add(IconButton(
//       onPressed: changedVisibility,
//       icon: Icon(Icons.extension_outlined),
//     ));
//   }

//   void changedVisibility() {
//     setState(() {
//       visibility = !visibility;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);

//     double availableWidth = mediaQuery.size.width - 160;
//     availableWidth -= 32 * (actions?.length ?? 0);
//     if (leading != null) {
//       availableWidth -= 32;
//     }

//     return SliverAppBar(
//       expandedHeight: (visibility ? 112.0 : 56.0),
//       forceElevated: true,
//       leading: leading,
//       actions: actions,
//       flexibleSpace: visibility
//           ? FlexibleSpaceBar(
//               title: ConstrainedBox(
//                 constraints: BoxConstraints(
//                   maxWidth: availableWidth,
//                 ),
//                 child: Text(
//                   title ?? '',
//                   textScaleFactor: .8,
//                 ),
//               ),
//             )
//           : Container(height: 50),
//     );
//   }
// }
