import 'package:flutter/material.dart';
import 'package:shopify_domain/product.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget({Key? key, required this.failure, required this.onRetry})
      : super(key: key);
  final ProductFailure failure;
  final void Function() onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              failure.map(
                  unexpected: (_) => 'An unexpected failure occured',
                  insufficientPermission: (_) => 'Insufficient permissions',
                  unableToUpdate: (_) => 'Unable to update',
                  timeout: (_) => 'Connection timed out',
                  noInternetConnection: (_) => 'No internet connection',
                  productNotFound: (_) => 'Product not found',
                  shopNotFound: (_) => 'Shop not found',
                  valueFailure: (failure) => 'Value failure'),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            const Text(
              'Make sure you have an access to the internet, or try again later',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Icon(Icons.refresh),
              onPressed: onRetry,
            ),
          ],
        ),
      ),
    );
  }
}
