import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

// widget
import 'package:flutter_text_reader/pages/text_list_page/widget/file_sliver_widget.dart';

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
  late List<GroupDB> displayGroups;

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
      displayGroups = await isar!.groupDBs.where().findAll();

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
          // Text('Loading...'),
        ],
      );
    }
    return Scaffold(
      body: FileSliverWidget(
        isar: isar!,
        displayItems: displayItems,
        displayGroups: displayGroups,
      ),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: ExpandableFab(
        type: ExpandableFabType.fan,
        overlayStyle: const ExpandableFabOverlayStyle(blur: 30.0),
        childrenAnimation: ExpandableFabAnimation.rotate,
        openButtonBuilder: RotateFloatingActionButtonBuilder(
          child: const Icon(Icons.account_box_rounded),
          fabSize: ExpandableFabSize.regular,
          shape: const CircleBorder(),
        ),
        closeButtonBuilder: RotateFloatingActionButtonBuilder(
          child: const Icon(Icons.close_rounded),
          fabSize: ExpandableFabSize.regular,
          shape: const CircleBorder(),
        ),
        children: [
          FloatingActionButton.small(
            onPressed: () {},
            child: const Icon(Icons.add_rounded),
          ),
          FloatingActionButton.small(
            onPressed: () {},
            child: const Icon(Icons.search_rounded),
          ),
          FloatingActionButton.small(
            onPressed: () {},
            child: const Icon(Icons.edit_rounded),
          ),
        ],
      ),
    );
  }
}
