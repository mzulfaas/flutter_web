import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:msig_web/home_page.dart';
import 'package:msig_web/responsive.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast_web/sembast_web.dart';

class HomeUser extends StatefulWidget {
  // String rackA;
  // String book1A;
  // String book2A;
  // String book3A;
  // String book4A;
  // String rackB;
  // String book1B;
  // String book2B;
  // String book3B;
  // String book4B;

  HomeUser(
      {Key? key,
      // required this.rackA,
      // required this.book1A,
      // required this.book2A,
      // required this.book3A,
      // required this.book4A,
      //
      // required this.rackB,
      // required this.book1B,
      // required this.book2B,
      // required this.book3B,
      // required this.book4B,
      })
      : super(key: key);

  @override
  State<HomeUser> createState() => _HomeUserState();
}

class _HomeUserState extends State<HomeUser> {

  List data = [];
  getListData()async{
    var store = intMapStoreFactory.store("listBook");
    var factory = databaseFactoryWeb;
    // Open the database
    var db = await factory.openDatabase('msigDB');
    print("db log :${await store.find(db)}");
    data = await store.find(db);
    print("hompi : ${data.toString()}");
    setState(() {

    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getListData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveWidget.isLargeScreen(context)
          ? ListView.builder(
          itemCount: data.length??0,
          itemBuilder: (context, index){
            return Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        )),
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(data[index]['rackA']),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  // color: Colors.black,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(data[index]['book1A']),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  // color: Colors.black,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(data[index]['book2A']),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  // color: Colors.black,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(data[index]['book3A']),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  // color: Colors.black,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(data[index]['book4A']),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        )),
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(data[index]['rackB']),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  // color: Colors.black,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(data[index]['book1B']),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  // color: Colors.black,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(data[index]['book2B']),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  // color: Colors.black,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(data[index]['book3B']),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  // color: Colors.black,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(data[index]['book4B']),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          })
          : ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index){
            return Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: Get.width - 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        )),
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(data[index]['rackA']),
                          SizedBox(
                            height: 8,
                          ),
                          Column(
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  // color: Colors.black,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(data[index]['book1A']),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  // color: Colors.black,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(data[index]['book2A']),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  // color: Colors.black,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(data[index]['book3A']),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  // color: Colors.black,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(data[index]['book4A']),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: Get.width - 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        )),
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(data[index]['rackB']),
                          SizedBox(
                            height: 8,
                          ),
                          Column(
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  // color: Colors.black,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(data[index]['book1B']),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  // color: Colors.black,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(data[index]['book2B']),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  // color: Colors.black,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(data[index]['book3B']),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  // color: Colors.black,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(data[index]['book4B']),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
      }),
    );
  }
}
