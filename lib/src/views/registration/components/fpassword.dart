part of lib_registration;

class ForgetPasswordScreen extends ConsumerStatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends ConsumerState<ForgetPasswordScreen> {
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
              SizedBox(height: 20.h),
              const FormBuilder(
                label: 'ACCOUNT',
                hintText: 'Tên tài khoản/email',
              ),
              SizedBox(height: 20.h),
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
                      'Lấy lại tài khoản',
                      style: TextStyle(
                        fontSize: 18.sp,
                        letterSpacing: 1.1,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  onPressed: () => navigator(context, const LoginScreen()),
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
