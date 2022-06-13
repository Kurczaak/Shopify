import 'package:algolia/algolia.dart';
import 'package:flutter/material.dart';

import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:shopify_client/injection.dart';

class DebugShopPage extends StatefulWidget {
  const DebugShopPage({
    Key? key,
  }) : super(key: key);

  @override
  State<DebugShopPage> createState() => _DebugShopPageState();
}

class _DebugShopPageState extends State<DebugShopPage> {
  static const historyLength = 5;
  final List<String> _searchHistory = [
    'fuchsia',
    'flutter',
    'widgets',
    'lol',
  ];

  List<String> filteredSearchHistory = [];

  String selectedTerm = '';
  List<String> filterSearchTerms({required String filter}) {
    if (filter.isNotEmpty) {
      return _searchHistory.reversed
          .where((term) => term.startsWith(filter))
          .toList();
    } else {
      return _searchHistory.reversed.toList();
    }
  }

  void addSearchTerm(String term) {
    if (term.isEmpty) return;
    if (_searchHistory.contains(term)) {
      putSearchTermFirst(term);
      return;
    } else {
      _searchHistory.add(term);
      if (_searchHistory.length > historyLength) {
        _searchHistory.removeRange(0, _searchHistory.length - historyLength);
      }
      filteredSearchHistory = filterSearchTerms(filter: '');
    }
  }

  void deleteSearchTerm(String term) {
    _searchHistory.removeWhere((t) => t == term);
    filteredSearchHistory = filterSearchTerms(filter: '');
  }

  void putSearchTermFirst(String term) {
    deleteSearchTerm(term);
    addSearchTerm(term);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  final controller = FloatingSearchBarController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FloatingSearchBar(
          controller: controller,
          body: FloatingSearchBarScrollNotifier(
            child: SearchResultsListView(
              searchTerm: selectedTerm,
            ),
          ),
          transition: CircularFloatingSearchBarTransition(),
          physics: const BouncingScrollPhysics(),
          title: Text(
            selectedTerm == '' ? "Search for a product" : selectedTerm,
            style: Theme.of(context).textTheme.headline6,
          ),
          hint: 'Type what you\'re looking for...',
          actions: [FloatingSearchBarAction.searchToClear()],
          onQueryChanged: (query) {
            setState(() {
              filteredSearchHistory = filterSearchTerms(filter: query);
            });
          },
          onSubmitted: (query) {
            setState(() {
              addSearchTerm(query);
              selectedTerm = query;
            });
            controller.close();
            _getSearchResult(query);
          },
          builder: (BuildContext context, Animation<double> transition) =>
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Material(
                  color: Colors.white,
                  elevation: 4,
                  child: Builder(
                    builder: (context) {
                      if (filteredSearchHistory.isEmpty &&
                          controller.query.isEmpty) {
                        return Container(
                          height: 56,
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Text(
                            'Start searching',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.caption,
                          ),
                        );
                      } else if (filteredSearchHistory.isEmpty) {
                        return ListTile(
                          title: Text(controller.query),
                          leading: const Icon(Icons.search),
                          onTap: () {
                            setState(() {
                              addSearchTerm(controller.query);
                              selectedTerm = controller.query;
                            });
                            controller.close();
                          },
                        );
                      } else {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: filteredSearchHistory
                              .map(
                                (term) => ListTile(
                                  title: Text(
                                    term,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  leading: const Icon(Icons.history),
                                  trailing: IconButton(
                                    icon: const Icon(Icons.clear),
                                    onPressed: () {
                                      setState(() {
                                        deleteSearchTerm(term);
                                      });
                                    },
                                  ),
                                  onTap: () {
                                    setState(() {
                                      putSearchTermFirst(term);
                                      selectedTerm = term;
                                    });
                                    controller.close();
                                  },
                                ),
                              )
                              .toList(),
                        );
                      }
                    },
                  ),
                ),
              )),
    );
  }
}

class SearchResultsListView extends StatelessWidget {
  final String searchTerm;

  const SearchResultsListView({
    Key? key,
    required this.searchTerm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (searchTerm == '') {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.search,
              size: 64,
            ),
            Text(
              'Start searching',
              style: Theme.of(context).textTheme.headline5,
            )
          ],
        ),
      );
    }

    final fsb = FloatingSearchBar.of(context);

    return fsb != null
        ? ListView(
            padding: EdgeInsets.only(
                top: fsb.style.height + fsb.style.margins.vertical),
            children: List.generate(
              50,
              (index) => ListTile(
                title: Text('$searchTerm search result'),
                subtitle: Text(index.toString()),
              ),
            ),
          )
        : Container();
  }
}

Future<void> _getSearchResult(String query) async {
  final _algoliaClient = getIt<Algolia>();
  AlgoliaQuery algoliaQuery =
      _algoliaClient.instance.index("test_addedProducts").query(query);
  AlgoliaQuerySnapshot snapshot = await algoliaQuery.getObjects();
  final rawHits = snapshot.toMap()['hits'] as List;
  print(rawHits);
}
