import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:super_baraem_kidergarten/src/main_app/presentation/pages/profile/presentation/logic/profile/profile_cubit.dart';
import 'package:super_baraem_kidergarten/src/utils/injector.dart';
import 'package:super_baraem_kidergarten/src/utils/utils.dart';

void showImagePickerOptions() {
  showModalBottomSheet(
    context: navigatorKey.currentContext!,
    builder: (BuildContext context) {
      final theme = Theme.of(context);

      return SafeArea(
        child: Wrap(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "اختر مصدر الصورة",
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Divider(),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: theme.colorScheme.primaryContainer,
                child: Icon(
                  LucideIcons.camera,
                  color: theme.colorScheme.primary,
                ),
              ),
              title: const Text("التقاط صورة"),
              subtitle: const Text("استخدام الكاميرا لالتقاط صورة جديدة"),
              onTap: () {
                Navigator.pop(context);
                getIt<ProfileCubit>().changeProfileImagheEvent(
                  ImageSource.camera,
                );
              },
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: theme.colorScheme.primaryContainer,
                child: Icon(
                  LucideIcons.image,
                  color: theme.colorScheme.primary,
                ),
              ),
              title: const Text("اختيار من المعرض"),
              subtitle: const Text("اختيار صورة موجودة من معرض الصور"),
              onTap: () {
                Navigator.pop(context);
                getIt<ProfileCubit>().changeProfileImagheEvent(
                  ImageSource.gallery,
                );
              },
            ),

            const SizedBox(height: 10),
          ],
        ),
      );
    },
  );
}
