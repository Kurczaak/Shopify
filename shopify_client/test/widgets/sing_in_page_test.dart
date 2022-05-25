import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_client/application/auth/auth_bloc.dart';
import 'package:shopify_client/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:shopify_client/domain/auth/i_auth_facade.dart';
import 'package:shopify_client/presentation/sign_in/sign_in_page.dart';
import 'package:shopify_domain/auth.dart';

import 'app_widget.dart';

@LazySingleton()
class MockIAuthFacade extends Mock implements IAuthFacade {
  @override
  Future<Option<ShopifyUser>> getSignedInUser() async {
    return none();
  }
}

@LazySingleton()
class MockAuthBloc extends Mock implements AuthBloc {}

void main() {
  // set up mocks
  final GetIt getIt = GetIt.instance;
  final mockAuthFacade = MockIAuthFacade();
  final mockAuthBloc = MockAuthBloc();
  final authBloc = AuthBloc(mockAuthFacade);
  final signInFormBloc = SignInFormBloc(mockAuthFacade, mockAuthBloc);
  getIt.registerFactory<AuthBloc>(() => authBloc);
  getIt.registerFactory<SignInFormBloc>(() => signInFormBloc);

  final testWidget = createWidgetUnderTest(const SignInPage(), [
    BlocProvider(
      create: (context) =>
          getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
    ),
  ]);

  testWidgets('Title is displayed', (WidgetTester tester) async {
    await tester.pumpWidget(testWidget);
    await tester.pump(const Duration(milliseconds: 200));
    expect(find.text('Welcome Back!'), findsOneWidget);
  });

  testWidgets('Email textFormField is present', (WidgetTester tester) async {
    await tester.pumpWidget(testWidget);
    await tester.pump(const Duration(milliseconds: 200));
    expect(find.widgetWithText(TextField, 'Enter your email'), findsOneWidget);
  });
  testWidgets('Password textFormField is present', (WidgetTester tester) async {
    await tester.pumpWidget(testWidget);
    await tester.pump(const Duration(milliseconds: 200));
    expect(
        find.widgetWithText(TextField, 'Enter your password'), findsOneWidget);
  });

  testWidgets('LogIn button is displayed', (WidgetTester tester) async {
    await tester.pumpWidget(testWidget);
    await tester.pump(const Duration(milliseconds: 200));
    expect(find.widgetWithText(InkWell, 'Log In'), findsOneWidget);
  });

  testWidgets('Forgot password button is displayed',
      (WidgetTester tester) async {
    await tester.pumpWidget(testWidget);
    await tester.pump(const Duration(milliseconds: 200));
    expect(find.widgetWithText(InkWell, 'Forgot Password?'), findsOneWidget);
  });

  testWidgets('Sign Up button is displayed', (WidgetTester tester) async {
    await tester.pumpWidget(testWidget);
    await tester.pump(const Duration(milliseconds: 200));
    expect(find.widgetWithText(InkWell, 'Sign Up'), findsOneWidget);
  });
}
