import 'package:flutter/material.dart';
import 'package:wevn/common/widgets/containers/rounded_container.dart';

class DesktopPage extends StatelessWidget {
  const DesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _NumberContainer(number: "1", color: Colors.red.withOpacity(0.2)),
        _NumberContainer(number: "2", color: Colors.green.withOpacity(0.2)),
        _NumberContainer(number: "3", color: Colors.blue.withOpacity(0.2)),
      ],
    );
  }
}

class _NumberContainer extends StatelessWidget {
  final String number;
  final Color color;

  const _NumberContainer({required this.number, required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TRoundedContainer(
        height: 550,
        color: color,
        alignment: Alignment.center,
        child: Text(
          'Container $number',
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
