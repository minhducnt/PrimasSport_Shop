part of lib_botnav;

class OrdersScreen extends ConsumerWidget {
  const OrdersScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Center(child: Text('Orders')),
    );
  }
}
