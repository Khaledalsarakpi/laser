import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Using extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return using_State();
  }
}

class using_State extends State<Using> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 204, 203, 1.0),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(232, 133, 133, 1),
        title: Text('طريقة الاستخدام'.tr),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 15.h,
            ),
            Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding:   EdgeInsets.all(8.0),
                child: Text(
                  'تشغيل الجهاز'.tr,
                  style: TextStyle(
                      color: Color.fromRGBO(215, 115, 114, 1.0),
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 20.0.w, right: 10.w ,top: 10.h),
              child: Text(
                'الجهاز لايعمل بدون وصله بالمقبس الكهربائي ، بعد توصيل الجهازبالمقبس الكهربائي سيومض بشكل متواصل باللون الأخضر. الان يرجى الضغط مرة واحدة على زر التشغيل الموجود على الجهة الخلفية للجهاز المشار اليه في الصورة'.tr,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Image.asset('images/10.jpg'),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 10),
              child: Text(
                'عند التشغيل يثبت الضوء الأخضر على زر التشغيل ويتوقف عن الوميض. وسوف تسمع صوت الجهاز بشكل واضح'.tr,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'كيف يتم تغيير شدة مستوى الومضات ؟'.tr,
                  style: TextStyle(
                      color: Color.fromRGBO(215, 115, 114, 1.0),
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                      fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0.w, right: 10.w, top: 15.h),
              child: Text(
                'من زر التشغيل Power في كل مرة تضغط على الزر ضغطة واحدة - سوف تزداد قوة الومضات . وسيظهر لك على الجهة الأمامية للجهاز  باللون الأزرق عدد النقاط والذي يشير الى قوة مستوى الومضات مثلا نقطتين باللون الازرق تعني المستوى الثاني .'.tr,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 10),
              child: Text(
                'كلما اردت رفع المستوى اضغط مرة واحدة على زر التشغيل Power'.tr,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              ),
            ),
            Text(
              'ملاحظة الجهاز يحتوى على 5 مستويات'.tr,
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Intensity level 1 ',
              style: TextStyle(
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  fontSize: 16),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.0.h),
              child: Image.asset('images/1in.png'),
            ),
            Text(
              'Intensity level 2 ',
              style: TextStyle(
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  fontSize: 16),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.0.h),
              child: Image.asset('images/2.in.png'),
            ),
            Text(
              'Intensity level 3 ',
              style: TextStyle(
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  fontSize: 16),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.0.h),
              child: Image.asset('images/3.in.png'),
            ),
            Text(
              'Intensity level 4 ',
              style: TextStyle(
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  fontSize: 16),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.0.h),
              child: Image.asset('images/4in.png'),
            ),
            Text(
              'Intensity level 4 ',
              style: TextStyle(
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  fontSize: 16),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.0.h),
              child: Image.asset('images/5in.png'),
            ),
            Text(
              'R = ready for work ',
              style: TextStyle(
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  fontSize: 16),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.0.h),
              child: Image.asset('images/6in.png'),
            ),
            SizedBox(height: 15.h,),
            Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'طريقة تطبيق الومضات على الجسم !'.tr,
                  style: TextStyle(
                      color: Color.fromRGBO(215, 115, 114, 1.0),
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                      fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 15.h,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 10),
              child: Text(
                'ضع نافذة الومضات Flash window على الجسم بشكل عمودي وملاصق تماماً للجلد. وقم بتمرير الجهاز على الجسم بمسافات متقاربة مساوية لنافذة الومضات ،وفي كل مرة تنقل الجهاز قم بالضغط مرة واحدة على زر الومضات Flash button'.tr,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Image.asset('images/11.jpg'),
            SizedBox(height: 15.h,),
            Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'كيفية تشغيل الوميض التلقائي.'.tr,
                  style: TextStyle(
                      color: Color.fromRGBO(215, 115, 114, 1.0),
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                      fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 10),
              child: Text(
                'اضغط بشكل مستمر لمدة ثلاثة ثواني على زر الومضات Flash button ،بهذه الطريقة لست مضطرا للضغط على الزر في كل مرة تقوم بها بتطبيق الومضات على البشرة. وانما فقط تمرير الجهاز على الجسم .'.tr,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'ايقاف تشغيل الجهاز.'.tr,
                  style: TextStyle(
                      color: Color.fromRGBO(215, 115, 114, 1.0),
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                      fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 10),
              child: Text(
                'قم بالضغط على زر التشغيل    power بالجهة الخلفية من الجهاز بشكل مستمر لمدة ثلاثة ثواني . سيتوقف الجهاز عن العمل ثم قم بفصل القابس الكهربائي'.tr,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'جدول شدة الومضات وتناسبها مع لون البشرة'.tr,
                  style: TextStyle(
                      color: Color.fromRGBO(215, 115, 114, 1.0),
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                      fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Image.asset('images/12.png'),
            SizedBox(
              height: 20.h,
            ),
            Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'تعليمات قبل الجلسة ب ٢٤ ساعة'.tr,
                  style: TextStyle(
                      color: Color.fromRGBO(215, 115, 114, 1.0),
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                      fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 60.0.w,
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  size: 14,
                ),
                label: Text(
                  'تنظيف البشرة باستخدام الصابون الغير معطر'.tr,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 180.0.w,
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  size: 14,
                ),
                label: Text(
                  'ازالة الشعر بالشفرة'.tr,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 50.0.w,
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  size: 14,
                ),
                label: Text(
                  'تجنب وضع كريمات او عطورات او مزيل عرق'.tr,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 10),
              child: Text(
                'اختبار التحس: قبل البدء بالجلسات ننصح باختبار التحسس في المرة الاولى  ذلك عن طريق  تجربة الجهاز على المستوى الاول في حال عدم الانزعاج يمكنك تجربته على المستوى الثاني فالثالث ف الرابع ف الخامس اذا لم يحصل أية تأثير  يمكنك استخدام المستوى الرابع او الخامس في جلستك الاولى وكلما كان المستوى اعلى كلما كانت النتيجة افضل ولكن يرجى مراعاة اختيار السرعة التي تناسب لون بشرتك'.tr,
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              ),
            ),
            SizedBox(height: 15.h,),
            Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'تعليمات عند الجلسة'.tr,
                  style: TextStyle(
                      color: Color.fromRGBO(215, 115, 114, 1.0),
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                      fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 30.0.w,
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  size: 14,
                ),
                label: Text(
                  'امسح عدسة الليزر بمحرمة طبية و ارتداء النظارة الخاصة'.tr,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 30.0.w,
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  size: 14,
                ),
                label: Text(
                  'اختيار مستوى السرعة المناسب ل لون بشرتك حيث يوجد خمس مستويات .'.tr,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 10),
              child: Text(
                'ضع الجهاز بشكل عمودي على الجلد بالمكان المراد تطببق الليزر عليه ،للحصول على نتيجة أفضل وفي حال عدم وجود تحسس لديك بالبشرة او بشرة هشة . يمكنك ان تقوم بتطبيق نبضتين من ضوء الليزر على موضع المعالجة . في حال الشعور بألم يرجى تخفيف شدة الومضات الى مستوى أقل'.tr,
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 10),
              child: Text(
                'الكورس يستمر لمدة 3 أشهر. يستخدم الجهاز مرة واحدة كل اسبوع  وللحصول على نتيجة افضل يمكن القيام بعمل جلستين اسبوعيا. وبعد انتهاء الكورس   يتناقص عدد الجلسات تدريجيا مرة كل أسبوعين ثم مرة كل شهر او كل شهرين او ثلاثة على حسب حاجتك بعد ذلك يخف الشعر اكثر ف اكثر ويجب ان تقوم بعمل جلسة كلما استدعت الحاجة لذلك ويترواح ذلك نسبيا من فتاة لاخرى  . في حال عدم الحصول على نتيجة مرضية . يجب اعادة الكورس من جديد لاحتمال أن الشعر لديك عنيد'.tr,
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              ),
            ),
            SizedBox(height: 15.h,),
            Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text('تعليمات ما بعد الجلسة'.tr,
                  style: TextStyle(
                      color: Color.fromRGBO(215, 115, 114, 1.0),
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                      fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 20.0.w,
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  size: 14,
                ),
                label: Text(
                  'استخدم منشفة باردة ومرريها على المكان الذي مررت الليزر عليه'.tr,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 20.0.w,
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  size: 14,
                ),
                label: Text(
                  'بعد ثلاث ساعات استخدم زبدة الشيا او كريم مرطب غير معطر نهائيا'.tr,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 20.0.w,
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  size: 14,
                ),
                label: Text(
                  'الابتعاد عن الماء الساخن وعدم التعرض للشمس مطلقا. في حال التعرض للشمس استخدام كريم واقي شمسي ولكن يفضل عدم التعرض للشمس وفي حال وجود احمرار يفضل استخدام كريم فوسيدين fueldin او بانتينول'.tr,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 20.0.w,
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  size: 14,
                ),
                label: Text(
                  'للذين يعانون من جلد الوزة ينصح بجلسة سكراب قبل الليزر ب ٤٨ ساعة والترطيب'.tr,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
