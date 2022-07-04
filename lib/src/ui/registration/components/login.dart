part of lib_registration;

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 35.h),
              Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Primas',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w800),
                      ),
                      TextSpan(
                        text: 'Sport',
                        style: TextStyle(
                            letterSpacing: 1.2,
                            //color: Theme.of(context).primaryColor,
                            fontSize: 38.sp,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 45.h),
              const FormBuilder(
                label: 'ACCOUNT',
                hintText: 'Tên tài khoản/email',
              ),
              SizedBox(height: 20.h),
              const FormBuilder(
                label: 'PASSWORD',
                hintText: '*******',
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20.w,
                          child: Checkbox(
                            value: isChecked,
                            onChanged: (value) {
                              setState(() {
                                isChecked = value;
                              });
                            },
                            checkColor: AppColors.kSecondaryColor,
                            fillColor: MaterialStateProperty.all(
                                AppColors.kPrimaryColor),
                          ),
                        ),
                        /// A padding widget.
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Nhớ tài khoản',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(
                                text: 'Quên',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                )),
                            TextSpan(
                                text: ' mật khẩu?',
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w600,
                                )),
                          ],
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: 70.h),
              Center(
                child: PrimaryButton(
                  label: 'ĐĂNG NHẬP',
                  onTap: () => Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: const BottomNavigation(),
                        inheritTheme: true,
                        ctx: context),
                  ),
                ),
              ),
              SizedBox(height: 18.h),
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0.0),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                        BorderSide(color: Theme.of(context).primaryColor)),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 13.h, horizontal: 45.w),
                    child: Text(
                      'Đăng Nhập bằng Google',
                      style: TextStyle(
                        fontSize: 19.sp,
                        letterSpacing: 1.1,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 100.h),
              Center(
                child: GestureDetector(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                            text: 'Không có tài khoản ?',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            )),
                        TextSpan(
                            text: ' Đăng ký',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w600,
                            )),
                      ],
                    ),
                  ),
                  onTap: () => navigator(context, const SignUpScreen()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
