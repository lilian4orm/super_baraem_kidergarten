import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:super_baraem_kidergarten/src/core/enums/genaric_enums.dart';
import 'package:super_baraem_kidergarten/src/core/widgets/skeleton.dart';
import 'package:super_baraem_kidergarten/src/main_app/presentation/pages/profile/presentation/dialog/dialog.dart';
import 'package:super_baraem_kidergarten/src/main_app/presentation/pages/profile/presentation/logic/profile/profile_cubit.dart';
import 'package:super_baraem_kidergarten/src/utils/injector.dart';

class ProfileImage extends StatefulWidget {
  const ProfileImage({super.key});

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  late ProfileCubit _profileCubit;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _profileCubit = getIt<ProfileCubit>();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final query = MediaQuery.of(context).size;
    return BlocBuilder<ProfileCubit, ProfileState>(
      bloc: _profileCubit,
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                theme.colorScheme.primaryContainer,
                theme.colorScheme.surface,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 16),

                // Avatar and school badge
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    // Profile image with loading indicator
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        _profileImage(query, theme, state),
                        if (state.remoteDataStatus ==
                            RemoteDataStatus.subloading)
                          Container(
                            width: query.width * 0.3,
                            height: query.width * 0.3,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.surface.withOpacity(0.7),
                              shape: BoxShape.circle,
                            ),
                            child: CircularProgressIndicator(
                              color: theme.colorScheme.primary,
                              strokeWidth: 3,
                            ),
                          ),
                      ],
                    ),

                    // School badge
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: _schooleImage(theme, state),
                    ),

                    // Image edit button
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: theme.colorScheme.surface,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: theme.colorScheme.shadow.withOpacity(0.2),
                              blurRadius: 5,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: showImagePickerOptions,
                            borderRadius: BorderRadius.circular(20),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                LucideIcons.pencil,
                                size: 20,
                                color: theme.colorScheme.primary,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                // Student name
                Text(
                  state.profileModel?.account.account_name ?? "",
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onSurface,
                  ),
                ),

                const SizedBox(height: 8),

                // Class badge
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "الشعبة : ${state.profileModel?.account.account_division_current?.leader ?? ""}",
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSecondaryContainer,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _profileImage(Size query, ThemeData theme, ProfileState state) {
    return Hero(
      tag: 'profile_image',
      child: GestureDetector(
        onTap: showImagePickerOptions,
        child: Container(
          width: query.width * 0.3,
          height: query.width * 0.3,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: theme.colorScheme.surface, width: 4),
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.shadow.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          child: ClipOval(
            child:
                state.selectImage != null
                    ? Image.file(File(state.selectImage!), fit: BoxFit.cover)
                    : CachedNetworkImage(
                      imageUrl:
                          "${state.contentUrl}${state.profileModel?.account.account_img}",
                      fit: BoxFit.cover,
                      placeholder:
                          (context, url) => SkeletonLoading(
                            w: double.infinity,
                            h: double.infinity,
                            backgroundColor: theme
                                .colorScheme
                                .surfaceContainerHighest
                                .withOpacity(0.6),
                          ),
                      errorWidget:
                          (context, url, error) => Container(
                            color: theme.colorScheme.primary.withOpacity(0.2),
                            child: Icon(
                              LucideIcons.user,
                              color: theme.colorScheme.primary,
                              size: 40,
                            ),
                          ),
                    ),
          ),
        ),
      ),
    );
  }

  Container _schooleImage(ThemeData theme, ProfileState state) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.shadow.withOpacity(0.2),
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
      padding: const EdgeInsets.all(4),
      child: ClipOval(
        child: CachedNetworkImage(
          imageUrl:
              "${state.contentUrl}${state.profileModel?.account.school?.school_img}",
          fit: BoxFit.cover,
          placeholder:
              (context, url) => SkeletonLoading(
                w: double.infinity,
                h: double.infinity,
                backgroundColor: theme.colorScheme.surfaceContainerHighest
                    .withOpacity(0.6),
              ),
          errorWidget:
              (context, url, error) =>
                  Icon(LucideIcons.school, color: theme.colorScheme.primary),
        ),
      ),
    );
  }
}
