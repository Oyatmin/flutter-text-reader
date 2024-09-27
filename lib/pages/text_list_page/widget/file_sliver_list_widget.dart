import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

// isar
import 'package:flutter_text_reader/databases/group_db.dart';
import 'package:flutter_text_reader/databases/text_db.dart';
import 'package:flutter_text_reader/databases/tag_db.dart';

class FileSliverListWidget extends StatefulWidget {
  final Isar isar;
  final List<TextDB> displayItems;
  const FileSliverListWidget(
      {super.key, required this.isar, required this.displayItems});

  @override
  State<FileSliverListWidget> createState() => _FileSliverListWidgetState();
}

// TODO: 만약 파일 경로에 파일이 없으면 삭제 or 경로 다시 지정
class _FileSliverListWidgetState extends State<FileSliverListWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: 0, (context, index) {
        return Card(
          child: Row(
            children: [
              const SizedBox(
                width: 150,
              ), // TODO: 이미지 OR 아이콘
              Column(
                children: [
                  Text(widget.displayItems[index].title),
                  Text(widget.displayItems[index].author!.isEmpty
                      ? widget.displayItems[index].author!
                      : ''),
                  Container(
                    child: (SingleChildScrollView(
                      child: Wrap(
                        spacing: 6.0,
                        runSpacing: 6.0,
                        children: [
                          // chips
                          for (var tag in widget.displayItems[index].tags)
                            _tagChip(tag.tagName, tag.male, tag.female,
                                tag.genre, Colors.grey)
                        ],
                      ),
                    )),
                  ),
                  // 최근문서
                ],
              ),
              Column(
                children: [
                  // TODO: Icon favorite 조건 구현
                  IconButton(
                    onPressed: () async {
                      await widget.isar.writeTxn(() async {
                        widget.displayItems[index].favorite =
                            !widget.displayItems[index].favorite;
                        await widget.isar.textDBs
                            .put(widget.displayItems[index]);
                      });
                    },
                    icon: widget.displayItems[index].favorite
                        ? const Icon(
                            Icons.favorite_rounded,
                            color: Colors.red,
                          )
                        : const Icon(
                            Icons.favorite_border_rounded,
                            color: Colors.grey,
                          ),
                  ),
                  Text(
                      "${widget.displayItems[index].rate}/10") // TODO: rate 숫자 구현
                ],
              )
            ],
          ),
        );
      }),
    );
  }

  Widget _tagChip(
      String label, bool? isMale, bool? isFemale, bool? isGenre, Color color) {
    return Chip(
      labelPadding: const EdgeInsets.all(2.0),
      avatar: CircleAvatar(
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        child: isMale! || isFemale! || isGenre!
            ? isMale || isFemale!
                ? Icon(isMale ? Icons.male_rounded : Icons.female_rounded,
                    color: Colors.white70)
                : const Text('G')
            : const Text('T'),
      ),
      label: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      shape: const RoundedRectangleBorder(
        side: BorderSide(style: BorderStyle.none),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      backgroundColor: isMale || isFemale!
          ? isMale
              ? Colors.blue
              : Colors.pink
          : color,
      elevation: 6.0,
      padding: const EdgeInsets.all(5.0),
    );
  }
}
