import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class GeneralPage extends StatefulWidget {
  const GeneralPage({super.key});

  @override
  State<GeneralPage> createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("<-Geriyə")),

            ///Todo kontaktlari duymeye cevir
            Container(
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.red),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(25.sp)),
              child: Row(
                children: [
                  ///Profil ikonkası
                  SizedBox(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.sp),
                    child: Image.asset(
                      'assets/images/profil_icon_1.webp',
                      width: 60.sp,
                      height: 60.sp,
                    ),
                  )),

                  /// Profillerin adlari ve statusu
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ///Profilin adi
                        Container(
                          child: Text(
                            "Əlövsət Şirməmmədov",
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.w800),
                          ),
                        ),

                        ///Profilin statusu
                        Container(
                          margin: EdgeInsets.only(top: 5.sp),
                          child: Text("Online"),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),

                  ///Statusun indikatoru
                  Container(
                    margin: EdgeInsets.only(right: 12.sp),
                    child: Icon(
                      Icons.circle,
                      color: Colors.green,
                      size: 8.sp,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
