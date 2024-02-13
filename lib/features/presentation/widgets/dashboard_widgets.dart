import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/utils/app_constants.dart';
import '../../../core/utils/app_colors.dart';
import 'package:fl_chart/fl_chart.dart';

import '../pages/profile_screen.dart';

////////////////////////////////////// AppBar And BottomNavigationBar //////////////////////////////////////
class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(children: [
          InkWell(
            onTap: () {
              AppConstants.customNavigation(
                  context, const ProfileScreen(fromClickOnImg: true), -1, 0);
            },
            child: Container(
              width: 44.sp,
              height: 44.sp,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: const DecorationImage(
                  image: AssetImage('assets/images/face.png'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset.zero,
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 1.0,
                    spreadRadius: 0,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 3,
            top: 3,
            child: Container(
              width: 12.0.w,
              height: 11.0.h,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(25.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
                  ),
                ],
              ),
            ),
          )
        ]),
        Container(
          height: 37.h,
          width: 220.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(19.5),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2.0,
                blurRadius: 4.0,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(15.0),
              prefixIcon: const Icon(Icons.search),
              hintText: 'Search',
              hintStyle: const TextStyle(color: Colors.grey),
              fillColor: Colors.transparent,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Colors.transparent),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
            ),
          ),
        ),
        Row(
          children: [
            Container(
              width: 30.0.w,
              height: 30.0.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
                  ),
                ],
              ),
              child: Image.asset("assets/images/activity.png"),
            ),
            SizedBox(
              width: 5.w,
            ),
            Container(
              width: 30.0.w,
              height: 30.0.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
                  ),
                ],
              ),
              child: Image.asset("assets/images/add.png"),
            ),
          ],
        )
      ],
    );
  }
}

class BottomNavigationBarButton extends StatelessWidget {
  final String imgUrl, title;
  const BottomNavigationBarButton(
      {super.key, required this.imgUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(width: 60.sp, height: 60.sp, child: Image.asset(imgUrl)),
        Text(
          title,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}

////////////////////////////////////// Balcance Section //////////////////////////////////////

class Balance extends StatelessWidget {
  const Balance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      width: 1.sw,
      height: 254.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0.sp),
        color: AppColors.primaryColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Main USD",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontSize: 30.sp,
            ),
          ),
          Column(
            children: [
              Text(
                "\$1,052.84",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: 64.sp,
                ),
              ),
              Text(
                "Available Balance",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: 30.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 220.w,
            height: 43.h,
            child: ElevatedButton(
              onPressed: () {
                // Your button action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.secondryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), // Adjust radius
                ),
                elevation: 5.0, // Adjust elevation
              ),
              child: Text(
                'Accounts',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

////////////////////////////////////// Sections //////////////////////////////////////
class Sections extends StatelessWidget {
  const Sections({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SectionCard(
              imageUrl: "assets/images/money.png",
              title: "Add Money",
            ),
            SectionCard(
              imageUrl: "assets/images/transfer.png",
              title: "Transfer Money",
            ),
            SectionCard(
              imageUrl: "assets/images/request.png",
              title: "Request Money",
            )
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SectionCard(
              imageUrl: "assets/images/invest.png",
              title: "Invest",
            ),
            SectionCard(
              imageUrl: "assets/images/money.png",
              title: "Pay",
            ),
            SectionCard(
              imageUrl: "assets/images/cash.png",
              title: "Cash-out",
            )
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SectionCard(
              imageUrl: "assets/images/statment.png",
              title: "statement ",
            ),
            SectionCard(
              imageUrl: "assets/images/loan.png",
              title: "My Loan",
            ),
            SectionCard(
              imageUrl: "assets/images/cards.png",
              title: "My Cards",
            )
          ],
        )
      ],
    );
  }
}

class SectionCard extends StatelessWidget {
  final String imageUrl, title;
  const SectionCard({super.key, required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0.sp),
        color: AppColors.secondryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 3.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      width: 103.w,
      height: 64.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imageUrl),
          SizedBox(
            height: 5.h,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white),
          )
        ],
      ),
    );
  }
}

////////////////////////////////////// Chart //////////////////////////////////////
class LineChartSample2 extends StatefulWidget {
  const LineChartSample2({super.key});

  @override
  State<LineChartSample2> createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<LineChartSample2> {
  List<Color> gradientColors = [
    Color.fromARGB(255, 61, 72, 100),
    const Color.fromRGBO(105, 117, 150, 1),
  ];
  List<Color> gradientColors2 = [
    const Color.fromRGBO(40, 78, 153, 1),
    const Color.fromRGBO(88, 188, 255, 1),
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 18,
                left: 12,
                top: 24,
                bottom: 12,
              ),
              child: SizedBox(
                height: 250.h,
                width: 1.sw,
                child: LineChart(
                  showAvg ? avgData() : mainData(),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
        Positioned(
            right: 10.w,
            top: 30.h,
            child: InkWell(
                onTap: () {
                  setState(() {
                    showAvg = !showAvg;
                  });
                },
                child: CircleAvatar(
                  backgroundColor: showAvg
                      ? AppColors.primaryColor
                      : AppColors.secondryColor,
                  radius: 15.sp,
                  child: Text(
                    "Avg",
                    style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.bold,
                        color: showAvg ? Colors.black : Colors.white),
                  ),
                ))),
        Positioned(
          bottom: 0,
          left: 40.w,
          right: 40.w,
          child: Container(
            height: 90.h,
            width: 310.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5.0,
                  blurRadius: 7.0,
                  offset: const Offset(0.0, 4.0),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Earned",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "Spent",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: AppColors.primaryColor,
                            radius: 5.sp,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "\$2,730",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 5.sp,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "\$2,730",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: const FlGridData(
        show: false,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
      ),
      titlesData: const FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
        show: false,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 0,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),
        LineChartBarData(
          spots: const [
            FlSpot(0, 5),
            FlSpot(5, 3),
            FlSpot(6, 4),
            FlSpot(7, 2),
            FlSpot(10, 5),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors2,
          ),
          barWidth: 0,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors2
                  .map((color) => color.withOpacity(0.7))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: const LineTouchData(enabled: false),
      gridData: FlGridData(
        show: false,
        drawHorizontalLine: true,
        verticalInterval: 1,
        horizontalInterval: 1,
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: const FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
        show: false,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3.44),
            FlSpot(2.6, 3.44),
            FlSpot(4.9, 3.44),
            FlSpot(6.8, 3.44),
            FlSpot(8, 3.44),
            FlSpot(9.5, 3.44),
            FlSpot(11, 3.44),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: [
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
            ],
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.5),
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.5),
              ],
            ),
          ),
        ),
        LineChartBarData(
          spots: const [
            FlSpot(0, 5),
            FlSpot(2.6, 5),
            FlSpot(4.9, 5),
            FlSpot(6.8, 5),
            FlSpot(8, 5),
            FlSpot(9.5, 5),
            FlSpot(11, 5),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: [
              ColorTween(begin: gradientColors2[0], end: gradientColors2[1])
                  .lerp(0.2)!,
              ColorTween(begin: gradientColors2[0], end: gradientColors2[1])
                  .lerp(0.2)!,
            ],
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                ColorTween(begin: gradientColors2[0], end: gradientColors2[1])
                    .lerp(0.2)!
                    .withOpacity(0.5),
                ColorTween(begin: gradientColors2[0], end: gradientColors2[1])
                    .lerp(0.2)!
                    .withOpacity(0.5),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

////////////////////////////////////// Transactions //////////////////////////////////////

class LastTransaction extends StatelessWidget {
  const LastTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "last Transaction",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18.sp,
          ),
        ),
        Container(
          width: 333.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5.0,
                blurRadius: 7.0,
                offset: const Offset(0.0, 4.0),
              ),
            ],
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              OneTransaction(
                description: "4 transactions",
                imgUrl: "assets/images/pizzahut.png",
                price: "\$200",
                title: "PizzaHut",
              ),
              OneTransaction(
                description: "3 transactions",
                imgUrl: "assets/images/amazon.png",
                price: "\$180",
                title: "Amazon",
              ),
              OneTransaction(
                description: "2 transactions",
                imgUrl: "assets/images/subway.png",
                price: "\$125",
                title: "Subway",
              ),
            ],
          ),
        )
      ],
    );
  }
}

class OneTransaction extends StatelessWidget {
  final String imgUrl, title, description, price;
  const OneTransaction(
      {super.key,
      required this.imgUrl,
      required this.title,
      required this.description,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 13.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 35.47.sp,
                width: 35.47.sp,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2.0,
                      blurRadius: 5.0,
                      offset: const Offset(0.0, 2.0),
                    ),
                  ],
                ),
                child: Image.asset(imgUrl),
              ),
              SizedBox(
                width: 20.w,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              Text(
                price,
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider()
        ],
      ),
    );
  }
}

////////////////////////////////////// News //////////////////////////////////////
class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "News and promo",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18.sp,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.sp),
          width: 333.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5.0,
                blurRadius: 7.0,
                offset: const Offset(0.0, 4.0),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(20.sp),
                width: 1.sw,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5.0,
                      blurRadius: 7.0,
                      offset: const Offset(0.0, 4.0),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset("assets/images/avatar.png"),
                      ],
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Expanded(
                      child: Text(
                        "Get \$5 free! cashback on your purchase ",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17.sp,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                "Invite your friends!",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "For every user you invite and signs up, you can earn an exclusive award.",
                style: TextStyle(
                    color: const Color.fromARGB(255, 97, 96, 96),
                    fontWeight: FontWeight.w400,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Invite Now",
                style: TextStyle(
                    color: const Color.fromRGBO(113, 101, 227, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: 15.sp),
              )
            ],
          ),
        )
      ],
    );
  }
}
