import 'package:flutter/material.dart';

import 'timeline_divider.dart';

class TimelineBuilder<T> extends StatelessWidget {
  const TimelineBuilder({this.items, this.builder});

  final List<T> items;
  final Widget Function(T) builder;

  @override
  Widget build(BuildContext context) => ListView.separated(
    shrinkWrap: true,
    physics: const ClampingScrollPhysics(),
    itemBuilder: (_, index) => builder(items[index]),
    separatorBuilder: (_, index) => TimelineDivider(),
    itemCount: items.length,
  );
}