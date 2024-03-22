import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:openci_app/src/constants/colors.dart';
import 'package:openci_app/src/features/release/presentation/prepare_release_controller.dart';
import 'package:signals_flutter/signals_flutter.dart';

final isSetAppVersionChecked = signal(false);
final isChecked2 = signal(false);
final isChecked3 = signal(false);
final isChecked4 = signal(false);

final _selectedValue = signal(0);
final _currentVersion = signal('');
final _updatedVersion = signal('');
final _isLoading = signal(false);

class PrepareReleasePage extends ConsumerWidget {
  const PrepareReleasePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.lightOrange,
      appBar: AppBar(
        backgroundColor: AppColors.lightGray,
        title: const Text('Prepare Release'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 24, left: 16.0, right: 16.0),
        child: Watch(
          (context) => ListView(
            shrinkWrap: true,
            children: [
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text(
                  'Set App Version',
                  style: TextStyle(
                    decoration: isSetAppVersionChecked.value
                        ? TextDecoration.lineThrough
                        : null,
                  ),
                ),
                value: isSetAppVersionChecked.value,
                onChanged: (value) async {
                  if (value == null) return;

                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return const _Modal();
                    },
                  );
                },
                activeColor: AppColors.black,
                checkColor: Colors.white,
                tileColor: AppColors.lightGray,
                contentPadding: const EdgeInsets.only(left: 4),
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text(
                  'Deploy Build to Stores',
                  style: TextStyle(
                    decoration:
                        isChecked2.value ? TextDecoration.lineThrough : null,
                  ),
                ),
                value: isChecked2.value,
                onChanged: (value) {
                  if (value == null) return;
                  isChecked2.value = value;
                },
                activeColor: AppColors.black,
                checkColor: Colors.white,
                tileColor: AppColors.lightGray,
                contentPadding: const EdgeInsets.only(left: 4),
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text(
                  'Prepare Release Notes',
                  style: TextStyle(
                    decoration:
                        isChecked3.value ? TextDecoration.lineThrough : null,
                  ),
                ),
                value: isChecked3.value,
                onChanged: (value) {
                  if (value == null) return;
                  isChecked3.value = value;
                },
                activeColor: AppColors.black,
                checkColor: Colors.white,
                tileColor: AppColors.lightGray,
                contentPadding: const EdgeInsets.only(left: 4),
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text(
                  // 審査提出
                  'Submit for Review',
                  style: TextStyle(
                    decoration:
                        isChecked4.value ? TextDecoration.lineThrough : null,
                  ),
                ),
                value: isChecked4.value,
                onChanged: (value) {
                  if (value == null) return;
                  isChecked4.value = value;
                },
                activeColor: AppColors.black,
                checkColor: Colors.white,
                tileColor: AppColors.lightGray,
                contentPadding: const EdgeInsets.only(left: 4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Modal extends ConsumerWidget {
  const _Modal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final future = ref.watch(fetchVersionProvider('owner', 'repo'));
    final controller = ref.watch(prepareReleaseControllerProvider.notifier);

    return SizedBox(
      height: 360,
      child: Watch(
        (context) => ModalProgressHUD(
          inAsyncCall: _isLoading.value,
          child: future.when(
            data: (data) {
              return Scaffold(
                backgroundColor: AppColors.lightGray,
                appBar: AppBar(
                  title: Watch(
                    (context) {
                      String text;

                      _currentVersion.value = data;
                      if (_updatedVersion.value.isEmpty) {
                        text = _currentVersion.value;
                      } else {
                        text = _updatedVersion.value;
                      }
                      return Text(
                        'Next App Version -> $text',
                      );
                    },
                  ),
                  backgroundColor: AppColors.lightOrange,
                  leading: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                body: Container(
                  height: context.height,
                  color: AppColors.lightOrange,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: context.width,
                            decoration: BoxDecoration(
                              color: AppColors.lightGray,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Watch(
                              (context) => Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  RadioListTile<int>(
                                    title: const Text(
                                      'Major Release',
                                    ),
                                    value: 1,
                                    groupValue: _selectedValue.value,
                                    activeColor: AppColors.black,
                                    onChanged: (int? value) async {
                                      if (value == null) {
                                        return;
                                      }
                                      _selectedValue.value = value;

                                      _updatedVersion.value =
                                          controller.updateVersion(
                                        _currentVersion.value,
                                      );
                                    },
                                  ),
                                  RadioListTile<int>(
                                    title: const Text(
                                      'Minor Release',
                                    ),
                                    value: 2,
                                    groupValue: _selectedValue.value,
                                    activeColor: AppColors.black,
                                    onChanged: (int? value) {
                                      if (value == null) {
                                        return;
                                      }
                                      _selectedValue.value = value;
                                      _updatedVersion.value =
                                          controller.updateMinorVersion(
                                        _currentVersion.value,
                                      );
                                    },
                                  ),
                                  RadioListTile<int>(
                                    title: const Text(
                                      'Hot Fix',
                                    ),
                                    value: 3,
                                    groupValue: _selectedValue.value,
                                    activeColor: AppColors.black,
                                    onChanged: (int? value) {
                                      if (value == null) {
                                        return;
                                      }
                                      _selectedValue.value = value;
                                      _updatedVersion.value =
                                          controller.updateHotfixVersion(
                                        _currentVersion.value,
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.black,
                            fixedSize: Size(context.width, 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                4,
                              ), // adjust the value as needed
                            ),
                          ),
                          onPressed: () async {
                            _isLoading.value = true;
                            try {
                              await controller
                                  .updatePubspecYamlVersionKeepBuild(
                                '',
                                '',
                                'accessToken',
                                _updatedVersion.value,
                              );
                              // isChecked.value = value;
                            } catch (e) {
                              print(e);
                            } finally {
                              _isLoading.value = false;
                            }

                            Navigator.pop(context);
                          },
                          child: const Text(
                            'SAVE',
                            style: TextStyle(
                              color: AppColors.lightGray,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            error: (e, s) => Text(e.toString()),
            loading: () => const CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
