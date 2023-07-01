import 'package:flutter/material.dart';
import 'package:stududent_book/common/components/appbar_widget.dart';
import 'package:stududent_book/common/components/text_widget.dart';

class SubjectCreationView extends StatelessWidget {
  const SubjectCreationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppbarWidget(),
      body: Padding(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            TextWidget('Criar uma nova matéria'),
          ],
        ),
      ),
    );
  }
}