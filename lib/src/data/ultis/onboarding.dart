part of ultis;

List<Map<String, dynamic>> onboardingData = [
  {
    'title': 'CHÀO MỪNG ĐẾN VỚI PRIMAS SPORT',
    'image': 'assets/images/slide1.png',
    'label':
        'Bạn mệt mỏi vì phải tự đi kiếm những cửa hàng thể thao? Hãy để ứng dụng này giúp bạn.'
  },
  {
    'title': 'DỄ SỬ DỤNG',
    'image': 'assets/images/slide2.png',
    'label':
        'Với giao diện người dùng đơn giản và dễ tương tác, điều này sẽ làm cho cuộc sống của bạn dễ dàng hơn.',
  },
  {
    'title': 'DỄ MUA SẮM',
    'image': 'assets/images/slide3.png',
    'label': 'Bạn có thể chọn lựa những món hàng thể thao mà bạn muốn.'
  },
];

navigator(BuildContext context, Widget child) => Navigator.push(
      context,
      PageTransition(
          type: PageTransitionType.fade,
          child: child,
          inheritTheme: true,
          ctx: context),
    );

horDivider(BuildContext context) => Container(
    height: 1.h,
    color: Theme.of(context).colorScheme.secondary.withOpacity(0.5));
