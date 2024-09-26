import 'package:flutter/material.dart';

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
          SliverList(
            delegate:
                SliverChildBuilderDelegate(childCount: 10, (context, index) {
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
          )
        ],
      ),
    );
  }
}
