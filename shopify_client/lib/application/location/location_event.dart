part of 'location_bloc.dart';

@Sealed()
abstract class _LocationEvent {
  void radiusChanged(double radius);
  void searchLocation(String stringLocation);
  void getYourLocation();
}
