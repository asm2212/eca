import 'package:flutter/material.dart';
import 'package:wpay/screens/payment_success_screen.dart';
import 'package:wpay/utils/constants.dart';

class PasswordConfirmScreen extends StatefulWidget {
  const PasswordConfirmScreen({super.key});

  @override
  State<PasswordConfirmScreen> createState() => _PasswordConfirmScreenState();
}

class _PasswordConfirmScreenState extends State<PasswordConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(    appBar: AppBar(
        backgroundColor: Constants.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Container(
              width: 50,
              height: 55,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color:Constants.secondaryText,
                  width: 1,
                ),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                  color: Colors.black,
                ),
                color: Constants.secondaryText,
              ),
            ),
        ),
        centerTitle: true,
        title:  Text(
          'Confirm Password',
          style: TextStyle(
            color: Constants.black,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
       
      ),
        backgroundColor: Constants.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: media.height * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Please input your password before \ncontinuing payment",
                style: TextStyle(
                  color: Constants.secondaryText,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                )
              ),
              SizedBox(height: media. height * 0.05,),
               Text(
                "Password",
                style: TextStyle(
                  color: Constants.secondaryText,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Container(
                height: media. height * 0.06,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter your password",
                      hintStyle: TextStyle(color: Colors.grey),
                      suffixIcon: Icon(Icons.visibility, color: Colors.grey),
                    ),
                  ),
                ),
              ),
               Text(
                "Must be at least 8 characters long",
                style: TextStyle(
                  color: Constants.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),

              SizedBox(height: media. height * 0.15,),
                Container(
                  
                  height: media.height*0.07,
                  width: media.width,
                  decoration: BoxDecoration(
                    color: Constants.circleColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PaymentSuccessScreen(),
                        ),
                      );
                    },
                    child: Center(
                      child: Text(
                        "Confirm Password",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Constants.white,
                        ),
                      ),
                    ),
                  )
                  )
            ]
          ),
        ),
        );
  }
}