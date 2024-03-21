import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:signals_flutter/signals_flutter.dart';

const Color lightGray = Color(0xFFFDFDFD);
const Color black = Color(0xFF101010);

final isChecked = signal(false);
final isChecked2 = signal(false);
final isChecked3 = signal(false);
final isChecked4 = signal(false);
final isChecked5 = signal(false);
final isChecked6 = signal(false);
final isChecked7 = signal(false);

class PrepareReleasePage extends ConsumerWidget {
  const PrepareReleasePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F1EF),
      appBar: AppBar(
        backgroundColor: lightGray,
        title: const Text('Prepare Release'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 24, left: 16.0, right: 16.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            Watch(
              (context) => CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text(
                  'Set App Version: -> 1.17.2',
                  style: TextStyle(
                      decoration:
                          isChecked.value ? TextDecoration.lineThrough : null),
                ),
                value: isChecked.value,
                onChanged: (value) {
                  if (value == null) return;
                  isChecked.value = value;
                },
                activeColor: black,
                checkColor: Colors.white,
                tileColor: lightGray,
                contentPadding: const EdgeInsets.only(left: 4),
              ),
            ),
            Watch(
              (context) => CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text(
                  'Set Build Number',
                  style: TextStyle(
                      decoration:
                          isChecked3.value ? TextDecoration.lineThrough : null),
                ),
                value: isChecked3.value,
                onChanged: (value) {
                  if (value == null) return;
                  isChecked3.value = value;
                },
                activeColor: black,
                checkColor: Colors.white,
                tileColor: lightGray,
                contentPadding: const EdgeInsets.only(left: 4),
              ),
            ),
            Watch(
              (context) => CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text(
                  'Deploy Build to Stores',
                  style: TextStyle(
                      decoration:
                          isChecked5.value ? TextDecoration.lineThrough : null),
                ),
                value: isChecked5.value,
                onChanged: (value) {
                  if (value == null) return;
                  isChecked5.value = value;
                },
                activeColor: black,
                checkColor: Colors.white,
                tileColor: lightGray,
                contentPadding: const EdgeInsets.only(left: 4),
              ),
            ),
            Watch(
              (context) => CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text(
                  'Prepare Release Notes',
                  style: TextStyle(
                      decoration:
                          isChecked6.value ? TextDecoration.lineThrough : null),
                ),
                value: isChecked6.value,
                onChanged: (value) {
                  if (value == null) return;
                  isChecked6.value = value;
                },
                activeColor: black,
                checkColor: Colors.white,
                tileColor: lightGray,
                contentPadding: const EdgeInsets.only(left: 4),
              ),
            ),
            Watch(
              (context) => CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text(
                  // 審査提出
                  'Submit for Review',
                  style: TextStyle(
                      decoration:
                          isChecked7.value ? TextDecoration.lineThrough : null),
                ),
                value: isChecked7.value,
                onChanged: (value) {
                  if (value == null) return;
                  isChecked7.value = value;
                },
                activeColor: black,
                checkColor: Colors.white,
                tileColor: lightGray,
                contentPadding: const EdgeInsets.only(left: 4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
