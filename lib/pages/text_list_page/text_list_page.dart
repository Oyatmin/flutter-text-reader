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
          // TODO: Group chips
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: [
                for (GroupDB group in displayGroups)
                  _GroupChip(
                      label: group.name,
                      color: Color(int.parse(group.colorHex, radix: 16)),
                      onPressed: () {}),
                IconButton(
                  onPressed: () {
                    //add_group_page로
                  },
                  icon: const Icon(Icons.add_rounded),
                ),
              ],
            ),
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

class _GroupChip extends StatelessWidget {
  final String label;
  final Color color;
  final VoidCallback onPressed;
  const _GroupChip(
      {super.key,
      required this.label,
      required this.color,
      required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return ActionChip(
      labelPadding: const EdgeInsets.all(2.0),
      avatar: CircleAvatar(
        backgroundColor: Color.fromARGB(0, 0, 0, 0),
        child: Text(label[0]),
      ),
      label: Text(label),
      shape: const RoundedRectangleBorder(
        side: BorderSide(style: BorderStyle.none),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      backgroundColor: color,
      onPressed: onPressed,
    );
  }
}
