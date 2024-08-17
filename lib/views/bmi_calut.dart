import 'package:bmi_calculater/app_colors.dart';
import 'package:bmi_calculater/views/result_view.dart';
import 'package:flutter/material.dart';

class BmiCalut extends StatefulWidget {
  BmiCalut({super.key});

  @override
  State<BmiCalut> createState() => _BmiCalutState();
}

class _BmiCalutState extends State<BmiCalut> {
  int weight = 70;
  int age = 20;
  int height = 120;
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.flowrBg,
        appBar: AppBar(
          backgroundColor: AppColors.flowrBg,
          title: Text('BMI '),
          foregroundColor: AppColors.white,
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  //
                  //---------......................male.........
                  //
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: (isMale)
                                  ? AppColors.BgButt
                                  : AppColors.ContainerBG,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isMale = true;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.male,
                                  color: AppColors.white,
                                  size: 100,
                                ),
                                Text(
                                  'Male',
                                  style: TextStyle(
                                      color: AppColors.white, fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      //
                      //----------------------- ----------female---------------------------------------------
                      //
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.female_rounded,
                                  color: AppColors.white,
                                  size: 100,
                                ),
                                Text(
                                  'Female',
                                  style: TextStyle(
                                      color: AppColors.white, fontSize: 20),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: (isMale)
                                    ? AppColors.ContainerBG
                                    : AppColors.BgButt,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              //
              //----------------------- ----------Height---------------------------------------------
              //
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.ContainerBG),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //
                    // -----------------   height ----------------------
                    //
                    children: [
                      Text(
                        'Height',
                        style: TextStyle(fontSize: 20, color: AppColors.white),
                      ),
                      //
                      //
                      //  -------  ( 180 $$$$ CM )----------------
                      //
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            height.toString(),
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: AppColors.white),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            'cm',
                            style: TextStyle(color: AppColors.white),
                          )
                        ],
                      ),
                      //
                      // - - - ----------- - -- - - - - Slider --------------------
                      //

                      Slider(
                        value: height.toDouble(),
                        min: 80,
                        max: 220,
                        onChanged: (value) {
                          setState(() {
                            height = value.toInt();
                          });
                        },
                        activeColor: AppColors.BgButt,
                        inactiveColor: AppColors.ButBG,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                  child: Container(
                child: Row(
                  children: [
                    Expanded(
                      //
                      //--------------------weight && Age --------------
                      //
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.ContainerBG,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Weight',
                              style: TextStyle(color: AppColors.white),
                            ),
                            Text(
                              weight.toString(),
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),

                            //
                            // -------------------- ( Buttom +  && Butoom - ) - -----------------------
                            //
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton.filled(
                                    style: IconButton.styleFrom(
                                        backgroundColor: AppColors.ButBG),
                                    onPressed: () {
                                      setState(() {});
                                      weight--;
                                    },
                                    icon: Icon(Icons.remove)),
                                IconButton.filled(
                                    style: IconButton.styleFrom(
                                        backgroundColor: AppColors.ButBG),
                                    onPressed: () {
                                      setState(() {});
                                      weight++;
                                    },
                                    icon: Icon(Icons.add)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      //
                      //*----------------------- Age -------------*
                      //
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.ContainerBG,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(color: AppColors.white),
                            ),
                            Text(
                              age.toString(),
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),

                            //
                            // -------------------- ( Buttom +  && Butoom - ) - -----------------------
                            //
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton.filled(
                                    style: IconButton.styleFrom(
                                        backgroundColor: AppColors.ButBG),
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    icon: Icon(Icons.remove)),
                                IconButton.filled(
                                    style: IconButton.styleFrom(
                                        backgroundColor: AppColors.ButBG),
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    icon: Icon(Icons.add)),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          backgroundColor: AppColors.BgButt,
                          foregroundColor: AppColors.white),
                      onPressed: () {
                        double res = (weight) / (height * height * .0001);
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return ResultView(result: res);
                        }));
                      },
                      child: Text('Calculate')))
            ],
          ),
        ));
  }
}
