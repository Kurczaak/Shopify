import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_client/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:shopify_client/injection.dart';
import 'package:shopify_client/presentation/core/widgets/green_corner_background.dart';
import 'package:shopify_client/presentation/sign_in/widgets/sign_in_form.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:shopify_client/presentation/sign_in/widgets/sign_up_form.dart';

class DebugPage extends StatelessWidget {
  const DebugPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GreenCornerBackground(
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
              columnFlex: 2,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment:
                    ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                        ? MainAxisAlignment.end
                        : MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome Onboard!',
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: ResponsiveValue(
                        context,
                        defaultValue: 30.0,
                        valueWhen: const [
                          Condition.smallerThan(name: TABLET, value: 30.0),
                          Condition.equals(name: TABLET, value: 40.0),
                          Condition.largerThan(name: TABLET, value: 50.0)
                        ],
                      ).value,
                    ),
                  ),
                  Text(
                    'Let’s make shopping easier together!',
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Theme.of(context).secondaryHeaderColor,
                      fontSize: ResponsiveValue(
                        context,
                        defaultValue: 20.0,
                        valueWhen: const [
                          Condition.smallerThan(name: TABLET, value: 15.0),
                          Condition.equals(name: TABLET, value: 25.0),
                          Condition.largerThan(name: TABLET, value: 35.0)
                        ],
                      ).value,
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
            ResponsiveRowColumnItem(
              rowFlex: 3,
              columnFlex: 5,
              child: SignUpForm(),
            ),
          ],
        ),
      ),
    );
  }
}
