import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stududent_book/common/components/appbar_widget.dart';
import 'package:stududent_book/common/components/button_widget.dart';
import 'package:stududent_book/common/components/text_widget.dart';
import 'package:stududent_book/common/components/textfield_widget.dart';

class SubjectCreationView extends StatelessWidget {
  const SubjectCreationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarWidget(),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextWidget(
              'Crie uma nova matéria',
              fontSize: AvailableFontSizes.big,
              margin: EdgeInsets.only(bottom: 6),
              isFontWeight: true,
            ),
            TextfieldWidget(
              hintText: 'Título',
            ),
            TextfieldWidget(
              hintText: 'Descrição',
              margin: const EdgeInsets.only(top: 16),
            ),
            ButtonWidget(
              title: 'Criar',
              fullWidth: true,
              margin: EdgeInsets.only(top: 16),
              onTap: () {
              context.pop();
            })
          ],
        ),
      ),
    );
  }
}