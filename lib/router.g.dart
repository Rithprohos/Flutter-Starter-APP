// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $simplePageRoute,
    ];

GoRoute get $simplePageRoute => GoRouteData.$route(
      path: '/',
      factory: $SimplePageRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'sample2',
          factory: $SamplePage2RouteExtension._fromState,
        ),
      ],
    );

extension $SimplePageRouteExtension on SimplePageRoute {
  static SimplePageRoute _fromState(GoRouterState state) =>
      const SimplePageRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $SamplePage2RouteExtension on SamplePage2Route {
  static SamplePage2Route _fromState(GoRouterState state) =>
      const SamplePage2Route();

  String get location => GoRouteData.$location(
        '/sample2',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
