import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Define event classes if needed
abstract class TabEvent {}

class FetchDataEvent extends TabEvent {
  final int tabIndex;

  FetchDataEvent(this.tabIndex);
}

// Define state classes
class TabDataState {
  final List<String> data;

  TabDataState(this.data);
}

// Define the BLoC class
class TabDataBloc extends Bloc<TabEvent, TabDataState> {
  TabDataBloc() : super(TabDataState([]));

  @override
  Stream<TabDataState> mapEventToState(TabEvent event) async* {
    if (event is FetchDataEvent) {
      try {
        // Fetch data from API based on tab index
        List<String> data = await fetchDataFromApi(event.tabIndex);
        yield TabDataState(data);
      } catch (e) {
        // Handle error
        print('Error fetching data: $e');
      }
    }
  }

  Future<List<String>> fetchDataFromApi(int tabIndex) async {
    // Replace this with your actual API call
    await Future.delayed(Duration(seconds: 2));
    return ['Tab $tabIndex Item 1', 'Tab $tabIndex Item 2', 'Tab $tabIndex Item 3'];
  }
}



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3, // Set the length according to your tab count
        child: BlocProvider(
          create: (context) => TabDataBloc(),
          child: MyTabBarView(),
        ),
      ),
    );
  }
}


class MyTabBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBarView with BLoC'),
      ),
      body: BlocBuilder<TabDataBloc, TabDataState>(
        builder: (context, state) {
          return state.data.isEmpty
              ? Center(child: CircularProgressIndicator())
              : DefaultTabController(
            length: state.data.length,
            child: Column(
              children: [
                TabBar(
                  tabs: List.generate(
                    state.data.length,
                        (index) => Tab(text: 'Tab ${index + 1}'),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: List.generate(
                      state.data.length,
                          (index) => Center(child: Text(state.data[index])),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Fetch data for the currently selected tab
          final currentIndex = DefaultTabController.of(context)?.index;
          if (currentIndex != null) {
            BlocProvider.of<TabDataBloc>(context).add(FetchDataEvent(currentIndex));
          }
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}