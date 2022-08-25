import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vt_simple_app/pages/sample2/sample_page_2.dart';

class SamplePage2Route extends GoRouteData {
  const SamplePage2Route();

  @override
  Page<void> buildPage(BuildContext context) =>
      const MaterialPage(child: SamplePage2());
}
