import 'package:bmi_calculater/app_colors.dart';
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  ResultView({super.key, required this.result});
  final double result;

  String getClass() {
    if (result <= 18.5) {
      return 'UnderWieght';
    } else if (result <= 24.9) {
      return 'Normal';
    } else if (result <= 39.9) {
      return 'OverWieght';
    } else {
      return 'Obese';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.flowrBg,
      appBar: AppBar(
          backgroundColor: AppColors.flowrBg,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_rounded,
                color: AppColors.white,
              ))),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Your result',
              style: TextStyle(color: AppColors.white, fontSize: 30),
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Expanded(
                      child: Container(
                        child: Text(
                          getClass(),
                          style:
                              TextStyle(color: AppColors.Green, fontSize: 25),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Text(
                          result.toStringAsFixed(2),
                          style:
                              TextStyle(color: AppColors.white, fontSize: 50),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Container(
                          child: Text(
                            'Your Body weight is absoltoly normal God job! ',
                            style:
                                TextStyle(color: AppColors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.ContainerBG,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Recalcualte'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.BgButt,
                    foregroundColor: AppColors.white,
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              width: double.infinity,
              height: 70,
            )
          ],
        ),
      ),
    );
  }
}
