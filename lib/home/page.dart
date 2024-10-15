import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valley_app/home/index/content.dart';
import 'package:valley_app/preferences/preferences.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            height: 530,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage(AppImage.mainBg), // Ganti dengan path gambar Anda
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Minima',
                        style: GoogleFonts.notoSerif(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: AppColor.whiteColor,
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.search),
                            color: Colors.white,
                            iconSize: 25,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.shopping_cart),
                            color: Colors.white,
                            iconSize: 25,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 150),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Life is\nso simple',
                        style: TextStyle(
                            color: AppColor.whiteColor,
                            fontSize: 45,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'This week 20% discount',
                        style: TextStyle(
                            color: AppColor.whiteColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: 150,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(
                                AppColor.primaryColor),
                            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                              )
                            ),
                          ),
                          child: Text(
                            'Buy now',
                            style: TextStyle(
                              color: AppColor.whiteColor,
                              fontSize: 15
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 70,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Daily New',
                        style: GoogleFonts.manrope(
                          fontSize: 25,
                          color: AppColor.whiteColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'See All >',
                        style: GoogleFonts.manrope(
                          fontSize: 12,
                          color: AppColor.greyColor,
                          fontWeight: FontWeight.w500,
                        ),
                      )
      
                    ],
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    child: TwoColumnCardGrid(),
                  )
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
