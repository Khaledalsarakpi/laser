import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 204, 203, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(232, 133, 133, 1),
        title: Text('معلومات وتوصيات'.tr),
        centerTitle: true,
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
                padding: EdgeInsets.all(20.w),
                child: Text(
                  'ماهي تقنية الضوء المكثف IPL Prinseska'.tr,
                  style: TextStyle(
                      color: Color.fromRGBO(215, 115, 114, 1.0),
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0.w, right: 10.w, top: 10.h),
              child: Text(
                'تتواجد هذه التقنية منذ عام 1995 اى منذ اكثر من عقد و لكنها تتطور مع الوقت لتستخدم في اغراض متعددة اضافة الى ازالة الشعر و هي آمنة جدا.'
                    .tr,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0.w, right: 10.w),
              child: Text(
                'فهي مصممة للاستخدام المنزلي او بالعيادات و فعاليتها كبيرة في إزالة الشعر الداكن و السميك'
                    .tr,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.all(20.w),
                child: Text(
                  'كيف تعمل نبضات الضوء المكثف على ازالة الشعر الزائد ؟'.tr,
                  style: TextStyle(
                      color: Color.fromRGBO(215, 115, 114, 1.0),
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                      fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 10),
              child: Text(
                'تقوم هذه التقنية المتطورة على توصيل طاقة حرارية خفيفة و مناسبة للمنطقة المراد ازالة الشعر منها حيث يقوم الشعر بامتصاصها فيصبح ساخنا و من ثم تتعطل الخلايا المسؤولة عن نمو الشعر فيختفي الشعر تدريجيا ثم لا يظهر مجددا على مدار الجلسات.'
                    .tr,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.all(20.w),
                child: Text(
                  'وظيفة جهاز Prinseska IP'.tr,
                  style: TextStyle(
                      color: Color.fromRGBO(215, 115, 114, 1.0),
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                      fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 10),
              child: Text(
                'يمكن استخدام هذا المنتج في: الشعر الزائد مثل شعر الشفاه وشعر الإبط وشعر أطراف الجسم وشعر الجبين وما إلى ذلك ؛إزالة الشعر غير المؤلم مناسبة للشعر الأسود وذوي الشعر الداكن .'
                    .tr,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              ),
            ),
            Text(
              'الجهاز يحتوي على مليون ومضة ويكفي استعمال اكثر من 20 سنة ولا يحتاج لشراء روؤس اضافية ولا تعبأة ومضات'
                  .tr,
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.all(20.w),
                child: Text(
                  'توصيات عامة'.tr,
                  style: TextStyle(
                      color: Color.fromRGBO(215, 115, 114, 1.0),
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                      fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0.w),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  size: 14,
                ),
                label: Text(
                  'لا تصوب الجهاز أو النافذة الخفيفة على عينيك أبدًا.'.tr,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 80.0.w,
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  size: 14,
                ),
                label: Text(
                  'إزالة السمرة الاصطناعية قبل الاستخدام.'.tr,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  size: 14,
                ),
                label: Text(
                  'إذا كان لديك أي رد فعل سلبي على الجهاز فتوقف عن الاستخدام على الفور'
                      .tr,
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
                  'استشر طبيبك قبل الاستخدام إذا كان لديك أي الأمراض الجلدية الموجودة أو المشاكل الصحية.'
                      .tr,
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
                  'قم دائمًا بإجراء اختبار موضعي قبل معالجة جزء معين من الجسم.'
                      .tr,
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
                  'ابدأ دائمًا من أدنى مستوى شدة لتجنب أي حرق أو إصابة في الجلد.'
                      .tr,
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
                  'إذا كنت تتلقى العلاج في عيادة الليزر ، يجب أن تنتظر أسبوعين قبل استخدام الجهاز لأن هذا قد يزيد من خطر حدوث رد فعل.'
                      .tr,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 40.0.w,
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  size: 14,
                ),
                label: Text(
                  'لا تستخدميه إذا كنت حاملاً أو ربما تكونين حاملاً.'.tr,
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
                  'لا تستخدم الجهاز إذا كنت تخضع للعلاج الإشعاعي أو العلاج الكيميائي أو خضعت لأي إجراء لإعادة تسطيح الجلد خلال فترة العلاج.'
                      .tr,
                  style: TextStyle(color: Colors.black),
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
                  'لا تستخدم الجهاز إذا كنت تعاني من الصرع.'.tr,
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
                  'لا تستخدم الجهاز إذا كان لديك غرسة نشطة. مثل جهاز تنظيم ضربات القلب أو مضخات الأنسولين أو ما شابه ذلك.'
                      .tr,
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
                  'لا تستخدمه على البشرة التالفة أو المتشققة أو إذا كنت لديك تاريخ من تفشي الهربس أو الصدفية في منطقة العلاج.'
                      .tr,
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
                  'لا تستخدمه إذا كنت تتناول الدواء من المكونات الحادة التالية خلال آخر اسبوعين: Retinoids و Accutane و Retin-A.'
                      .tr,
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
                  'لا تستخدمه إذا كنت حساسًا للضوء أو لديك غيره من الأمراض المتعلقة بحساسية الضوء.'
                      .tr,
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
                  'لا تستخدم الجهاز إذا كان لديك بقع داكنة مثل ظهور النمش أو الشامات أو البثور الكبيرة في منطقة العلاج.'
                      .tr,
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
                  'لا تستخدمه على الوشم أو الوحمات أو البثور.  الأوشام أو قد تمتص البقع الداكنة الكثير من الطاقة الضوئية ، مما قد يتسبب في تورم الجلد أو ظهور بثور مؤقتة أو قد يغير لون بشرتك.'
                      .tr,
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
                  'لا تستخدم الجهاز حول العينين أو الحاجبين أو الرموش لأن ذلك قد يسبب تلفًا خطيرًا ودائمًا بالعين.'
                      .tr,
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
                  'لا تستخدمه على الجلد المتهيج ، بما في ذلك الطفح الجلدي أو تورم الجلد.  يمكن أن تجعل هذه الحالات الجلد أكثر حساسية للعلاج بالضوء.  انتظر حتى تلتئم المنطقة المصابة تمامًا قبل الاستخدام.'
                      .tr,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding:
                EdgeInsets.all(20.w),
                child: Text(
                  'هام'.tr,
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
                left: 90.0.w,
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  size: 14,
                ),
                label: Text(
                  'لا تستخدم الجهاز في الماء أو حوله.'.tr,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 120.0.w,
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  size: 14,
                ),
                label: Text(
                  'لا تعمل مع مصدر طاقة تالف.'.tr,
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
                  'لا تفتح أو تحاول إصلاح الجهاز في أي وقت.'.tr,
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
                  'نوصي بتجنب التعرض الطويل لأشعة الشمس المباشرة (بما في ذلك أسرة التسمير) لمدة أسبوعين على الأقل قبل العلاج و48 ساعة بعد العلاج.  إذا تعرضت لأشعة الشمس بعد العلاج ، فننصح باستخدام واقي من الشمس SPF لحماية بشرتك.'
                      .tr,
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
                  'لا تستخدم الجهاز فوق الثقب أو أي أغراض معدنية مثل الأقراط أو المجوهرات.'
                      .tr,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 90.0.w,
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  size: 14,
                ),
                label: Text(
                  'يحفظ بعيدا عن متناول الأطفال.'.tr,
                  style: TextStyle(color: Colors.black),
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
                  'إزالة السمرة الاصطناعية قبل الاستخدام.'.tr,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0.w, right: 30.w),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  size: 14,
                ),
                label: Text(
                  'يجب عدم استخدام الجهاز من قبل أي شخص يقل عمره عن 16 عامًا.'
                      .tr,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 40,
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  size: 14,
                ),
                label: Text(
                  'ظهور احمرار في الجلد لدى البعض امر طبيعي'.tr,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 30.0.w,
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  size: 14,
                ),
                label: Text(
                  'كلما كانت بشرتك أغمق ، قل وضوح تأثير الجهاز'.tr,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0.w, right: 30.w),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  size: 14,
                ),
                label: Text(
                  ' قد يظهررد الفعل متاخراً، في هذه الحالة تأكد من اتباع فترة الانتظار لمدة ساعتين قبل زيادة إعداد الشدة'
                      .tr,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0.w, right: 30.w),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  size: 14,
                ),
                label: Text(
                  'تجنب الأشعة فوق البنفسجية أثناء الاستخدام واحمي بشرتك دائمًا عند الخروج في الشمس.  حاول أيضًا تجنب التعرض الطويل لإشعاع الكمبيوتر أثناء العمل ، واحمي نفسك بالواقي من الشمس .'
                      .tr,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0.w, right: 30.w),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  size: 14,
                ),
                label: Text(
                  'لا تسد مدخل الهواء ومخرج التبريد حتى لا تؤثر على تبريد الجهاز.'
                      .tr,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0.w, right: 30.w),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  size: 14,
                ),
                label: Text(
                  'لا تحفظ الجهاز بالقرب من المجالات المغناطيسية القوية أو الرطوبة أو الأتربة أو في درجات حرارة عالية.'
                      .tr,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0.w, right: 10.w),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  size: 14,
                ),
                label: Text(
                  'يحظر استخدامه مع تطبيقات أخرى غير مسموح بها.'.tr,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0.w, right: 30.w),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                  size: 14,
                ),
                label: Text(
                  'منع الأشخاص الآخرين من فتح هذا الجهاز باستثناء الأشخاص المعتمدين لدينا وإلا فقد يكون خطر التعرض لصدمة كربائية.'
                      .tr,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.all(20.w),
                child: Text(
                  'لون البشرة المناسب لجهاز الليزر'.tr,
                  style: TextStyle(
                      color: Color.fromRGBO(215, 115, 114, 1.0),
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                      fontSize: 16),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 50.w,
                    height: 100.h,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'بشرة بيضاء فاتحة جدا'.tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 9.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/c1.png'))),
                  ),
                  Container(
                    width: 50.w,
                    height: 100.h,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'بشرة فاتحة'.tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 9.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/c2.png'))),
                  ),
                  Container(
                    width: 50.w,
                    height: 100.h,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'متوسطة إلى زيتونية'.tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 9.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/c3.png'))),
                  ),
                  Container(
                    width: 50.w,
                    height: 100.h,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'زيتونية إلى بني متوسط'.tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 9.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/c4.png'))),
                  ),
                  Container(
                    width: 50.w,
                    height: 100.h,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'بني إلى بني غامق'.tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 9.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/c5.png'))),
                  ),
                  Container(
                    width: 50.w,
                    height: 100.h,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'بني غامق جدا أسود'.tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 9.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/c6.png'))),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 10),
              child: Text(
                'إذا كانت بشرتك من النوع 1 الى 4 وشعرك غامق اللون فأنت المرشحة المثالية لهذا الجهاز وستحصلين على النتائج المثلى توخي الحذر إذا كان لديك الكثير من الشامات الداكنة أو النمش، حيث تصبح بعض الأجهزة غير مناسبة للاستخدام بسبب الميلانين المتزايد في الجلد،  هل لون شعرك مناسب؟'
                    .tr,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 10),
              child: Text(
                'كلما كان لون الشعر قاتماً كان ذلك أفضل لأن الشعر الداكن يحتوي على الكثير من صبغة الميلانين والتي يستهدفها الليزر ويقوم بتسخينها لإتلاف بصيلة الشعر ولمنع نمو الشعر.'
                    .tr,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 10),
              child: Text(
                'إذا كان لون الشعر فاتح أي أشقر أو أحمر أو أبيض أو رمادي، فإنه يفتقر إلى نوع الميلانين الذي ينقل الحرارة الى الجذور لتعطيل البصيلات، وبالتالي لن تعمل معظم الأجهزة المنزلية على هذا النوع من الشعر.'
                    .tr,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
