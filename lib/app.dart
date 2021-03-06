import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:minesweeper_online/pages/minesweeper_page.dart';
import 'package:minesweeper_online/state/game_manager_state.dart';
import 'package:provider/provider.dart';

class MinesweeperApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final gameManager = Provider.of<GameManagerState>(context);
    return MaterialApp(
      themeMode: gameManager.mode,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        buttonColor: Colors.yellow,
        primaryColor: Colors.black,
        textTheme: TextTheme(
            body2: TextStyle(
                color: Colors.red.withAlpha(200), fontFamily: 'Minesweeper')),
        dividerColor: Colors.grey.withAlpha(200),
        toggleButtonsTheme: ToggleButtonsThemeData(
          borderColor: const Color(0x2F808080),
          color: const Color(0x1FFFFFFF),
          selectedBorderColor: const Color(0x1F808080),
          fillColor: const Color(0x0FC0C0C0),
        ),
        fontFamily: 'Raleway',
      ),
      theme: ThemeData(
        brightness: Brightness.light,
        buttonColor: Colors.yellow,
        primaryColor: Colors.grey,
        textTheme: TextTheme(
          body2: TextStyle(color: Colors.red, fontFamily: 'Minesweeper'),
        ),
        dividerColor: Colors.grey[700],
        toggleButtonsTheme: ToggleButtonsThemeData(
          borderColor: const Color(0xFF808080),
          color: Colors.white,
          selectedBorderColor: const Color(0xFF808080),
          fillColor: const Color(0xFFC0C0C0),
        ),
        fontFamily: 'Raleway',
      ),
      home: MinesweeperPage(),
    );
  }
}
