import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PagedTextViewer extends StatefulWidget {
  const PagedTextViewer({super.key});

  @override
  State<PagedTextViewer> createState() => _PagedTextViewerState();
}

class _PagedTextViewerState extends State<PagedTextViewer> {
  bool isAppBar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('title'),
        primary: isAppBar,
      ),
      body: Stack(
        children: [
          // Text
          // 화면 터치
          Container(
            width: double.infinity,
            child: Row(
              children: [
                InkWell(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
