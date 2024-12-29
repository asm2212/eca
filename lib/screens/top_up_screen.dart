import 'package:flutter/material.dart';
import 'package:wpay/screens/home_screen.dart';
import 'package:wpay/utils/constants.dart';
class TopUpScreen extends StatefulWidget {
  const TopUpScreen({super.key});

  @override
  State<TopUpScreen> createState() => _TopUpScreenState();
}

class _TopUpScreenState extends State<TopUpScreen> {
    
  @override
  Widget build(BuildContext context) {
     var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Constants.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.white,
                centerTitle: true,
                elevation: 0,
                leading: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    width: 50,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Constants.secondaryText,
                        width: 1,
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                      ),
                      color: Constants.white,
                    ),
                  ),
                ),
                title: Text(
                  'Top Up with Bank',
                  style: TextStyle(
                    color: Constants.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                expandedHeight: media.width * 2.2,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: [
                      Image.asset(
                        "assets/images/noti_back.png",
                        width: media.width,
                        height: media.width * 2.2,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                          left: media.width * 0.08,
                          right: media.width * 0.08,
                          top: media.height * 0.25,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10),
                              Text(
                                "Select Bank",
                                style: TextStyle(
                                  color: Constants.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(height: 19,),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/sle1.png",
                                    width: media.width * 0.25,                            
                                  ),
                                  Spacer(),
                                  Image.asset(
                                    "assets/images/sle2.png",
                                       width: media.width * 0.25,      
                                  ),
                                    Spacer(),
                                  Image.asset(
                                    "assets/images/sle3.png",
                                         width: media.width * 0.25,      
                                  ),
                                ],
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Container(
            padding: EdgeInsets.symmetric(
              horizontal: media.width * 0.05,
              vertical: media.height * 0.03,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 4,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Constants.secondaryText,
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  ),
                  SizedBox(height: media.width * 0.03),
                  Text(
                    "Read Instructions",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Constants.black,
                    ),
                  ),
                  Text(
                    " A step by step guide on how to top up with bank transfer ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Constants.secondaryText,
                    ),
                  ), 
                  SizedBox(height: media.width * 0.03),
                  Text(
                    "Top up Via ATM",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Constants.black,
                    ),
                  ),  
                  const SizedBox(height: 10,),
                 Column(
                   children: [
                    Image.asset(
                      "assets/images/step.png"
                    ),
                        
                   ],
                 
                 ),
                  Divider(
                      color: Constants.secondaryText,
                      thickness: 0.2,
                    ),
                  Row(
                    children: [
                       Text(
                    "Top up Via m-banking",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Constants.black,
                    ),
                  ),  
                  Spacer(),
                  Image.asset(
                    "assets/images/top_down.png"
                  )
                    ],
                    ),
                    Divider(
                      color: Constants.secondaryText,
                      thickness: 0.2,
                    ),
                     Row(
                    children: [
                       Text(
                    "Top up Via Internet Banking",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Constants.black,
                    ),
                  ),  
                  Spacer(),
                  Image.asset(
                    "assets/images/top_down.png"
                  )
                    ],
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

 

