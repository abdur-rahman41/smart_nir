import 'package:flutter/material.dart';
import 'package:smart_nir/ui/widgets/custom_card.dart';

class Features extends StatefulWidget {
  const Features({super.key});

  @override
  State<Features> createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(Icons.menu, color: Colors.black),
          title: Row(
            children: [
              CircleAvatar(child: Icon(Icons.person)),
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
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Text("All Features",style:TextStyle(fontWeight:FontWeight.bold),),),
        
            SizedBox(width:10),
            GridView.count(
            primary: false,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(10),
            crossAxisSpacing: 0,
            mainAxisSpacing:0,
            crossAxisCount: 3,
            children: <Widget>[
              CustomCard(icon: Icons.home,lebel:"Home"),
              CustomCard(icon: Icons.person,lebel:"Tenants"),
              CustomCard(icon:Icons.attach_money, lebel:'Financials',),
              CustomCard(icon: Icons.people,lebel:"Alottee"),
              CustomCard(icon: Icons.security,lebel:"Committe Wing"),
              CustomCard(icon: Icons.event,lebel:"Events"),
              CustomCard(icon: Icons.apartment,lebel:"Residential Wing"),
              CustomCard(icon: Icons.error_outline,lebel:"Issue Tracker"),
              CustomCard(icon: Icons.account_balance_outlined,lebel:"Billing Management"),
              CustomCard(icon: Icons.factory,lebel:"Fixed Asset"),
              CustomCard(icon: Icons.inventory_2,lebel:"Inventory & Stock"),
              CustomCard(icon: Icons.account_balance_wallet_sharp,lebel:"Accounting"),
              CustomCard(icon: Icons.security,lebel:"Security Maintaining"),
              CustomCard(icon: Icons.settings,lebel:"Settings"),
              CustomCard(icon: Icons.credit_card,lebel:"Cupon & Affiliate "),
        
            ],
          ),
            ]
          ),
        ),
      ),
      
    );
  }
}
