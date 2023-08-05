import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ContactButton extends StatelessWidget {
  final String fullName;
  final String statusText;
  final String gender;
  final bool status;

  const ContactButton({
    super.key,
    required this.fullName,
    required this.statusText,
    required this.gender,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){print('Hello i miss u $fullName');},
      child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.black12),
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
                      fullName,
                      style:
                          TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w800),
                    ),
                  ),

                  ///Profilin statusu
                  Container(
                      margin: EdgeInsets.only(top: 5.sp), child: Row(
                        children: [
                          Text( statusText, style: TextStyle(fontSize: 8.sp),),
                          Icon(size: 14.sp,color: gender == 'male' ? Colors.indigo : Colors.pink,gender == 'male' ? Icons.male : Icons.female),
                        ],
                      )


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
                color: status ? Colors.green : Colors.red,
                size: 8.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
