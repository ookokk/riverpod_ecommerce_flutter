import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

import 'package:riverpod_ecommerce_fl/riverpod/riverpod_management.dart';

import '../../components/product_widget_item.dart';
import 'custom_grock_list.dart';

class Home extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(productRiverpod);
    var read = ref.read(productRiverpod);
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: [20, 15, 20, 0].paddingLTRB,
            child: Text(
              "Ürünler",
              style:
                  Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 16),
            ),
          ),
          CustomGrockList(read, watch),
        ],
      ),
    );
  }
}
