// import 'package:bookly/core/utils/app_strings.dart';
// import 'package:bookly/features/search/view/widgets/search_result_list_view.dart';
// import 'package:flutter/material.dart';
// import '../../../../core/helper/my_responsive.dart';
// import '../../../../core/utils/app_font_styles.dart';
// import 'custom_search_text_field.dart';
//
// class SearchViewBody extends StatelessWidget {
//   const SearchViewBody({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: MyResponsive.paddingSymmetric(horizontal: 30),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//             height: MyResponsive.height(value: 30),
//           ),
//           CustomSearchTextField(),
//           SizedBox(
//             height: MyResponsive.height(value: 20),
//           ),
//           Text(AppStrings.searchResult, style: AppFontStyles.textF16()),
//           SizedBox(
//             height: MyResponsive.height(value: 20),
//           ),
//           const Expanded(
//             child: SearchResultListView(),
//           ),
//         ],
//       ),
//     );
//   }
// }
