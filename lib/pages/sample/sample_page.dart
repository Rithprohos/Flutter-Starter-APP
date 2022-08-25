import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vt_simple_app/notifiers/language_notifier.dart';

import 'package:vt_simple_app/notifiers/sample_notifier.dart';
import 'package:vt_simple_app/utils/locale/app_localization.dart';

class SimplePage extends ConsumerWidget {
  const SimplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sampleState = ref.watch(sampleProvider);
    return Scaffold(
      appBar: _buildAppBar(context, ref),
      body: sampleState.when(
          data: (data) {
            return Text(data.fact);
          },
          error: (error, stackTrace) => Text(error.toString()),
          loading: (() => const Text('loading'))),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => {ref.read(sampleProvider.notifier).increase()},
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }

  PreferredSizeWidget _buildAppBar(ctx, WidgetRef ref) {
    return AppBar(
      title: Text(AppLocalizations.of(ctx).translate('hello_world')),
      actions: [
        PopupMenuButton(
            onSelected: (value) => {
                  ref
                      .read(languageProvider.notifier)
                      .changeLang(value.toString())
                },
            icon: const Icon(Icons.language),
            itemBuilder: (ctx) => [
                  const PopupMenuItem(
                    value: 'en',
                    child: Text('EN'),
                  ),
                  const PopupMenuItem(
                    value: 'km',
                    child: Text('KH'),
                  )
                ])
      ],
    );
  }
}
