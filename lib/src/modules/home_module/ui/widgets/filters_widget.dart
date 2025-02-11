import 'package:flutter/material.dart';
import 'package:teste_seguimentos_moteis/src/core/ui/app_colors.dart';
import 'package:teste_seguimentos_moteis/src/core/ui/app_fonts.dart';

class FiltersWidget extends StatelessWidget {
  FiltersWidget({super.key});

  final List<String> filters = [
    "com desconto",
    "disponíveis",
    "hidro",
    "piscina",
    "sauna",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: filters.length,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 15),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                color: AppColors().whiteColor,
                border: Border.all(color: AppColors().greyLightColor, width: 1),
                borderRadius: BorderRadius.circular(5)),
            child: Text(
              filters[index],
              style: AppFonts().robotoRegular14px(),
            ),
          );
        },
      ),
    );
  }
}
