import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        _CustomListTile(
          title: 'State Provider', 
          subTitile: 'Un estado simple', 
          location: '/state-provider'
        ),
        _CustomListTile(
          title: 'State Provider', 
          subTitile: 'Un estado future + Family', 
          location: '/future-provider'
        ),
        _CustomListTile(
          title: 'Stream Provider', 
          subTitile: 'Un simple stream', 
          location: '/stream-provider'
        ),
        _CustomListTile(
          title: 'State nofier provider', 
          subTitile: 'Un provider con estado personalizado', 
          location: '/state-notifier-provider'
        )
      ],
    );
  }
}


class _CustomListTile extends StatelessWidget {

  final String title;
  final String subTitile;
  final String location;

  const _CustomListTile({
    required this.title, 
    required this.subTitile, 
    required this.location
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subTitile),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap:  () => context.push(location),
    );
  }
}