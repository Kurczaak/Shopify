import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shopify_domain/best_offers/best_offer_failure.dart';
import 'package:shopify_domain/best_offers/best_offer.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_domain/best_offers/shopify_best_offers_facade.dart';
import 'package:shopify_domain/core/network/network_info.dart';
import 'package:shopify_domain/product/value_objects.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/core/location/location.dart';
import 'package:shopify_domain/src/best_offers/best_offer_dtos.dart';
import 'package:shopify_domain/src/core/firestore_helpers.dart';

@Injectable(as: ShopifyBestOffersFacade)
class FirebaseBestOffersFacadeImpl implements ShopifyBestOffersFacade {
  final NetworkInfo networkInfo;
  final FirebaseFirestore firebase;
  final Geoflutterfire geo;

  const FirebaseBestOffersFacadeImpl(this.networkInfo, this.firebase, this.geo);

  @override
  Future<Either<BestOfferFailure, KtList<ProductBestOffers>>>
      bestProductsByCategoryWithinDistance(
          {required Category category,
          required Location location,
          required NonnegativeNumber distance,
          required NonnegativeInt page}) {
    // TODO: implement bestProductsByCategoryWithinDistance
    throw UnimplementedError();
  }

  @override
  Stream<Either<BestOfferFailure, KtList<BestOffer>>> bestWithinDistance(
      {required UniqueId productId,
      required Location location,
      required NonnegativeNumber distance}) async* {
    if (await networkInfo.isConnected) {
      final productShopsCollection = firebase.productsCollection
          .doc(productId.getOrCrash())
          .shopCollection;
      final collection = geo.collection(
          collectionRef: productShopsCollection
              as CollectionReference<Map<String, dynamic>>);

      final center =
          geo.point(latitude: location.latitude, longitude: location.longitude);
      final radius = distance.getOrCrash();
      const String field = 'position';

      Stream<List<DistanceDocSnapshot>> stream = collection.withinWithDistance(
          center: center, radius: radius, field: field);

      yield* stream
          .map((documents) => right<BestOfferFailure, KtList<BestOffer>>(
                  documents.map((snapshot) {
                return BestOfferDto.fromFirestore(snapshot).toDomain();
              }).toImmutableList()))
          .onErrorReturnWith((error, _) {
        if (error is FirebaseException) {
          return left(const BestOfferFailure.insufficientPermission());
        }
        print(error);
        return const Left(BestOfferFailure.unexpected());
      });
    } else {
      yield left(const BestOfferFailure.noInternetConnection());
    }
  }
}
