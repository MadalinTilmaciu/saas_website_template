import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'presentations/pages.dart';

void main() {
  runApp(const SaaSup());
}

class SaaSup extends StatelessWidget {
  const SaaSup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (BuildContext context, Widget? child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: <Breakpoint>[
          const Breakpoint(start: 0, end: 640, name: MOBILE),
          const Breakpoint(start: 641, end: 1023, name: TABLET),
          const Breakpoint(start: 1024, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: 3840, name: '4K'),
        ],
      ),
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) {
            return MaxWidthBox(
              maxWidth: 3840,
              background: Container(color: const Color(0xFFF5F5F5)),
              child: ResponsiveScaledBox(
                width: ResponsiveValue<double>(
                  context,
                  conditionalValues: <Condition<double>>[
                    Condition<double>.equals(name: MOBILE, value: 450),
                    Condition<double>.equals(name: TABLET, value: 1023),
                    Condition<double>.equals(name: DESKTOP, value: 1920),
                    Condition<double>.largerThan(name: '4k', value: 1921),
                  ],
                ).value,
                child: BouncingScrollWrapper.builder(
                  context,
                  buildPage(settings.name ?? ''),
                ),
              ),
            );
          },
        );
      },
      debugShowCheckedModeBanner: false,
    );
  }

  Widget buildPage(String name) {
    switch (name) {
      case '/':
        return const HomePage();
      case AboutUsPage.name:
        return const AboutUsPage();
      case BlogArticlePage.name:
        return const BlogArticlePage();
      case BlogPage.name:
        return const BlogPage();
      case CareersPage.name:
        return const CareersPage();
      case ChangelogPage.name:
        return const ChangelogPage();
      case ContactUsPage.name:
        return const ContactUsPage();
      case FeaturesPage.name:
        return const FeaturesPage();
      case IntegrationDetailsPage.name:
        return const IntegrationDetailsPage();
      case IntegratiosPage.name:
        return const IntegratiosPage();
      case JobDetailsPage.name:
        return const JobDetailsPage();
      case LicensesPage.name:
        return const LicensesPage();
      case NotFoundPage.name:
        return const NotFoundPage();
      case PricingPage.name:
        return const PricingPage();
      case PricingPlanDetailsPage.name:
        return const PricingPlanDetailsPage();
      default:
        return const SizedBox.shrink();
    }
  }
}
