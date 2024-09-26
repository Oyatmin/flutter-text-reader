import 'package:flutter/material.dart';
import 'package:flutter_text_reader/pages/text_list_page/widget/file_sliver_list_widget.dart';

class TextListPage extends StatefulWidget {
  const TextListPage({super.key});

  @override
  State<TextListPage> createState() => _TextListState();
}

class _TextListState extends State<TextListPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverAppBar(
            snap: true,
            floating: true,
            title: Text('목록'),
            pinned: false,
          ),
          FileSliverListWidget(),
        ],
      ),
    );
  }
}
