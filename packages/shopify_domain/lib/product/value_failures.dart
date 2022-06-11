import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_domain/core/failures.dart';
part 'value_failures.freezed.dart';

@freezed
class ProductValueFailure<T> with _$ProductValueFailure<T> {
  const factory ProductValueFailure.incorrectProductName(
      {required ValueFailure failure}) = IncorrectProductName<T>;
  const factory ProductValueFailure.incorrectBarcode(
      {required ValueFailure failure}) = IncorrectBarcode<T>;
  const factory ProductValueFailure.incorrectId(
      {required ValueFailure failure}) = IncorrectId<T>;
  const factory ProductValueFailure.incorrectWeight(
      {required ValueFailure failure}) = IncorrectWeight<T>;
  const factory ProductValueFailure.incorrectNutrients(
      {required ValueFailure failure}) = IncorrectNutrients<T>;
  const factory ProductValueFailure.incorrectCategory() = IncorrectCategory<T>;
  const factory ProductValueFailure.incorrectBrandName(
      {required ValueFailure failure}) = IncorrectBrandName<T>;
  const factory ProductValueFailure.incorrectDescription(
      {required ValueFailure failure}) = IncorrectDescription<T>;
  const factory ProductValueFailure.incorrectIngredients(
      {required ValueFailure failure}) = IncorrectIngredients<T>;
  const factory ProductValueFailure.incorrectPhotos(
      {required ValueFailure failure}) = IncorrectPhotos<T>;
  const factory ProductValueFailure.incorrectCategoryString(
      {required String failedValue}) = IncorrectCategoryString<T>;

  const factory ProductValueFailure.incorrectWeightUnitString(
      {required String failedValue}) = IncorrectWeightUnitString<T>;

  const factory ProductValueFailure.incorrectCurrencyString(
      {required String failedValue}) = IncorrectCurrencyString<T>;
  const factory ProductValueFailure.unexpectedProductFailure(T failure) =
      UnexpectedProductFailure<T>;
}
