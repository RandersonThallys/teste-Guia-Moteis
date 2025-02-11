import 'package:flutter/material.dart';
import 'package:teste_seguimentos_moteis/src/core/interactor/entities/motel_entiy.dart';


import 'content_widget.dart';

class ContentsWidget extends StatelessWidget {
  final List<MotelEntity> motels;
  const ContentsWidget({super.key,required this.motels});


  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: motels
          .map((toElement) => ContentWidget(
                motel: toElement,
              ))
          .toList(),
    );
  }
}
