part of lib_botnav;

class ExploreScreen extends ConsumerWidget {
  const ExploreScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Center(child: Text('Explore')),
    );
  }
}
