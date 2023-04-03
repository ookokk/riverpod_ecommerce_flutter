import 'package:flutter/material.dart';
import 'package:grock/grock.dart';
import 'package:riverpod_ecommerce_fl/riverpod/product_riverpod.dart';
import '../../components/product_widget_item.dart';

GrockList CustomGrockList(ProductRiverpod read, ProductRiverpod watch) {
  return GrockList(
    shrinkWrap: true,
    itemCount: read.products.length,
    scrollEffect: const NeverScrollableScrollPhysics(),
    padding: [20, 10].horizontalAndVerticalP,
    itemBuilder: (context, index) {
      return ProductWidget(
        model: watch.products[index],
        setFavorite: () => read.setFavorite(watch.products[index]),
        setBasket: () => read.addedBasket(watch.products[index]),
      );
    },
  );
}
