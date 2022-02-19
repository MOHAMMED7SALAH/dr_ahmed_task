import 'package:flutter/material.dart';

class BuildCard extends StatelessWidget {
  String percentageComment, money,moneyComment, percentag;

  BuildCard({
    Key? key,
    required this.money,
    required this.moneyComment,
    required this.percentag,
    required this.percentageComment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/ewallet.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$ ${money}',
                          style: TextStyle(fontSize: 22),
                        ),
                        Text(
                          moneyComment,
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      percentageComment,
                      style: TextStyle(fontSize: 10),
                    ),
                    Text(
                      percentag,
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 5,
      ),
    );
  }
}
