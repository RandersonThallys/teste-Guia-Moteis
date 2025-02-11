import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:teste_seguimentos_moteis/src/core/interactor/entities/motel_entiy.dart';
import 'package:teste_seguimentos_moteis/src/core/ui/app_fonts.dart';
import 'package:teste_seguimentos_moteis/src/modules/home_module/ui/widgets/suite_widget.dart';

class ContentWidget extends StatelessWidget {
  ContentWidget({super.key, required this.motel});

  final MotelEntity motel;

  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            spacing: 15,
            children: [
              CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage(motel.logoUrl),
                backgroundColor: Colors.transparent,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      motel.tradeName,
                      style: AppFonts().robotoBold27px(),
                      maxLines: 1,
                      softWrap: false,
                      overflow: TextOverflow.fade,
                    ),
                    FittedBox(
                      child: Text("${motel.distance}Km - ${motel.neighborhood}"),
                    ),
                  ],
                ),
              ),
              Icon(Icons.heart_broken)
            ],
          ),
        ),
        ExpandablePageView.builder(
            controller: pageController,
            scrollDirection: Axis.horizontal,
            itemCount: motel.suites.length,
            itemBuilder: (context, index) {
              return SuiteWidget(
                suite: motel.suites[index],
              );
            })
      ],
    );
  }
}
