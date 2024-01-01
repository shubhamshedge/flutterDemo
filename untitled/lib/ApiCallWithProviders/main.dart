import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/ApiCallWithProviders/providers/provideropr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderOpr(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,
          title: Text(widget.title),
        ),
        body: Consumer<ProviderOpr>(
        builder: (context, value, child)
    {
      if (value.isLoading) {
        return const CircularProgressIndicator();
      }
      final posts = value.posts;
      return ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Text(posts[index].id.toString()),
              tileColor: Colors.grey.withOpacity(0.2),
              title: Text(posts[index].title!,
                style: const TextStyle(fontWeight: FontWeight.w500),),
              subtitle: Text(posts[index].body!),
              trailing: IconButton(onPressed: () {
              }, icon: Icon(Icons.send)),
            ),
          );
        },);
    }));
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<ProviderOpr>(context, listen: false).getAllPost();
    });
  }
}


