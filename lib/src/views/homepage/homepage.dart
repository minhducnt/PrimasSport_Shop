part of lib_hmpage;

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SizeConfig().init(context);

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

      /// A widget that is used to scroll the content of the body.
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(Margin.defaultPadding),

        /// A widget that displays its children in a vertical array.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DiscountBanner(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: Margin.defaultPadding),
              child: SearchForm(),
            ),
            SizedBox(height: getProportionateScreenHeight(12)),
            const Categories(),
            SizedBox(height: getProportionateScreenHeight(20)),
            const SpecialOffers(),
            SizedBox(height: getProportionateScreenHeight(20)),
            const NewArrivalProducts(),
            SizedBox(height: getProportionateScreenHeight(20)),
            const PopularProducts(),
          ],
        ),
      ),
    );
  }
}
