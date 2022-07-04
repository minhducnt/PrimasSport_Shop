part of lib_registration;

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
              SizedBox(height: 40.h),
              const FormBuilder(
                label: 'FULL NAME',
                hintText: 'Họ và Tên',
              ),
              SizedBox(height: 20.h),
              const FormBuilder(
                label: 'EMAIL',
                hintText: 'abcd@gmail.com',
              ),
              SizedBox(height: 20.h),
              const FormBuilder(
                label: 'PHONE NUMBER',
                hintText: '+840123456789',
              ),
              SizedBox(height: 20.h),
              const FormBuilder(
                label: 'PASSWORD',
                hintText: '*******',
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                              text: 'Đã có tài khoản?',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              )),
                          TextSpan(
                            text: ' Đăng nhập',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  onTap: () => navigator(context, const LoginScreen())),
              SizedBox(height: 50.h),
              Center(
                child: PrimaryButton(
                    label: 'Đăng Ký',
                    onTap: () => navigator(context, const LoginScreen())),
              ),
              SizedBox(height: 17.h),
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
                      'Đăng Ký bằng Google',
                      style: TextStyle(
                        fontSize: 18.sp,
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
            ],
          ),
        ),
      ),
    );
  }
}
