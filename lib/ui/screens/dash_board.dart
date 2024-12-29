

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart' ;

import 'package:flutter/material.dart';
import 'package:smart_nir/ui/widgets/build_visitor_card.dart';
import 'package:smart_nir/ui/widgets/custom_card.dart';
import 'package:smart_nir/ui/widgets/custom_header.dart';

import '../widgets/slider_card.dart';

class DashBoard extends StatefulWidget {

  @override
  State<DashBoard> createState() => _DashBoardState();
}

final List<Map<String, String>> items = [
  {
    "type": "Issue",
    "message": "“My bedroom switches aren’t working...”",
    "user": "Rafiqul Islam",
    "flat": "Flat 6A",
    "date": "11 June, 2023",
    "avatar": "https://via.placeholder.com/50"
  },
  {
    "type": "Complain",
    "message": "“My bedroom switches aren’t working...”",
    "user": "Mirza Ahmed",
    "flat": "Flat 7B",
    "date": "11 June, 2023",
    "avatar": "https://via.placeholder.com/50"
  },
];
class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.black),
        title: Row(
          children: [
            CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.png'),
                // child: Icon(Icons.person)
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
                Text(
                  'Rafiqul Islam',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications, color: Colors.black),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GridView.count(
                primary: false,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 4,
                children: <Widget>[
                 CustomCard(icon: Icons.home,lebel:"Residential"),
                  CustomCard(icon: Icons.error,lebel:"Error"),
                  CustomCard(icon:Icons.account_balance, lebel:'Accounting',),
                  CustomCard(icon: Icons.event,lebel:"Events"),
                  CustomCard(icon: Icons.attach_money,lebel:"Financials"),
                  CustomCard(icon: Icons.people,lebel:"Alottee"),
                  CustomCard(icon: Icons.person,lebel:"Tenants"),
                  CustomCard(icon: Icons.security,lebel:"Security"),
        
                ],
              ),
              SizedBox(height:15,),
              CustomHeader(title:'Visitors',actionText: 'See Details'),
              Row(
                children: [
                  Expanded(
                    child: BuildVisitorCard(
                      name: "Ismail Hossain",
                      type: "Delivery",
                      time: "Today | 4:50 PM",
                      borderColor: Colors.green,
                      textColor: Colors.green,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: BuildVisitorCard(
                      name: "Fuad Hossain",
                      type: "Guest",
                      time: "Today | 4:50 PM",
                      borderColor: Colors.blue,
                      textColor: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Cash in Hand
              Card(
                color: Colors.blue,
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(Icons.wallet, color: Colors.white, size: 30),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cash in Hand',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '৳ 12,500.00',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height:10),
              CustomHeader(title: "Unsolved Issues", actionText: "See Details"),
          CarouselSlider(
            items: [

                SliderCard(subject:'Issue',description: 'My bedrom switches are not working...',personName: 'Rafiqul Isalam',location:'Flat 6A'),
                SliderCard(subject:'Complain',description: 'My bedrom switches are missing...',personName: 'Mirza Ahmed',location:'Flat 6c'),
                SliderCard(subject:'Issue',description: 'Water tap is not working...',personName: 'Abdur Rahman',location:'Flat 7B'),
            ],
            options: CarouselOptions(
              height: 200,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              viewportFraction: 0.8,
            ),
          ),


            ],
          ),
        ),
      ),



      // bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: Colors.green,
      //   unselectedItemColor: Colors.black38,
      //   backgroundColor: Colors.white,
      //   showUnselectedLabels: true,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.people),
      //       label: 'Tenants',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.attach_money),
      //       label: 'Financials',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.grid_view),
      //       label: 'Features',
      //     ),
      //   ],
      // ),


    );
  }
}
