import 'package:flutter/material.dart';
import 'package:widgets_in_flutter/core/theme/theme-brightness.widget.dart';
import 'package:widgets_in_flutter/core/theme/theme-color.widget.dart';
import 'package:widgets_in_flutter/core/theme/theme-material.widget.dart';
import 'package:widgets_in_flutter/shared/cardcomponents.widget.dart';
import 'package:widgets_in_flutter/shared/navigationbar.widget.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({super.key});

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selections'),
        actions: [
          ThemeMaterial(isLandscape: false),
          ThemeBrightness(isLandscape: false),
          ThemeSelector(isLandscape: false),
        ],
      ),
      body: ListView(
        children: [
          CardComponents(
            content: 'Checkboxes',
            components: [
              CheckboxListTile(
                value: _selected,
                title: const Text('Option One'),
                onChanged: (onChanged) {
                  setState(() {
                    _selected = onChanged!;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Option Two'),
                value: !_selected,
                onChanged: (onChanged) {
                  setState(() {
                    _selected = !onChanged!;
                  });
                },
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: const NavigationBarWidget(),
    );
  }
}
