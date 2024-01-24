import 'package:flutter/material.dart';
import 'package:flutter_base_project/src/core/app/extensions.dart';
import 'package:flutter_base_project/src/core/app/values_manager.dart';
import 'package:flutter_base_project/src/shared/widgets/device_dimensions_widget.dart';

import '../../../core/app/app_strings.dart';
import '../../../core/app/color_manager.dart';
import '../../../core/app/font_manager.dart';
import '../../../core/app/style_manager.dart';
import '../../../shared/widgets/custom_text_field.dart';

class UserForm extends StatefulWidget {
  const UserForm({super.key});

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add User',
          style: getLightStyle(
            color: ColorManager.colorWhite,
            fontSize: FontSize.s20,
          ),
        ),
      ),
      body: SafeArea(
        child: DeviceDimensionsWidget(builder: (context, deviceDimensions) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p18),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10000.0),
                      child: Container(
                        color: ColorManager.colorGrey1,
                        width: 120,
                        height: 120,
                        child: Icon(
                          Icons.image_outlined,
                          size: AppSize.s80,
                          color: ColorManager.colorGrey2,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.s14,
                    ),
                    CustomTextField(
                      hintText: 'Enter firstname',
                      icon: const Icon(Icons.person_2_outlined),
                      controller: firstNameController,
                      textInputAction: TextInputAction.next,
                      validate: (value) {
                        if (value.isNullEmptyOrWhitespace) {
                          return 'First name is required!';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: AppSize.s14,
                    ),
                    CustomTextField(
                      hintText: 'Enter lastname',
                      icon: const Icon(Icons.person_2_outlined),
                      controller: lastNameController,
                      textInputAction: TextInputAction.next,
                      validate: (value) {
                        if (value.isNullEmptyOrWhitespace) {
                          return 'Last name is required!';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: AppSize.s14,
                    ),
                    CustomTextField(
                      hintText: 'Enter email address',
                      icon: const Icon(Icons.email_outlined),
                      controller: emailController,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.emailAddress,
                      validate: (value) {
                        if (value.isNullEmptyOrWhitespace) {
                          return 'Email address is required!';
                        }
                        if (!value!.validateEmail()) {
                          return 'Email address is not valid!';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: AppSize.s14,
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(deviceDimensions.screenWidth, 50),
                        side: BorderSide(
                          width: 1.0,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      child: isLoading
                          ? const CircularProgressIndicator()
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.save_outlined),
                                const SizedBox(
                                  width: AppSize.s10,
                                ),
                                Text(
                                  'Save',
                                  style: getLightStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: FontSize.s16,
                                  ),
                                ),
                              ],
                            ),
                      onPressed: () async {
                        if (_formKey.currentState == null ||
                            !_formKey.currentState!.validate()) {
                          return;
                        }
                        setState(() {
                          isLoading = true;
                        });
                        await Future.delayed(const Duration(seconds: 2))
                            .then((value) {
                          setState(() {
                            isLoading = false;
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              showCloseIcon: true,
                              backgroundColor: ColorManager.colorGreenDark,
                              content: Text(
                                AppStrings.userAddedMessage,
                                style: getMediumStyle(
                                  color: ColorManager.colorWhite,
                                  fontSize: FontSize.s16,
                                ),
                              ),
                            ),
                          );
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
