import 'package:fintech_app/core/theming/app_colors.dart';
import 'package:fintech_app/core/theming/app_styles.dart';
import 'package:fintech_app/core/widgets/custom_app_bar.dart';
import 'package:fintech_app/core/widgets/lable_text_widget.dart';
import 'package:fintech_app/core/di/dependency_injection.dart';
import 'package:fintech_app/features/settings/presentation/cubit/settings_cubit.dart';
import 'package:fintech_app/features/settings/presentation/cubit/settings_state.dart';
import 'package:fintech_app/features/settings/widgets/settings_item.dart';
import 'package:fintech_app/features/settings/widgets/switch_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SettingsCubit>()..fetchUserProfile(),
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: CustomAppBar(
          title: "Settings",
          backgroundColor: AppColors.backgroundColor,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: BlocBuilder<SettingsCubit, SettingsState>(
              buildWhen: (previous, current) =>
                  current is Loading || current is Loaded || current is Error,

              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox(),
                  loaded: (userProfile) => Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.h),
                      const CircleAvatar(radius: 45),
                      SizedBox(height: 12.h),
                      Text(
                        "${userProfile.firstName} ${userProfile.lastName}",
                        style: AppStyles.font18PrimaryBold,
                      ),
                      SizedBox(height: 25.h),
                      LableTextWidget(text: "General"),
                      SettingsItem(
                        icon: Icons.person,
                        title: "My Account",
                        onTap: () {},
                      ),
                      SettingsItem(
                        icon: Icons.wallet,
                        title: "Billing/Payment",
                        onTap: () {},
                      ),
                      SettingsItem(
                        icon: Icons.support,
                        title: "FAQ & Support",
                        onTap: () {},
                      ),
                      SizedBox(height: 20),
                      LableTextWidget(text: "Settings"),
                      SettingsItem(
                        icon: Icons.language,
                        title: "Language",
                        onTap: () {},
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 20.r,
                                backgroundColor: AppColors.primary,
                                child: Icon(
                                  Icons.dark_mode_outlined,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                              const SizedBox(width: 16),
                              const Expanded(
                                child: Text(
                                  "Dark Mode",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              const SwitchWidget(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
