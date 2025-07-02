import 'package:flutter/material.dart';
import 'package:kara/features/menu/shared/page_builder.dart';

import '../../../core/config/l10n/generated/app_localizations.dart';
import '../../../shared/ui/animated_nav_icon.dart';
import '../shared/base_model.dart';

class MenuScreen extends StatefulWidget {
  final AppLocalizations? localizations;
  final ThemeData appTheme;
  const MenuScreen({super.key, this.localizations, required this.appTheme});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  late final PageController pageController;
  late final List<Widget> pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _selectedPageIndex);
    pages = pageBuilder(widget.localizations, widget.appTheme, pageController);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void changePage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
    pageController.animateToPage(
      _selectedPageIndex,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        selectedItemColor: widget.appTheme.colorScheme.secondary,
        backgroundColor: widget.appTheme.colorScheme.primary,
        type: BottomNavigationBarType.fixed,
        onTap: changePage,
        items: List.generate(pages.length, (index) {
          return BottomNavigationBarItem(
            icon: AnimatedNavIcon(
              icon: (pages[index] as BaseModel).icon,
              selected: _selectedPageIndex == index,
            ),
            label: (pages[index] as BaseModel).labelPage,
          );
        }),
      ),
    );
  }
}
