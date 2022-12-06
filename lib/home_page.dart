import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:msig_web/home_user.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';
import 'package:sembast_web/sembast_web.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final rackAController = TextEditingController();
  final book1AController = TextEditingController();
  final book2AController = TextEditingController();
  final book3AController = TextEditingController();
  final book4AController = TextEditingController();

  final rackBController = TextEditingController();
  final book1BController = TextEditingController();
  final book2BController = TextEditingController();
  final book3BController = TextEditingController();
  final book4BController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // This is sample
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Rack A",
                ),
                controller: rackAController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'field required!';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Book 1A",
                ),
                controller: book1AController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'field required!';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Book 2A",
                ),
                controller: book2AController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'field required!';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Book 3A",
                ),
                controller: book3AController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'field required!';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Book 4A",
                ),
                controller: book4AController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'field required!';
                  }
                  return null;
                },
              ),
              SizedBox(height: 8,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Rack B",
                ),
                controller: rackBController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'field required!';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Book 1B",
                ),
                controller: book1BController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'field required!';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Book 2B",
                ),
                controller: book2BController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'field required!';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Book 3B",
                ),
                controller: book3BController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'field required!';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Book 4B",
                ),
                controller: book4BController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'field required!';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                child: Text("Submit"),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    dynamic isiPost = jsonEncode(<String, dynamic>{
                      "rackA": rackAController.text,
                      "book1A": book1AController.text,
                      "book2A": book2AController.text,
                      "book3A": book3AController.text,
                      "book4A": book4AController.text,
                      "rackB": rackBController.text,
                      "book1B": book1BController.text,
                      "book2B": book2BController.text,
                      "book3B": book3BController.text,
                      "book4B": book4BController.text,
                    });
                    // var dir = await getApplicationDocumentsDirectory();
                    // await dir.create(recursive: true);
                    // var dbPath = join(dir.path, 'msig.db');
                    // var db = await databaseFactoryIo.openDatabase(dbPath);
                    // var store = intMapStoreFactory.store('listBook');
                    // Map<String, dynamic> map = jsonDecode(isiPost);
                    // await store.addAll(db, [map]);//put(db, isiPost);
                    // log("db log :${await store.find(db)}");
                    var store = intMapStoreFactory.store("listBook");
                    var factory = databaseFactoryWeb;
                    // Open the database
                    var db = await factory.openDatabase('msigDB');
                    Map<String, dynamic> map = jsonDecode(isiPost);
                    // Add a new record
                    await store.addAll(db, [map]);
                    print("db log :${await store.find(db)}");
                    Get.to(HomeUser(
                      // rackA: rackAController.text,
                      // book1A: book1AController.text,
                      // book2A: book2AController.text,
                      // book3A: book3AController.text,
                      // book4A: book4AController.text,
                      //
                      // rackB: rackBController.text,
                      // book1B: book1BController.text,
                      // book2B: book2BController.text,
                      // book3B: book3BController.text,
                      // book4B: book4BController.text,
                    ));
                  }
                  // else{
                  //   Get.snackbar("Error", "Please fill all form");
                  // }
                },
              )
            ],
          ),
        ),
      ),
    ));
  }
}
