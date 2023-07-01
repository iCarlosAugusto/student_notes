import 'package:flutter/material.dart';
import 'package:stududent_book/common/components/text_widget.dart';

class AppbarWidget extends StatelessWidget implements  PreferredSizeWidget {

  const AppbarWidget({
    super.key,
    this.title = '',
    this.isCenterTitle,
    this.elevation,
    this.backgroundColor
  });

  final String title;
  final bool? isCenterTitle;
  final double? elevation;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme:  IconThemeData(
        color: backgroundColor == null 
          ? Colors.black 
          : Colors.white
      ),
      backgroundColor: backgroundColor,
      elevation: elevation,
      centerTitle: isCenterTitle,
      title: TextWidget(title),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
