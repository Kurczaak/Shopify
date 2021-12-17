import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_client/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:shopify_client/injection.dart';
import 'package:shopify_client/presentation/sign_in/widgets/sign_in_form.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topLeft,
              repeat: ImageRepeat.noRepeat,
              image: AssetImage('images/corner_shape.png'),
              fit: BoxFit.scaleDown,
              matchTextDirection: false,
            ),
            shape: BoxShape.rectangle,
          ),
          child: ResponsiveRowColumn(
            rowMainAxisAlignment: MainAxisAlignment.spaceAround,
            rowCrossAxisAlignment: CrossAxisAlignment.center,
            columnMainAxisAlignment: MainAxisAlignment.center,
            columnMainAxisSize: MainAxisSize.max,
            rowPadding: const EdgeInsets.symmetric(horizontal: 30),
            columnPadding: const EdgeInsets.symmetric(horizontal: 30),
            columnSpacing: 0,
            layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            children: [
              const ResponsiveRowColumnItem(
                child: SizedBox(height: 40),
              ),
              ResponsiveRowColumnItem(
                rowFlex: 2,
                columnFlex: 3,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: FittedBox(
                        child: Text(
                          'Welcome Back!',
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: ResponsiveValue(
                              context,
                              defaultValue: 60.0,
                              valueWhen: const [
                                Condition.smallerThan(
                                    name: TABLET, value: 40.0),
                                Condition.equals(name: TABLET, value: 60.0),
                                Condition.largerThan(name: TABLET, value: 80.0)
                              ],
                            ).value,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Image.asset(
                        'images/undraw_gone_shopping.png',
                        //fit: BoxFit.fitHeight,
                      ),
                    ),
                  ],
                ),
              ),
              ResponsiveRowColumnItem(
                  child: ResponsiveVisibility(
                visible: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP),
                child: const Divider(
                  height: 1,
                ),
              )),
              const ResponsiveRowColumnItem(
                rowFlex: 3,
                columnFlex: 5,
                child: SignInForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
