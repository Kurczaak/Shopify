import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_client/application/auth/sign_in_form/sign_in_form_bloc.dart';

void main() {
  SignInFormBloc bloc = SignInFormBloc();
  test(
    'Initialy BLoC should contain initial state',
    () async {
      // arrange

      // act

      // assert
      expect(bloc.state, equals(SignInFormState.initial()));
    },
  );
}
