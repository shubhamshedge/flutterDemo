import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() async {
  await initHiveForFlutter();
  runApp(const MaterialApp(title: "GQL App", home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //It is used to set the end point or the url
    final HttpLink httpLink = HttpLink("https://countries.trevorblades.com/");

    // It is a change notifier that holds a single value

    //when a old value is changed with new value it notifies the listeners
    final ValueNotifier<GraphQLClient> client = ValueNotifier<GraphQLClient>(
      GraphQLClient(
        //is used to fetch the query/mutation from a endpoint and also connect to graphql server
        link: httpLink,
        cache: GraphQLCache(
          //This class is used to cache our queries and mutations.
          //  It has options store where we pass to it the type of store in its caching operation
            store:
            HiveStore()), // The default store is the InMemoryStore, which does NOT persist to disk
      ),
    );

    // This widget wraps the whole graphql_flutter widgets so they can make queries/mutations.
    //The GraphQL client to use is passed to this widget.
    //This client is what this provider makes available to all widgets in its tree

    return GraphQLProvider(
      client: client,
      child: MaterialApp(
          title: 'GraphQL Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const HomePage()),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final String query = r"""
                    query GetContinent($code : ID!){
                      continent(code:$code){
                        name
                        countries{
                          name
                          code
                        }
                      }
                    }
                  """;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GraphlQL Example"),
      ),
      body: Query(
        //to make the query to backend

        // In option the configurations of the query is passed to Query widget
        // it exposes properties we use to set options for Query widget
          options: QueryOptions(
              document: gql(
                  query), // it is used to set or pass the query to Query widget to get the data from query
              variables: const <String, dynamic>{
                "code": "AF"
              }), //the query variables are sent to the Query widget

          //It is called when the Query widget make the request to server
          //  It is called with the data from the query
          // and is used to fetchmore for pagination and refetch the data
          builder: (result, {fetchMore, refetch}) {
            if (result.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (result.data == null) {
              return const Center(
                child: Text("Data Not Found!!!"),
              );
            }
            return ListView.builder(
                itemCount: result.data!['continent']['countries'].length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      result.data!['continent']['countries'][index]["name"],
                    ),
                    subtitle: Text(
                        result.data!['continent']['countries'][index]["code"]),
                  );
                });
          }),
    );
  }
}