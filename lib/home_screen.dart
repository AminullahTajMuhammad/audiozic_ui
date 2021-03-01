import 'package:audiozic_ui/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'item_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          title: Container(
            margin: EdgeInsets.only(right: 10),
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 5, left: 5),
                  child: Image.asset(
                    "images/logo.png",
                  ),
                ),
                Text(
                  "Audiozic",
                  style: TextStyle(
                    color: AppConstants.PRIMARY_COLOR,
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            )),
          ),
          actions: [
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xffF3F3FF),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
              ),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 30),
                    child: Text(
                      "Choose Brand",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 15),
                    height: 80,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        demoBrands("images/beats_logo.png"),
                        demoBrands("images/AKG_logo.png"),
                        demoBrands("images/JBL_logo.png"),
                        demoBrands("images/logo.png"),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 30),
                    child: Text(
                      "Beats Products",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10),),
                  Expanded(
                    child: GridView.count(
                      primary: false,
                      crossAxisCount: 2,
                      childAspectRatio: 1,
                      children: [
                        headFreeModels("images/h_1.png", "Beats Solo3", "\$249"),
                        headFreeModels("images/h_2.png", "Beats Solo Pro", "\$180"),
                        headFreeModels("images/h_3.png", "Beats Solo", "\$300"),
                        headFreeModels("images/h_4.png", "Beats Solo EP", "\$250"),
                      ],
                    ),
                  )
                ],
              ),
          ],
        )
    );
  }

  Widget demoBrands(String brandLogo) {
    return Container(
      width: 110,
      margin: EdgeInsets.only(left: 5, right: 20, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color(0xffEEEEEE),
          ),
        ],
      ),
      child: Center(
        child: Container(
          child: Image.asset(brandLogo),
        ),
      ),
    );
  }

  Widget headFreeModels(String img, String title, String price) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => ItemDetailScreen()
        ));
      },
      child: Container(
        height: 200,
        margin: EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 10
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color(0x0c060dd9),
              offset: Offset(0, 5),
              blurRadius: 8,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 25),
              child: Center(
                child: Image.asset(img),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25),
              child: Text(title,
                style: TextStyle(
                  color: Color(0xff262626),
                  fontSize: 15,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, top: 5),
              child: Text(
                price,
                style: TextStyle(
                  color: Color(0xff060dd9),
                  fontSize: 10,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

