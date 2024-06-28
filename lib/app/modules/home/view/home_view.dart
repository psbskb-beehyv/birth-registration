import 'package:birth_registration/app/data/child_data/child_data.dart';
import 'package:birth_registration/app/modules/home/cubits/child_data_cubit.dart';
import 'package:birth_registration/app/modules/home/handler/home_handler.dart';
import 'package:digit_components/digit_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: HomeWidget()),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SliverAppBar createSilverAppBar2(bool innerBoxIsScrolled) {
      return SliverAppBar(
        toolbarHeight: 70,
        titleSpacing: 0,
        leadingWidth: 0,
        pinned: true,
        title: SizedBox(
          height: 70,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              const Expanded(
                child: DigitSearchBar(
                  contentPadding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(8),
                  hintText: 'Search',
                ),
              ),
              if (innerBoxIsScrolled)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: MaterialButton(
                      onPressed: () {
                        HomeHandler.addChild(context);
                      },
                      height: 70,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      color: Theme.of(context).primaryColor,
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
      );
    }

    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          const SilverAppBarMainHome(),
          createSilverAppBar2(innerBoxIsScrolled),
        ];
      },
      body: BlocBuilder<ChildDataCubit, List<ChildData>>(
        builder: (context, childDataList) {
          return childDataList.isEmpty
              ? Container(
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 200,
                          child:
                              Lottie.asset('assets/animations/not_found.json'),
                        ),
                        Text(
                          'Data Not Available',
                          style: Theme.of(context).textTheme.titleMedium,
                        )
                      ],
                    ),
                  ),
                )
              : ListView.builder(
                  itemCount: childDataList.length,
                  itemBuilder: (context, index) {
                    return ChildDataWidget(
                      childData: childDataList[index],
                    );
                  });
        },
      ),
    );
  }
}

class SilverAppBarMainHome extends StatefulWidget {
  const SilverAppBarMainHome({
    super.key,
  });

  @override
  State<SilverAppBarMainHome> createState() => _SilverAppBarMainHomeState();
}

class _SilverAppBarMainHomeState extends State<SilverAppBarMainHome> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 300,
      floating: false,
      elevation: 0,
      titleSpacing: 0,
      leadingWidth: 0,
      flexibleSpace: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return FlexibleSpaceBar(
          collapseMode: CollapseMode.parallax,
          background: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                image: const DecorationImage(
                  image: AssetImage('assets/images/baby.png'),
                )),
            child: Stack(
              children: [
                Container(
                  color: Colors.black26,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Birth Registration',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: Colors.white),
                      ),
                      DigitOutLineButton(
                        onPressed: () {
                          HomeHandler.addChild(context);
                        },
                        label: 'Add Child',
                        buttonStyle: ButtonStyle(backgroundColor:
                            WidgetStateProperty.resolveWith((states) {
                          return Theme.of(context).colorScheme.primaryContainer;
                        }), textStyle:
                            WidgetStateProperty.resolveWith((states) {
                          return Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(color: Colors.white);
                        })),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class ChildDataWidget extends StatelessWidget {
  final ChildData childData;
  const ChildDataWidget({
    super.key,
    required this.childData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: DigitCard(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(16),
        onPressed: () {},
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  SizedBox(
                      height: 50,
                      child: Image.asset('assets/images/family.png')),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Baby Name',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                'Father: Rahul Behera',
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              Text(
                                'Mother: Sam Behera',
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Icon(Icons.av_timer, size: 30),
                            Text(
                              '00:00',
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                            Text(
                              '12 Apr 2024',
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
              child: Row(
                children: [
                  const Icon(Icons.local_hospital_rounded, size: 15),
                  Text(
                    'Apollo Hospital (Dr. Name)',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const Spacer(),
                  const Icon(Icons.place, size: 15),
                  Text(
                    'Banglore',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
