import 'package:sealed_annotations/sealed_annotations.dart';
part 'location_failure.sealed.dart';

@Sealed()
abstract class _LocationFailure {
  void unexpected();
  void noLocationFound();
  void timeout();
  void permissionDenied();
  void noInternetConnection();
}
