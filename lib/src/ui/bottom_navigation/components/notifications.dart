part of lib_botnav;

class NotificationScreen extends ConsumerWidget {
  const NotificationScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Center(child: Text('Notifications')),
    );
  }
}
