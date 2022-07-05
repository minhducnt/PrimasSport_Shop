import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icons.dart';

import '../registration/lib_registration.dart';
import '../../data/ultis/ultis.dart';

class Onboarding extends ConsumerStatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OnboardingState();
}

class _OnboardingState extends ConsumerState<Onboarding> {
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemCount: onboardingData.length,
        itemBuilder: (context, index) {
          dynamic data = onboardingData[index];
          return Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
            child: Column(
              children: [
                SizedBox(height: 10.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: TextButton(
                        child: Text(
                          'Bỏ Qua',
                          style: TextStyle(
                            letterSpacing: 1.1,
                            fontSize: 20.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () =>
                            navigator(context, const LoginScreen())),
                  ),
                ),
                const Spacer(),
                Image.asset(data['image']),
                const Spacer(),
                Text(data['title'],
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    )),
                SizedBox(height: 20.h),
                Text(data['label'],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.sp,
                    )),
                SizedBox(height: 20.h),
                if (index == 2) ...[
                  const Spacer(),
                  ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0.2),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9))),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 15.h, horizontal: 35.w),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Bắt Đầu',
                            style: TextStyle(
                                fontSize: 20.sp,
                                letterSpacing: 1.3,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(width: 20.w),
                          const Icon(LineIcons.alternateLongArrowRight)
                        ],
                      ),
                    ),
                    onPressed: () => navigator(context, const LoginScreen()),
                  ),
                  SizedBox(height: 5.h),
                ],
                if (index != 2) ...[
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: List.generate(
                          onboardingData.length,
                          (i) => GestureDetector(
                              child: Container(
                                height: 7.h,
                                width: 7.w,
                                margin: EdgeInsets.only(right: 12.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: index == i
                                      ? Theme.of(context).colorScheme.primary
                                      : Colors.grey[300],
                                ),
                              ),
                              onTap: () => pageController.jumpToPage(i)),
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0.2),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(17))),
                        ),
                        child: const Text(
                          'Tiếp Theo',
                          style: TextStyle(
                              letterSpacing: 1.3, fontWeight: FontWeight.w600),
                        ),
                        onPressed: () => pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}
