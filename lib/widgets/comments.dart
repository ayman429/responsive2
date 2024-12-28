import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'components/custom_button.dart';
import 'components/custom_icon.dart';
import 'components/header_component.dart';

class Comments extends StatelessWidget {
  const Comments({
    super.key,
    required this.width,
  });

  final double width;
  final String image =
      "https://static.vecteezy.com/system/resources/previews/023/041/976/non_2x/glass-globe-ball-with-tree-growing-and-green-nature-blur-background-eco-earth-day-concept-generat-ai-free-photo.jpg";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(end: 20, start: 20),
      padding: const EdgeInsets.all(20),
      width: width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderComponent(
            width: width,
            color: const Color(0xFFFFD88D),
            title: "Comments",
          ),
          // const SizedBox(height: 10),

          CommentItem(
            image: image,
            title: "Ethel @ethel\nOn Smiles - 3D icons\n\nGreat work",
            trailing: "1h",
          ),

          CommentItem(
              image: image,
              title:
                  "Jazmyn @jaz.designer\nOn Fleet - Travel shopping\n\nI need react version asap!",
              trailing: "8h"),
          CommentItem(
              image: image,
              title:
                  "Jack @jack.developer\nOn Excellent material 3D chair\n\nHow can I buy only the design?",
              trailing: "3h"),
          const CustomButton(
            title: "View All",
            isActive: false,
          )
        ],
      ),
    );
  }
}

class CommentItem extends StatelessWidget {
  const CommentItem({
    super.key,
    required this.title,
    required this.image,
    required this.trailing,
  });
  final String title;
  final String image;
  final String trailing;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Row(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Aligns the text at the top
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                image,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 4,
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,
                maxLines: 9,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  // color: Color(0xFF787B7E),
                ),
              ),
            ),
            const Spacer(),
            Text(
              trailing,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Color(0xFF787B7E),
              ),
            ),
          ],
        ),

        // ListTile(
        //   contentPadding: EdgeInsets.all(0),
        //   horizontalTitleGap: 15,

        //   // selected: true,
        //   trailing: Text(
        //     "2h",
        //     overflow: TextOverflow.ellipsis,
        //     maxLines: 1,
        //     style: TextStyle(
        //       fontSize: 12,
        //       fontWeight: FontWeight.w700,
        //       color: Color(0xFF787B7E),
        //     ),
        //   ),
        //   leading: CircleAvatar(
        //     // radius: 50,
        //     backgroundImage: NetworkImage(
        //       "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
        //     ),
        //   ),

        //   title: Row(
        //     crossAxisAlignment:
        //         CrossAxisAlignment.end, // Aligns the text at the top
        //     children: [
        //       Expanded(
        //         child: Text(
        //           "Ethel @ethel\non Smiles - 3D icons\n\nGreat work",
        //           overflow: TextOverflow.ellipsis,
        //           maxLines: 5,
        //           style: TextStyle(
        //             fontSize: 16,
        //             fontWeight: FontWeight.w700,
        //             // color: Color(0xFF787B7E),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        const SizedBox(height: 20),
        const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomIcon(
            icon: Icons.chat_outlined,
          ),
          CustomIcon(
            icon: Icons.favorite_border,
          ),
          CustomIcon(
            icon: Icons.attachment_outlined,
          ),
        ]),
        const Divider(
          color: Color(0xFFEFEFEF),
          thickness: 1,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
