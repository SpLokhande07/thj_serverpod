import 'package:flutter/material.dart';
import 'package:thj_admin/constants.dart';
import 'package:thj_admin/util/essentials.dart';
import 'package:thj_admin/views/societies/registerSociety.dart';
import 'package:thj_admin/views/societies/widget/textfield_search.dart';

class SocietyList extends StatefulWidget {
  const SocietyList({Key? key}) : super(key: key);

  @override
  State<SocietyList> createState() => _SocietyListState();
}

class _SocietyListState extends State<SocietyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            child: CustomScrollView(
              shrinkWrap: true,
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  centerTitle: false,
                  leading: GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: const Icon(Icons.arrow_back_ios,
                          color: kPrimaryColor)),
                  title: CustomText(
                      text: "Registered Society",
                      color: kPrimaryColor,
                      size: 24),
                ),

                SliverPadding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  sliver: SliverToBoxAdapter(
                      child: SearchTextField(
                    controller: TextEditingController(),
                  )),
                ),

                // SliverToBoxAdapter(
                //     child: SizedBox(
                //   width: MediaQuery.sizeOf(context).width,
                //   height: MediaQuery.sizeOf(context).height,
                //   child: GridView.custom(
                //     shrinkWrap: true,
                //     semanticChildCount: 3,
                //     gridDelegate: SliverQuiltedGridDelegate(
                //       crossAxisCount: 2,
                //       mainAxisSpacing: 4,
                //       crossAxisSpacing: 4,
                //       repeatPattern: QuiltedGridRepeatPattern.inverted,
                //       pattern: [
                //         QuiltedGridTile(1, 1),
                //         QuiltedGridTile(1, 1),
                //       ],
                //     ),
                //     // crossAxisCount: 2,
                //     childrenDelegate: SliverChildBuilderDelegate(
                //       (context, index) => Stack(
                //         children: [
                //           Positioned.fill(
                //               child: Image.asset(
                //             "assets/photo.jpeg",
                //             fit: BoxFit.fill,
                //           )),
                //           Column(
                //             mainAxisAlignment: MainAxisAlignment.start,
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             mainAxisSize: MainAxisSize.min,
                //             children: [
                //               CustomText(text: "Title", size: 20),
                //               CustomText(text: "Subtitle", size: 16),
                //             ],
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // )
                // ),
                ///
                // SliverToBoxAdapter(
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     mainAxisSize: MainAxisSize.min,
                //     children: [
                //       CustomText(
                //         text: "No Society Registered",
                //         color: kPrimaryColor,
                //         size: 20,
                //       ),
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         children: [
                //           Icon(
                //             Icons.add_circle_outline,
                //             size: 32,
                //             color: kPrimaryColor.withOpacity(0.5),
                //           ),
                //           CustomText(
                //             text: "Tap to register new society",
                //             color: kPrimaryColor.withOpacity(0.5),
                //             size: 18,
                //           ),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
                ///
                // SliverToBoxAdapter(
                //     child: GridView.custom(
                //   // itemCount: 10,
                //   shrinkWrap: true,
                //   semanticChildCount: 10,
                //   gridDelegate: SliverQuiltedGridDelegate(
                //     crossAxisCount: 2,
                //     mainAxisSpacing: 4,
                //     crossAxisSpacing: 4,
                //     repeatPattern: QuiltedGridRepeatPattern.inverted,
                //     pattern: const [
                //       QuiltedGridTile(2, 2),
                //       QuiltedGridTile(1, 1),
                //       QuiltedGridTile(1, 1),
                //       QuiltedGridTile(1, 2),
                //     ],
                //   ),
                //   childrenDelegate: SliverChildBuilderDelegate((_, i) {
                //     return Container(
                //       // constraints: BoxConstraints(
                //       //   maxWidth: MediaQuery.sizeOf(context).width * 0.4,
                //       //   maxHeight: MediaQuery.sizeOf(context).height * 0.4,
                //       // ),
                //       decoration: BoxDecoration(
                //           border: Border.all(color: kDarkBlueColor),
                //           borderRadius: BorderRadius.circular(15)),
                //     );
                //   }),
                // )),

                ///
                SliverList.separated(
                  itemCount: 2,
                  addAutomaticKeepAlives: true,
                  itemBuilder: (_, i) {
                    return Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.sizeOf(context).width * 0.6,
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      decoration: BoxDecoration(
                          border: Border.all(color: kDarkBlueColor),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomText(text: "Society Name", size: 20),
                          CustomText(text: "Address", size: 16),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (_, i) {
                    return const SizedBox(
                      height: 20,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => const RegisterSociety()));
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
