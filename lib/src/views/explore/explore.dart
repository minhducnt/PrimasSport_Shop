part of lib_explore;

class ExploreScreen extends ConsumerWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => navigator(context, const BottomNavigation()),
          icon: SvgPicture.asset(
            "assets/icons/logo.svg",
            width: 50,
            height: 50,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Primas',
                    style: TextStyle(
                        color: AppColors.kSecondaryColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w800),
                  ),
                  TextSpan(
                    text: ' Sport',
                    style: TextStyle(
                        letterSpacing: 1.2,
                        fontSize: 28,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(
              LineIcons.bell,
              size: 30,
              color: AppColors.kSecondaryColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: const Center(child: Text('Explore')),
    );
  }
}
