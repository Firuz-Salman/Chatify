import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/components/buttons/contact_button.dart';

import '../../../db/people/person.dart';

class GeneralPage extends StatefulWidget {
  const GeneralPage({super.key});

  @override
  State<GeneralPage> createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {
  @override
  Widget build(BuildContext context) {
    final cntxSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          backgroundColor: Colors.red,
          toolbarHeight: 30.sp,
          leading: IconButton(
              iconSize: 20.sp,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.chevron_left,
              ))),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.sp,horizontal: 15.sp),
        child: ListView.builder(
          itemCount: Person.peopleData.length,
          itemBuilder: (context, index) {
            return Container(
                margin: EdgeInsets.only(bottom: 5.sp),
                child: ContactButton(
                  fullName: Person.peopleData[index].fullName,
                  statusText: Person.peopleData[index].statusText,
                  gender: Person.peopleData[index].gender,
                  status: Person.peopleData[index].status,
                ));
          },
        ),
      ),
    );
  }
}
