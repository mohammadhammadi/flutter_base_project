import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/src/core/app/color_manager.dart';
import 'package:flutter_base_project/src/core/app/font_manager.dart';
import 'package:flutter_base_project/src/core/app/style_manager.dart';
import 'package:flutter_base_project/src/core/app/values_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/app/app_strings.dart';
import '../../../core/networking/dio_exception.dart';
import '../../../shared/widgets/custom_error_widget.dart';
import '../data/models/user_model.dart';
import '../providers/user_data_provider.dart';
import '../widgets/user_card_widget.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final AsyncValue<List<UserModel>> usersListAsync =
          ref.watch(usersListProvider);
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'Users',
            style: getLightStyle(
              color: ColorManager.colorWhite,
              fontSize: FontSize.s20,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p4,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_circle,
                  size: AppSize.s30,
                ),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: RefreshIndicator(
            onRefresh: () => ref.refresh(usersListProvider.future),
            child: usersListAsync.when(
              data: (data) => Padding(
                padding: const EdgeInsets.all(AppPadding.p6),
                child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Dismissible(
                        direction: DismissDirection.startToEnd,
                        key: UniqueKey(),
                        confirmDismiss: (dismissDirection) async =>
                            await showAdaptiveDialog<bool>(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext context) =>
                              AlertDialog.adaptive(
                            insetAnimationCurve: Curves.elasticOut,
                            title: Text(
                              AppStrings.confirmDeleteUserTitle,
                              style: getSemiBoldStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: FontSize.s18,
                              ),
                            ),
                            content: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: AppPadding.p12,
                              ),
                              child: Text(
                                AppStrings.confirmDeleteUserDescription,
                                style: getRegularStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: FontSize.s16,
                                ),
                              ),
                            ),
                            actions: <Widget>[
                              adaptiveAction(
                                context: context,
                                onPressed: () => Navigator.pop(context, false),
                                child: Text(
                                  AppStrings.cancel,
                                  style: getRegularStyle(
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              ),
                              adaptiveAction(
                                context: context,
                                onPressed: () => Navigator.pop(context, true),
                                child: Text(
                                  AppStrings.delete,
                                  style: getRegularStyle(
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        onDismissed: (direction) async {
                          // delete user
                          ref
                              .read(usersListProvider.notifier)
                              .deleteUser(
                                id: data[index].id!,
                              )
                              .then(
                                (value) =>
                                    // Show a snackbar.
                                    ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    showCloseIcon: true,
                                    backgroundColor:
                                        ColorManager.colorGreenDark,
                                    content: Text(
                                      AppStrings.userDeletedMessage,
                                      style: getMediumStyle(
                                        color: ColorManager.colorWhite,
                                        fontSize: FontSize.s16,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                        },
                        child: UserCardView(user: data[index]),
                      );
                    }),
              ),
              error: (error, stackTrace) {
                if (error is DioException) {
                  return CustomErrorWidget(
                    title: AppStrings.strDefaultError,
                    description: DioExceptions.fromDioError(error).message,
                    icon: Icon(
                      Icons.error_outline,
                      size: AppSize.s100,
                      color: Theme.of(context).primaryColor,
                    ),
                    isLoading: ref.watch(usersListProvider).isLoading,
                    onPressed: () async =>
                        ref.refresh(usersListProvider.future),
                  );
                }
                return Text(
                  AppStrings.strDefaultError,
                  style: getRegularStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                );
              },
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
        ),
      );
    });
  }

  Widget adaptiveAction(
      {required BuildContext context,
      required VoidCallback onPressed,
      required Widget child}) {
    final ThemeData theme = Theme.of(context);
    switch (theme.platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return TextButton(onPressed: onPressed, child: child);
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return CupertinoDialogAction(onPressed: onPressed, child: child);
    }
  }
}
