import 'package:flutter/material.dart';

import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class DebugShopifySearchBar extends StatefulWidget {
  const DebugShopifySearchBar({
    Key? key,
    required this.onQueryChanged,
    required this.onSubmitted,
    required this.onHistoryChanged,
    required this.child,
    this.searchHistory,
    required this.onClear,
  }) : super(key: key);

  final Function(String query) onQueryChanged;
  final Function() onClear;
  final Function(String query) onSubmitted;
  final Function(List<String> changedHistory) onHistoryChanged;
  final List<String>? searchHistory;
  final Widget child;

  static DebugShopifySearchBarState? of(BuildContext context) {
    return context.findAncestorStateOfType<DebugShopifySearchBarState>();
  }

  @override
  State<DebugShopifySearchBar> createState() => DebugShopifySearchBarState();
}

class DebugShopifySearchBarState extends State<DebugShopifySearchBar> {
  static const historyLength = 5;
  late List<String> _searchHistory;
  List<String> _filteredSearchHistory = [];

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
    controller.query = term;
    if (_searchHistory.contains(term)) {
      putSearchTermFirst(term);
      return;
    } else {
      _searchHistory.add(term);
      if (_searchHistory.length > historyLength) {
        _searchHistory.removeRange(0, _searchHistory.length - historyLength);
      }
      _filteredSearchHistory = filterSearchTerms(filter: '');
    }
  }

  void deleteSearchTerm(String term) {
    _searchHistory.removeWhere((t) => t == term);
    _filteredSearchHistory = filterSearchTerms(filter: '');
  }

  void putSearchTermFirst(String term) {
    deleteSearchTerm(term);
    addSearchTerm(term);
  }

  @override
  void initState() {
    _searchHistory =
        widget.searchHistory != null ? widget.searchHistory!.toList() : [];
    _filteredSearchHistory = _searchHistory.toList();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  final controller = FloatingSearchBarController();

  @override
  Widget build(BuildContext context) {
    return FloatingSearchBar(
      automaticallyImplyBackButton: false,
      clearQueryOnClose: false,
      controller: controller,
      body: FloatingSearchBarScrollNotifier(
        child: widget.child,
      ),
      transition: CircularFloatingSearchBarTransition(),
      physics: const BouncingScrollPhysics(),
      title: Text(
        selectedTerm == '' ? "Search for a product" : selectedTerm,
        style: Theme.of(context).textTheme.headline6,
      ),
      hint: 'Type what you\'re looking for...',
      actions: [
        CustomAction(
            controller: controller,
            onClear: () {
              selectedTerm = '';
              setState(() {});
            },
            onSubmitted: (String query) {
              setState(() {
                addSearchTerm(query);
                selectedTerm = query;
              });

              controller.close();
              widget.onSubmitted(query);
              widget.onHistoryChanged(_searchHistory);
            }),
      ],
      onQueryChanged: (query) {
        setState(() {
          _filteredSearchHistory = filterSearchTerms(filter: query);
        });
        widget.onQueryChanged(query);
      },
      onSubmitted: (query) async {
        setState(() {
          addSearchTerm(query);
          selectedTerm = query;
        });

        controller.close();
        widget.onSubmitted(query);
        widget.onHistoryChanged(_searchHistory);
      },
      builder: (BuildContext context, Animation<double> transition) =>
          ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Material(
          color: Colors.white,
          elevation: 4,
          child: Builder(
            builder: (context) {
              if (_filteredSearchHistory.isEmpty && controller.query.isEmpty) {
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
              } else if (_filteredSearchHistory.isEmpty) {
                return ListTile(
                  title: Text(controller.query),
                  leading: const Icon(Icons.search),
                  onTap: () {
                    print('xdddd');
                    setState(() {
                      addSearchTerm(controller.query);
                      selectedTerm = controller.query;
                    });
                    controller.close();
                    widget.onSubmitted(controller.query);
                    widget.onHistoryChanged(_searchHistory);
                  },
                );
              } else {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: _filteredSearchHistory
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

                              widget.onHistoryChanged(_searchHistory);
                              widget.onClear();
                            },
                          ),
                          onTap: () {
                            setState(() {
                              putSearchTermFirst(term);
                              selectedTerm = term;
                            });
                            controller.close();
                            widget.onSubmitted(term);
                            widget.onHistoryChanged(_searchHistory);
                          },
                        ),
                      )
                      .toList(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}

class CustomAction extends StatelessWidget {
  const CustomAction(
      {Key? key,
      required this.controller,
      required this.onClear,
      required this.onSubmitted})
      : super(key: key);
  final FloatingSearchBarController controller;
  final void Function() onClear;
  final void Function(String query) onSubmitted;

  @override
  Widget build(BuildContext context) {
    double size = 24;

    bool showIfClosed = true;
    Duration duration = const Duration(milliseconds: 900);
    return FloatingSearchBarAction(
      showIfOpened: true,
      showIfClosed: showIfClosed,
      builder: (context, animation) {
        final bar = FloatingSearchAppBar.of(context)!;

        return ValueListenableBuilder<String>(
          valueListenable: bar.queryNotifer,
          builder: (context, query, _) {
            final isEmpty = query.isEmpty;

            return SearchToClear(
              isEmpty: isEmpty,
              size: size,
              color: bar.style.iconColor,
              duration: duration * 0.5,
              onTap: () {
                print('KURWAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA');
                if (!isEmpty) {
                  print('XDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD');
                  bar.clear();
                  controller.clear();
                  onClear();
                } else {
                  controller.open();
                  onSubmitted(query);
                  bar.isOpen =
                      !bar.isOpen || (!bar.hasFocus && bar.isAlwaysOpened);
                }
              },
            );
          },
        );
      },
    );
  }
}
