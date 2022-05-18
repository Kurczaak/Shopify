import 'dart:collection';

import 'package:darq/darq.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test/flutter_test.dart';

extension CommonFinderX on CommonFinders {
  Finder chained(List<Finder> finders) {
    assert(finders.isNotEmpty);

    final findersQueue = Queue<Finder>.from(finders);
    var current = findersQueue.removeFirst();
    while (findersQueue.isNotEmpty) {
      current = ChainedFinderLink(
        parent: current,
        finder: findersQueue.removeFirst(),
      );
    }

    return current;
  }
}

class ChainedFinderLink extends ChainedFinder {
  ChainedFinderLink({
    required Finder parent,
    required this.finder,
  }) : super(parent);

  final Finder finder;

  @override
  String get description => '${parent.description} THEN ${finder.description}';

  @override
  Iterable<Element> filter(Iterable<Element> parentCandidates) {
    /// We have to apply against the interection of `parentCandidates` and
    /// `finder.allCandidates` because some finders (such as ancestor) filter
    /// out invalid candidates through the `allCandidates` getter instead of
    /// as part of the `apply` method itself.
    return finder.apply(parentCandidates.intersect(finder.allCandidates));
  }
}
