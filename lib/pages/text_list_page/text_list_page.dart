import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

// widget
import 'package:flutter_text_reader/pages/text_list_page/widget/file_sliver_list_widget.dart';

// isar
import 'package:flutter_text_reader/databases/group_db.dart';
import 'package:flutter_text_reader/databases/text_db.dart';
import 'package:flutter_text_reader/databases/tag_db.dart';

class TextListPage extends StatefulWidget {
  const TextListPage({super.key});

  @override
  State<TextListPage> createState() => _TextListState();
}

class _TextListState extends State<TextListPage> {
  Isar? isar;
  bool isLoading = true;

  late int itemCount;
  late List<TextDB> displayItems;

  @override
  void initState() {
    super.initState();
    _initializeIsar();
  }

  Future<void> _initializeIsar() async {
    try {
      debugPrint("Initializing Isar...");
      final dir = await getApplicationDocumentsDirectory();
      debugPrint("Application directory: ${dir.path}");

      isar = await Isar.open(
        [TextDBSchema, TagDBSchema, GroupDBSchema],
        directory: dir.path,
        inspector: true,
      );
      debugPrint("Isar database opened successfully.");

      itemCount = await isar!.textDBs.count();
      displayItems = await isar!.textDBs.where().findAll();

      setState(() {
        isLoading = false; // Loading complete
        debugPrint("Loading complete with $itemCount items.");
      });
    } catch (e) {
      debugPrint("Error during Isar initialization: $e");
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Column(
        children: [
          Center(
            child: CircularProgressIndicator(),
          ),
          Text('Loading...'),
        ],
      );
    }
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          Stack(
            children: [
              const SliverAppBar(
                snap: true,
                floating: true,
                title: Text('목록'),
                pinned: false,
              ),
              Positioned(
                top: 50,
                right: 50,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_rounded),
                ),
              ),
            ],
          ),
          FileSliverListWidget(
            isar: isar!,
            displayItems: displayItems,
          ),
        ],
      ),
    );
  }
}
