import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste_seguimentos_moteis/src/core/interactor/entities/motel_entiy.dart';
import 'package:teste_seguimentos_moteis/src/core/interactor/states/motel_list_state.dart';
import 'package:teste_seguimentos_moteis/src/core/ui/appbar.dart';
import 'package:teste_seguimentos_moteis/src/modules/home_module/ui/controllers/home_controller.dart';
import 'package:teste_seguimentos_moteis/src/modules/home_module/ui/widgets/ads_widget.dart';
import 'package:teste_seguimentos_moteis/src/modules/home_module/ui/widgets/contents_widget.dart';
import 'package:teste_seguimentos_moteis/src/modules/home_module/ui/widgets/filters_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var homeController = Modular.get<HomeController>();

  @override
  void initState() {
    super.initState();
    homeController.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: BlocBuilder<HomeController, MotelListState>(
          bloc: homeController,
          builder: (context, state) {
            if (state is InitialMotelListState) {
              return Container();
            } else if (state is LoadingMotelListState) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is ErrorMotelListState) {
              return Container();
            }
            return _body(state: (state as SuccessMotelListState));
          }),
    );
  }

  Widget _body({required SuccessMotelListState state}) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: AdsWidget(),
        ),
        SliverAppBar(
          pinned: true,
          elevation: 0,
          leadingWidth: 0,
          titleSpacing: 0,
          leading: Container(),
          title: FiltersWidget(),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(vertical: 10),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ContentsWidget(
                motels: state.motels.content as List<MotelEntity>,
              );
            }, childCount: 1),
          ),
        )
      ],
    );
  }
}
