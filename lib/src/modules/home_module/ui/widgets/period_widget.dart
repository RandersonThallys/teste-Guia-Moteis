import 'package:flutter/material.dart';
import 'package:teste_seguimentos_moteis/src/core/interactor/entities/period_entity.dart';
import 'package:teste_seguimentos_moteis/src/core/ui/app_colors.dart';
import 'package:teste_seguimentos_moteis/src/core/ui/app_fonts.dart';
import 'package:teste_seguimentos_moteis/src/core/utils/formatter.dart';

class PeriodWidget extends StatelessWidget {
  const PeriodWidget({super.key, required this.period});

  final PeriodEntity period;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors().whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          spacing: 15,
          children: [
            Container(
              width: 2,
              height: 75,
              color: AppColors().greyLightColor,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  period.formattedTime,
                  style: AppFonts()
                      .robotoRegular21px()
                      .copyWith(color: AppColors().greyLightColor),
                ),
                Text(Formatter().doubleToReal(period.cost),
                    style: AppFonts()
                        .robotoRegular21px()
                        .copyWith(color: AppColors().greyLightColor))
              ],
            )
          ],
        ),
      ),
    );
  }
}
