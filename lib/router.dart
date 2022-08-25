import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:vt_simple_app/pages/sample/sample_page.dart';
import 'package:vt_simple_app/pages/sample2/sample_page_2_route.dart';

part 'router.g.dart';

final routerProvider = Provider((ref) => GoRouter(
      routes: $appRoutes,
      debugLogDiagnostics: true,
    ));

@TypedGoRoute<SimplePageRoute>(
    path: '/', routes: [TypedGoRoute<SamplePage2Route>(path: 'sample2')])
class SimplePageRoute extends GoRouteData {
  const SimplePageRoute();
  @override
  Widget build(BuildContext context) => const SimplePage();
}
