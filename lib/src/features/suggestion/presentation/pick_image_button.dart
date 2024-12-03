import 'dart:io';

import 'package:ecommerce_app/src/features/suggestion/presentation/controllers/pick_image_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class PickImageButton extends ConsumerStatefulWidget {
  const PickImageButton({super.key});

  @override
  ConsumerState<PickImageButton> createState() => _PickImageButtonState();
}

class _PickImageButtonState extends ConsumerState<PickImageButton> {
  //  Image Picker
  void _onPickImage() {
    _showImageOptions(
      (image) async {
        final status = await ref
            .read(pickImageControllerProvider.notifier)
            .uploadImage(image);

        if (status && mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Resim başarıyla yüklendi!"),
            ),
          );
        }
      },
    );
  }

  // Show Image Options
  Future<void> _showImageOptions(void Function(File image) onPickImage) async {
    switch (await showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            children: <Widget>[
              // Camera Option
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, "camera");
                },
                child: const Text('Camera'),
              ),

              // Gallery Option
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, "gallery");
                },
                child: const Text('Gallery'),
              ),
            ],
          );
        })) {
      case "camera":
        getImage(ImageSource.camera, onPickImage);
        break;
      case "gallery":
        getImage(ImageSource.gallery, onPickImage);
        break;
      case null:
        // dialog dismissed ;
        break;
    }
  }

  void getImage(
      ImageSource source, void Function(File image) onPickImage) async {
    final pickedImage =
        await ImagePicker().pickImage(source: source, imageQuality: 50);

    if (pickedImage == null) return;

    onPickImage(File(pickedImage.path));
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue>(
      pickImageControllerProvider,
      (previous, state) {
        if (state.isRefreshing == false && state.hasError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error.toString()),
            ),
          );
        }
      },
    );

    return IconButton(
      icon: const Icon(
        Icons.photo_camera_outlined,
        size: 28,
      ),
      onPressed: _onPickImage,
    );
  }
}
