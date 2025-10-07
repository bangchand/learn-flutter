import 'package:flutter/material.dart';

Widget circleButton(
  Widget content, {
  double? size = 60,
  VoidCallback? onPressed,
  double? width,
  Color? color,
  double? radius,
}) {
  return InkWell(
    onTap: onPressed ?? () {},
    child: Container(
      height: size,
      width: width ?? size,
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        shape: width != null ? BoxShape.rectangle : BoxShape.circle,
        borderRadius: radius != null ? BorderRadius.circular(radius) : null,
      ),
      child: content,
    ),
  );
}

class Ballance extends StatefulWidget {
  const Ballance({super.key});

  @override
  State<Ballance> createState() => _BallanceState();
}

class _BallanceState extends State<Ballance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.grey.shade200,
            padding: EdgeInsets.only(right: 15, left: 15, top: 28),
            child: Column(
              spacing: 10,
              children: [
                // card 1
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.red[200],
                    gradient: RadialGradient(
                      radius: 0.9,
                      colors: [Colors.red.shade200, Colors.white],
                      center: Alignment(-0.3, -1),
                    ),
                  ),
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 10,
                    bottom: 20,
                  ),
                  // height: 300,
                  child: Column(
                    spacing: 30,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            spacing: 15,
                            children: [
                              circleButton(
                                size: 65,
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red.shade400,
                                  size: 30,
                                ),
                              ),
                              Text(
                                'John Doe',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          circleButton(
                            size: 65,
                            Icon(Icons.notifications_on_outlined, size: 30),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              spacing: 8,
                              children: [
                                Text('Total Cat Balance'),
                                Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: Colors.grey.shade800,
                                ),
                              ],
                            ),
                            Text(
                              'Rp271.000',
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            spacing: 5,
                            children: [
                              circleButton(Icon(Icons.square, size: 25)),
                              Text('Square'),
                            ],
                          ),
                          Column(
                            spacing: 5,
                            children: [
                              circleButton(Icon(Icons.circle, size: 25)),
                              Text('Circle'),
                            ],
                          ),
                          Column(
                            spacing: 5,
                            children: [
                              circleButton(Icon(Icons.rectangle, size: 25)),
                              Text('Rectangle'),
                            ],
                          ),
                          Column(
                            spacing: 5,
                            children: [
                              circleButton(Icon(Icons.star, size: 25)),
                              Text('Star'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                LayoutBuilder(
                  builder: (context, constraint) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                          ),
                          width: constraint.maxWidth * .8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              circleButton(
                                color: Colors.grey.shade300,
                                radius: 100,
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Cat',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                width: constraint.maxWidth * 0.2,
                              ),
                              circleButton(
                                radius: 100,
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Food',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                width: constraint.maxWidth * 0.2,
                              ),
                              circleButton(
                                radius: 100,
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Drink',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                width: constraint.maxWidth * 0.2,
                              ),
                              circleButton(
                                radius: 100,
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Snack',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                width: constraint.maxWidth * 0.2,
                              ),
                            ],
                          ),
                        ),
                        circleButton(Icon(Icons.bar_chart_rounded)),
                      ],
                    );
                  },
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 10,
                    children: [
                      Container(
                        width: 250,
                        height: 180,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            circleButton(
                              color: Colors.brown.shade300,
                              Icon(
                                Icons.pets_rounded,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                left: 10,
                                bottom: 10,
                                right: 10,
                              ),
                              child: Column(
                                spacing: 5,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '1,131999',
                                    style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('0,20003kg'),
                                      Row(
                                        spacing: 2,
                                        children: [
                                          Icon(
                                            Icons.arrow_upward_outlined,
                                            size: 25,
                                            color: Colors.green,
                                          ),
                                          Text(
                                            '0.21%',
                                            style: TextStyle(
                                              color: Colors.green,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 250,
                        height: 180,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            circleButton(
                              color: Colors.red.shade400,
                              Icon(
                                Icons.dangerous,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                left: 10,
                                bottom: 10,
                                right: 10,
                              ),
                              child: Column(
                                spacing: 5,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '2,18911',
                                    style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('0,112983kg'),
                                      Row(
                                        spacing: 2,
                                        children: [
                                          Icon(
                                            Icons.arrow_downward_outlined,
                                            size: 25,
                                            color: Colors.red,
                                          ),
                                          Text(
                                            '1.33%',
                                            style: TextStyle(color: Colors.red),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    spacing: 8,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        child: Text("Recent transaction"),
                      ),
                      Column(
                        spacing: 5,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              top: 8,
                              left: 8,
                              bottom: 8,
                              right: 14,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Row(
                              spacing: 20,
                              children: [
                                circleButton(
                                  Icon(Icons.currency_exchange),
                                  color: Colors.grey.shade300,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "IDR to USD",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      "2025-02-12",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Text(
                                    textAlign: TextAlign.end,
                                    '+2.1918273 USD',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Container(
                          //   padding: EdgeInsets.only(
                          //     top: 8,
                          //     left: 8,
                          //     bottom: 8,
                          //     right: 14,
                          //   ),
                          //   decoration: BoxDecoration(
                          //     color: Colors.white,
                          //     borderRadius: BorderRadius.circular(100),
                          //   ),
                          //   child: Row(
                          //     spacing: 20,
                          //     children: [
                          //       circleButton(
                          //         Icon(Icons.currency_exchange),
                          //         color: Colors.grey.shade300,
                          //       ),
                          //       Column(
                          //         crossAxisAlignment: CrossAxisAlignment.start,
                          //         children: [
                          //           Text(
                          //             "IDR to USD",
                          //             style: TextStyle(
                          //               fontSize: 16,
                          //               fontWeight: FontWeight.w600,
                          //             ),
                          //           ),
                          //           Text(
                          //             "2025-02-12",
                          //             style: TextStyle(color: Colors.grey),
                          //           ),
                          //         ],
                          //       ),
                          //       Expanded(
                          //         child: Text(
                          //           textAlign: TextAlign.end,
                          //           '+2.1918273 USD',
                          //           style: TextStyle(color: Colors.green),
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              height: 80,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.home_filled, size: 30),
                      Text('Dashboard'),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.payment_rounded, size: 30),
                      Text('Card'),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.wallet_outlined, size: 30),
                      Text('Accounts'),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.savings_outlined, size: 30),
                      Text('Savings'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
