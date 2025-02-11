import 'package:flutter/material.dart';
import 'package:teste_seguimentos_moteis/src/core/interactor/entities/suite_entity.dart';
import 'package:teste_seguimentos_moteis/src/core/ui/app_colors.dart';
import 'package:teste_seguimentos_moteis/src/core/ui/app_fonts.dart';
import 'package:teste_seguimentos_moteis/src/modules/home_module/ui/widgets/period_widget.dart';

class SuiteWidget extends StatelessWidget {
  const SuiteWidget({super.key, required this.suite});

  final SuiteEntity suite;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Card(
            color: AppColors().whiteColor,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    height: 250.0,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(suite.photos[0]),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      suite.name,
                      style: AppFonts().robotoRegular21px(),
                      maxLines: 1,
                      softWrap: false,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (suite.categoryItems.isNotEmpty)
            Card(
              color: AppColors().whiteColor,
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment.center,
                    child: FittedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 10,
                        children: suite.categoryItems
                            .map((toElement) => _cardItem(
                                  toElement.icon,
                                ))
                            .toList()
                            .cast<Widget>(),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          if (suite.periods.isNotEmpty)
            ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: suite.periods.length,
                itemBuilder: (context, index) {
                  return PeriodWidget(period: suite.periods[index]);
                })
        ],
      ),
    );
  }

  Widget _cardItem(String iconUrl) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: AppColors().greyLight2Color,
          borderRadius: BorderRadius.circular(5)),
      child: Image.network(
        iconUrl,
        width: 25,
        height: 25,
      ),
    );
  }
}
