import 'package:flutter/material.dart';
import 'package:stududent_book/common/components/card_consult_info.dart';
import 'package:stududent_book/common/components/text_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              pinned: false,
              snap: false,
              floating: true,
              title: const TextWidget('Minhas matérias', isFontWeight: true),
              actions: [
                IconButton(
                  icon: const Icon(Icons.add_rounded), onPressed: () {}
                )
              ],
            ),
            SliverPadding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: 26,
                  (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 6),
                      height: 80,
                      width: double.maxFinite,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        color: Colors.grey
                      ),
                      child: const Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget('Esse é o título da matéria'),
                              TextWidget('Esse é a descrição da matéria')
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
