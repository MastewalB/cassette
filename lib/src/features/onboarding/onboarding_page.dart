// import 'package:flutter/material.dart';
// import 'package:onboarding/onboarding.dart';
//
// class OnboardingPage extends StatefulWidget {
//   const OnboardingPage({Key? key}) : super(key: key);
//
//   @override
//   State<OnboardingPage> createState() => _OnboardingPageState();
// }
//
// class _OnboardingPageState extends State<OnboardingPage> {
//   late int index;
//
//   final onboardingPagesList = [
//     PageModel(
//       widget: DecoratedBox(
//         decoration: BoxDecoration(
//           color: background,
//           border: Border.all(
//             width: 0.0,
//             color: background,
//           ),
//         ),
//         child: SingleChildScrollView(
//           controller: ScrollController(),
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 40.0,
//                   vertical: 90.0,
//                 ),
//                 child: Image.asset(
//                   'images/cookie.jpg',
//                   //color: pageImageColor,
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 45.0),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'SECURED BACKUP',
//                     style: pageTitleStyle,
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'Keep your files in closed safe so you can\'t lose them. Consider TrueNAS.',
//                     style: pageInfoStyle,
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'Keep your files in closed safe so you can\'t lose them. Consider TrueNAS.',
//                     style: pageInfoStyle,
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'Keep your files in closed safe so you can\'t lose them. Consider TrueNAS.',
//                     style: pageInfoStyle,
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'Keep your files in closed safe so you can\'t lose them. Consider TrueNAS.',
//                     style: pageInfoStyle,
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//     PageModel(
//       widget: DecoratedBox(
//         decoration: BoxDecoration(
//           color: background,
//           border: Border.all(
//             width: 0.0,
//             color: background,
//           ),
//         ),
//         child: SingleChildScrollView(
//           controller: ScrollController(),
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 45.0,
//                   vertical: 90.0,
//                 ),
//                 child: Image.asset(
//                   'images/connor.png',
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 45.0),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'CHANGE AND RISE',
//                     style: pageTitleStyle,
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'Give others access to any file or folders you choose',
//                     style: pageInfoStyle,
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//     PageModel(
//       widget: DecoratedBox(
//         decoration: BoxDecoration(
//           color: background,
//           border: Border.all(
//             width: 0.0,
//             color: background,
//           ),
//         ),
//         child: SingleChildScrollView(
//           controller: ScrollController(),
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 45.0,
//                   vertical: 90.0,
//                 ),
//                 child: Image.asset(
//                   'images/connor_panthera.png',
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 45.0),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'EASY ACCESS',
//                     style: pageTitleStyle,
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'Reach your files anytime from any devices anywhere',
//                     style: pageInfoStyle,
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   ];
//
//   static const width = 100.0;
//
//   @override
//   void initState() {
//     super.initState();
//     index = 0;
//   }
//
//   SizedBox _skipButton({void Function(int)? setIndex}) {
//     return SizedBox(
//       width: width,
//       child: Align(
//         alignment: Alignment.centerLeft,
//         child: Material(
//           borderRadius: defaultSkipButtonBorderRadius,
//           color: defaultSkipButtonColor,
//           child: InkWell(
//             borderRadius: defaultSkipButtonBorderRadius,
//             onTap: () {
//               if (setIndex != null) {
//                 index = 2;
//                 setIndex(2);
//               }
//             },
//             child: const Padding(
//               padding: defaultSkipButtonPadding,
//               child: Text(
//                 'Skip',
//                 style: defaultSkipButtonTextStyle,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   SizedBox get _signupButton {
//     return SizedBox(
//       width: width,
//       child: Align(
//         alignment: Alignment.centerLeft,
//         child: Material(
//           borderRadius: defaultProceedButtonBorderRadius,
//           color: defaultProceedButtonColor,
//           child: InkWell(
//             borderRadius: defaultProceedButtonBorderRadius,
//             onTap: () {},
//             child: const Padding(
//               padding: defaultProceedButtonPadding,
//               child: Text(
//                 'Sign up',
//                 style: defaultProceedButtonTextStyle,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Onboarding(
//         pages: onboardingPagesList,
//         onPageChange: (int pageIndex) {
//           index = pageIndex;
//         },
//         footerBuilder: (context, dragDistance, pagesLength, setIndex) {
//           return DecoratedBox(
//             decoration: BoxDecoration(
//               color: background,
//               border: Border.all(
//                 width: 0.0,
//                 color: background,
//               ),
//             ),
//             child: ColoredBox(
//               color: background,
//               child: Padding(
//                 padding: const EdgeInsets.all(45.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     index != pagesLength - 1
//                         ? _skipButton(setIndex: setIndex)
//                         : _signupButton,
//                     Padding(
//                       padding: const EdgeInsets.only(right: 45.0),
//                       child: CustomIndicator(
//                         netDragPercent: dragDistance,
//                         pagesLength: pagesLength,
//                         indicator: Indicator(
//                           indicatorDesign: IndicatorDesign.polygon(
//                             polygonDesign: PolygonDesign(
//                               polygon: DesignType.polygon_circle,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
