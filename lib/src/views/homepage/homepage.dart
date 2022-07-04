part of lib_hmpage;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar2,

      /// A widget that is used to scroll the content of the body.
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(Margin.defaultPadding),

        /// A widget that displays its children in a vertical array.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(vertical: Margin.defaultPadding),
              child: SearchForm(),
            ),
            Categories(),
            NewArrivalProducts(),
            PopularProducts(),
          ],
        ),
      ),
    );
  }
}
