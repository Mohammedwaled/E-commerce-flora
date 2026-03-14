// ignore_for_file: prefer_const_constructors, use_super_parameters, non_constant_identifier_names, sort_child_properties_last, deprecated_member_use


import 'package:e_commerce_flower_app/provider/card.dart';
import 'package:e_commerce_flower_app/shared/appbar.dart';
import 'package:e_commerce_flower_app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Carttt = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
      title: const Text("CheckOut products "),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
        backgroundColor: Colors.greenAccent[400],
        foregroundColor: Colors.white,
      
        actions: [ProductsAndPrice()],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only (top:22),
              child: SingleChildScrollView(
                child: SizedBox(
                  height: 400,
                  child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: Carttt.selectedProducts.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: ListTile(
                            tileColor: Colors.white70,
                            title: Text(Carttt.selectedProducts[index].name),
                            subtitle: Text(
                                "${Carttt.selectedProducts[index].price} - ${Carttt.selectedProducts[index].location}"),
                            leading: CircleAvatar(
                              backgroundImage: AssetImage(
                                  Carttt.selectedProducts[index].imgPath),
                            ),
                            trailing: IconButton(
                                onPressed: () {
                                  Carttt.delete(Carttt.selectedProducts[index]);
                                },
                                icon: Icon(Icons.remove)),
                          ),
                        );
                      }),
                ),
              ),
            ),
            SizedBox(height: 100,),
            ElevatedButton(
              
              onPressed: () {},
              child: Text(
                "Pay now \$${Carttt.price}",
                style: TextStyle(fontSize: 19),
              ),
              style:
            
               ButtonStyle( 
        
                backgroundColor: MaterialStateProperty.all(Colors.greenAccent[400],),
                padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}