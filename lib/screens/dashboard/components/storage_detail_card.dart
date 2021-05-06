import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

import 'chart.dart';
import 'storage_info_card.dart';

class StorageDetailCard extends StatelessWidget {
  const StorageDetailCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Storage Details',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Document Files",
            caption: "1300",
            total: "1.3GB",
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/media.svg",
            title: "Media Files",
            caption: "1300",
            total: "1.3GB",
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/media_file.svg",
            title: "Other Files",
            caption: "1300",
            total: "1.3GB",
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "Unknown Files",
            caption: "1300",
            total: "1.3GB",
          ),
        ],
      ),
    );
  }
}
