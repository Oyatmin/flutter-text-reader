import 'package:flutter/material.dart';

class FileSliverListWidget extends StatefulWidget {
  const FileSliverListWidget({super.key});

  @override
  State<FileSliverListWidget> createState() => _FileSliverListWidgetState();
}

class _FileSliverListWidgetState extends State<FileSliverListWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: 10, (context, index) {
        return Card(
          child: Row(
            children: [
              const SizedBox(), // TODO: 이미지 OR 아이콘
              Column(
                children: [
                  const Text('title'),
                  const Text('Author'),
                  Container(
                    child: (const SingleChildScrollView(
                      child: Wrap(
                        // TODO: tag chips
                        children: [],
                      ),
                    )),
                  ),
                  // 최근문서
                ],
              ),
              const Column(
                children: [
                  // TODO: Icon favorite 조건 구현
                  Icon(Icons.favorite_outline_rounded),
                  Text("0/5") // TODO: rate 숫자 구현
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
