import 'package:ahmed_ui/componants/build_card.dart';
import 'package:ahmed_ui/componants/build_investement_list.dart';
import 'package:ahmed_ui/componants/build_recent_transation.dart';
import 'package:ahmed_ui/provider/change_theme_button.dart';
import 'package:ahmed_ui/screens/drawer_screen.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AdminPanelScreen extends StatelessWidget {
  const AdminPanelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'DarkTheme'
        : 'LightTheme';
    return SafeArea(
      child: Scaffold(
          drawer: MyDrawer(),
          appBar: AppBar(
            actionsIconTheme: IconThemeData(
                size: 30.0, color: Color(0xffFF769F), opacity: 10.0),
            elevation: 0,
            backgroundColor: Colors.white,
            title: Text(
              'Hello, Ahmed',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              ChangeThemeButtonWidget(),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                  )),
              Badge(
                badgeContent: Text('3'),
                position: BadgePosition.topEnd(end: 1, top: 2),
                child: Icon(
                  Icons.notifications,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.dark_mode_rounded,
                  )),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        BuildCard(
                          money: '1400',
                          moneyComment: 'Income in this mounth',
                          percentag: '+11.35%',
                          percentageComment: 'Balance up by',
                        ),
                        BuildCard(
                          money: '1400',
                          moneyComment: 'Income in this mounth',
                          percentag: '+11.35%',
                          percentageComment: 'Balance up by',
                        ),
                        BuildCard(
                          money: '1400',
                          moneyComment: 'Income in this mounth',
                          percentag: '+11.35%',
                          percentageComment: 'Balance up by',
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(26),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      height: 400,
                      width: 600,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Recent transactions',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 26,
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'More >',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.blue,
                                      ),
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            BuildRecentTransaction(
                              imageUrl:
                                  'https://img.icons8.com/ios-glyphs/2x/mac-os.png',
                              titleComp: 'Apple',
                              subTitleComp: 'Apple Inc',
                            ),
                            BuildRecentTransaction(
                              imageUrl:
                                  'https://img.icons8.com/color/2x/google-logo.png',
                              titleComp: 'GOOGL',
                              subTitleComp: 'Alphabet Inc',
                            ),
                            BuildRecentTransaction(
                              imageUrl:
                                  'https://img.icons8.com/color/2x/twitter-circled.png',
                              titleComp: 'TWITR',
                              subTitleComp: 'Twitter Inc',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(26),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  height: 400,
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Investement',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        BuildInvestment(
                          imageUrl:
                              'https://img.icons8.com/ios-glyphs/2x/mac-os.png',
                          titleComp: 'Apple',
                          subTitleComp: 'Apple Inc',
                        ),
                        BuildInvestment(
                          imageUrl:
                              'https://img.icons8.com/color/2x/google-logo.png',
                          titleComp: 'GOOGL',
                          subTitleComp: 'Alphabet Inc',
                        ),
                        BuildInvestment(
                          imageUrl:
                              'https://img.icons8.com/color/2x/twitter-circled.png',
                          titleComp: 'TWITR',
                          subTitleComp: 'Twitter Inc',
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                              height: 50,
                              width: double.infinity * 75,
                              decoration: BoxDecoration(
                                color: Colors.blue[100],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(child: Text('+  Add Investment'))),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
