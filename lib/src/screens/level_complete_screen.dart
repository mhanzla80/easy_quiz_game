import 'package:easy_quiz_game/src/widgets/base_scaffold.dart';
import 'package:easy_quiz_game/src/widgets/framed_button.dart';
import 'package:easy_quiz_game/src/widgets/label_header.dart';
import 'package:flutter/material.dart';

class LevelCompleteScreen extends StatelessWidget {
  static const routeName = '/LevelCompleteScreen';

  const LevelCompleteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseScaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const LabelHeader(title: 'CONGRATULATIONS'),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Image(
                image: AssetImage('assets/images/gem_box.png'),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/images/coin.png'),
                  height: 20,
                ),
                const SizedBox(width: 10),
                Text('200', style: theme.textTheme.bodyLarge),
                const SizedBox(width: 30),
                const Image(
                  image: AssetImage('assets/images/diamond.png'),
                  height: 20,
                ),
                const SizedBox(width: 10),
                Text('50', style: theme.textTheme.bodyLarge),
              ],
            ),
            const Spacer(),
            FramedButton(title: 'Collect', onPress: () {}),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}