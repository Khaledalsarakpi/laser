import 'dart:ui';

import 'package:get/get.dart';

class LocalizationService extends Translations {
  // Default locale
  static final locale = Locale('ar');

  // fallbackLocale saves the day when the locale gets in trouble
  static final fallbackLocale = Locale('ar');

  // Supported languages
  // Needs to be same order with locales
  static final langs = ['Arabic', 'German'];

  // Supported locales
  // Needs to be same order with langs
  static final locales = [
    Locale('ar'),
    Locale('de'),
  ];

  // Keys and their translations
  // Translations are separated maps in `lang` file
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': ar,
        'de': de,
        'en': de // lang/en_us.dart
        // lang/ja_jp.dart
      };

  // Gets locale from language, and updates the locale
  void changeLocale(String lang) {
    final locale = _getLocaleFromLanguage(lang);
    Get.updateLocale(locale!);
  }

  // Finds language in `langs` list and returns it as Locale
  Locale? _getLocaleFromLanguage(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]) return locales[i];
    }
    return Get.locale;
  }
}

const Map<String, String> ar = {
  'hello': 'Hello!',
};
const Map<String, String> de = {
  'قم بإنشاء حساب لتلقي الاشعارات':'Erstellen Sie ein Konto, um Benachrichtigungen zu erhalten',
  'قم بإنشاء حساب لتستطيع ارسال سؤال':'Erstellen Sie ein Konto, um eine Frage zu senden',
  'قم بالدخول لجدول جلساتي لحساب مواعيدك القادمة':'Melden Sie sich bei meinem Sitzungsplan an, um Ihre anstehenden Termine zu berechnen',
  'معلومات وتوصيات': 'Informationen und Empfehlungen',
  'بشرة بيضاء فاتحة جدا':'Sehr helle weiße Haut',
  'بشرة فاتحة':'Helle Haut',
  'سياسة الخصوصية':'Datenschutz-Bestimmungen',
  'متوسطة إلى زيتونية':'Mittel bis oliv',
  'زيتونية إلى بني متوسط':'Oliv bis mittelbraun',
  'بني إلى بني غامق':'Braun bis dunkelbraun',
  'بني غامق جدا أسود':'Sehr dunkelbraun schwarz',
  'التشغيل وبداية الاستخدام': 'Betrieb und Nutzungsbeginn',
  'الجدول': 'Zeitplan',
  'ماهي تقنية الضوء المكثف IPL Prinseska':
      'Was ist die IPL Prinseska Intense Light Technology',
  'الاستكشاف': 'Erkundung',
  'ضع الباركودالموجود على العلبة  في منتصف الكاميرا':
      'Kleben Sie den Barcode auf die Schachtel in der Mitte der Kamera',
  'الأسئلة الشائعة': 'häufige Fragen',
  'الباركود خاطئ اقرأ الباركود الموجود على العلبة':
      'Der Strichcode ist falsch. Lesen Sie den Strichcode auf der Verpackung',
  'تم تسجيل الدخول بنجاح': 'Sie sind erfolgreich angemeldet',
  'تم تسجيل الحساب بنجاح': 'Konto wurde erfolgreich registriert',
  'فشل انشاء الحساب': 'Fehler bei der Kontoeinrichtung',
  'قم بانشاء حساب لتلقي الاشعارات':
      'Erstellen Sie ein Konto, um Benachrichtigungen zu erhalten',
  'تتواجد هذه التقنية منذ عام 1995 اى منذ اكثر من عقد و لكنها تتطور مع الوقت لتستخدم في اغراض متعددة اضافة الى ازالة الشعر و هي آمنة جدا.':
      'Diese Technologie gibt es seit 1995, vor mehr als einem Jahrzehnt, aber sie entwickelt sich im Laufe der Zeit, um neben der Haarentfernung für mehrere Zwecke verwendet zu werden, und sie ist sehr sicher.',
  'فهي مصممة للاستخدام المنزلي او بالعيادات و فعاليتها كبيرة في إزالة الشعر الداكن و السميك':
      'Es ist für den Gebrauch zu Hause oder in der Klinik konzipiert und ist sehr effektiv bei der Entfernung von dunklem und dichtem Haar',
  'كيف تعمل نبضات الضوء المكثف على ازالة الشعر الزائد ؟':
      'Wie entfernen die intensiven Lichtimpulse überschüssiges Haar?',
  'تقوم هذه التقنية المتطورة على توصيل طاقة حرارية خفيفة و مناسبة للمنطقة المراد ازالة الشعر منها حيث يقوم الشعر بامتصاصها فيصبح ساخنا و من ثم تتعطل الخلايا المسؤولة عن نمو الشعر فيختفي الشعر تدريجيا ثم لا يظهر مجددا على مدار الجلسات.':
      'Diese fortschrittliche Technologie basiert auf der Abgabe von Lichtwärmeenergie, die für den Bereich geeignet ist, aus dem Haare entfernt werden sollen, wo das Haar sie absorbiert und heiß wird, und dann werden die für das Haarwachstum verantwortlichen Zellen zerstört, und das Haar verschwindet allmählich und erscheint dann während der Sitzungen nicht mehr.',
  'وظيفة جهاز Prinseska IP': 'Prinseska IP-Gerätefunktion',
  'يمكن استخدام هذا المنتج في: الشعر الزائد مثل شعر الشفاه وشعر الإبط وشعر أطراف الجسم وشعر الجبين وما إلى ذلك ؛إزالة الشعر غير المؤلم مناسبة للشعر الأسود وذوي الشعر الداكن .':
      'Dieses Produkt kann verwendet werden für: Überschüssige Haare wie Lippenhaare, Achselhaare, Gliedmaßenhaare, Stirnhaare usw.; Die schmerzlose Haarentfernung eignet sich für schwarze Haare und Menschen mit dunklem Haar.',
  'الجهاز يحتوي على مليون ومضة ويكفي استعمال اكثر من 20 سنة ولا يحتاج لشراء روؤس اضافية ولا تعبأة ومضات':
      'Das Gerät enthält eine Million Blitze und reicht aus, um mehr als 20 Jahre zu verwenden, und es müssen keine zusätzlichen Köpfe oder Nachfüllblitze gekauft werden',
  'توصيات عامة': 'Allgemeine Empfehlungen',
  'لا تصوب الجهاز أو النافذة الخفيفة على عينيك أبدًا.':
      'Richten Sie das Gerät oder die Fensterleuchte niemals auf Ihre Augen.',
  'إزالة السمرة الاصطناعية قبل الاستخدام.':
      'Entfernen Sie die künstliche Bräune vor dem Gebrauch.',
  'إذا كان لديك أي رد فعل سلبي على الجهاز فتوقف عن الاستخدام على الفور':
      'Wenn Sie irgendwelche unerwünschten Reaktionen auf das Gerät haben, stellen Sie die Verwendung sofort ein',
  'استشر طبيبك قبل الاستخدام إذا كان لديك أي الأمراض الجلدية الموجودة أو المشاكل الصحية.':
      'Konsultieren Sie vor der Anwendung Ihren Arzt wenn Sie bereits Hauterkrankungen oder Gesundheitsprobleme haben.',
  'قم دائمًا بإجراء اختبار موضعي قبل معالجة جزء معين من الجسم.':
      'Führen Sie immer einen Stichprobentest durch bevor Sie einen bestimmten Körperteil behandeln',
  'ابدأ دائمًا من أدنى مستوى شدة لتجنب أي حرق أو إصابة في الجلد.':
      'Beginnen Sie immer mit der niedrigsten Intensitätsstufe, um Verbrennungen oder Verletzungen der Haut zu vermeiden.',
  'إذا كنت تتلقى العلاج في عيادة الليزر ، يجب أن تنتظر أسبوعين قبل استخدام الجهاز لأن هذا قد يزيد من خطر حدوث رد فعل.':
      'Wenn Sie in einer Laserklinik behandelt werden, sollten Sie zwei Wochen warten, bevor Sie das Gerät verwenden, da dies das Risiko einer Reaktion erhöhen kann.',
  'لا تستخدميه إذا كنت حاملاً أو ربما تكونين حاملاً.':
      'Nicht verwenden wenn Sie schwanger sind oder sein könnten.',
  'لا تستخدم الجهاز إذا كنت تخضع للعلاج الإشعاعي أو العلاج الكيميائي أو خضعت لأي إجراء لإعادة تسطيح الجلد خلال فترة العلاج.':
      'Verwenden Sie das Gerät nicht wenn Sie sich während der Behandlung einer Strahlentherapie Chemotherapie oder einem anderen Verfahren zur Hauterneuerung unterziehen.',
  'لا تستخدم الجهاز إذا كنت تعاني من الصرع.':
      'Verwenden Sie das Gerät nicht, wenn Sie an Epilepsie leiden.',
  'لا تستخدم الجهاز إذا كان لديك غرسة نشطة. مثل جهاز تنظيم ضربات القلب أو مضخات الأنسولين أو ما شابه ذلك.':
      'Verwenden Sie das Gerät nicht, wenn Sie ein aktives Implantat haben. Wie ein Herzschrittmacher, Insulinpumpen oder ähnliches.',
  'لا تستخدمه على البشرة التالفة أو المتشققة أو إذا كنت لديك تاريخ من تفشي الهربس أو الصدفية في منطقة العلاج.':
      'Nicht auf geschädigter oder rissiger Haut oder bei Herpes oder Psoriasis-Ausbrüchen im Behandlungsbereich in der Vorgeschichte anwenden.',
  'لا تستخدمه إذا كنت تتناول الدواء من المكونات الحادة التالية خلال آخر اسبوعين: Retinoids و Accutane و Retin-A.':
      'Nicht verwenden, wenn Sie innerhalb der letzten zwei Wochen einen der folgenden schwerwiegenden Inhaltsstoffe eingenommen haben: Retinoide, Accutane und Retin-A.',
  'لا تستخدمه إذا كنت حساسًا للضوء أو لديك غيره من الأمراض المتعلقة بحساسية الضوء.':
      'Nicht verwenden, wenn Sie lichtempfindlich sind oder andere Lichtempfindlichkeitszustände haben.',
  'لا تستخدم الجهاز إذا كان لديك بقع داكنة مثل ظهور النمش أو الشامات أو البثور الكبيرة في منطقة العلاج.':
      'Verwenden Sie das Gerät nicht, wenn Sie dunkle Flecken wie Sommersprossen, Muttermale oder große Pickel im Behandlungsbereich haben.',
  'لا تستخدمه على الوشم أو الوحمات أو البثور.  الأوشام أو قد تمتص البقع الداكنة الكثير من الطاقة الضوئية ، مما قد يتسبب في تورم الجلد أو ظهور بثور مؤقتة أو قد يغير لون بشرتك.':
      'Verwenden Sie es nicht auf Tätowierungen, Muttermalen oder Pickeln. Tätowierungen oder dunkle Flecken können viel Lichtenergie absorbieren, was zu Hautschwellungen, vorübergehenden Blasen oder einer Veränderung der Hautfarbe führen kann.',
  'لا تستخدم الجهاز حول العينين أو الحاجبين أو الرموش لأن ذلك قد يسبب تلفًا خطيرًا ودائمًا بالعين.':
      'Verwenden Sie das Gerät nicht im Bereich der Augen, Augenbrauen oder Wimpern, da dies zu schweren und dauerhaften Augenschäden führen kann.',
  'لا تستخدمه على الجلد المتهيج ، بما في ذلك الطفح الجلدي أو تورم الجلد.  يمكن أن تجعل هذه الحالات الجلد أكثر حساسية للعلاج بالضوء.  انتظر حتى تلتئم المنطقة المصابة تمامًا قبل الاستخدام.':
      'Verwenden Sie es nicht auf gereizter Haut, einschließlich Hautausschlägen oder geschwollener Haut. Diese Bedingungen können die Haut empfindlicher auf Lichttherapie machen. Warten Sie vor der Anwendung, bis der betroffene Bereich vollständig verheilt ist.',
  'هام': 'Wichtig',
  'لا تستخدم الجهاز في الماء أو حوله.':
      'Verwenden Sie das Gerät nicht in oder in der Nähe von Wasser.',
  'لا تعمل مع مصدر طاقة تالف.':
      'Arbeiten Sie nicht mit einem beschädigten Netzteil.',
  'لا تفتح أو تحاول إصلاح الجهاز في أي وقت.':
      'Öffnen Sie das Gerät nicht und versuchen Sie niemals, es zu reparieren.',
  'نوصي بتجنب التعرض الطويل لأشعة الشمس المباشرة (بما في ذلك أسرة التسمير) لمدة أسبوعين على الأقل قبل العلاج و48 ساعة بعد العلاج.  إذا تعرضت لأشعة الشمس بعد العلاج ، فننصح باستخدام واقي من الشمس SPF لحماية بشرتك.':
      'Wir empfehlen, mindestens 2 Wochen vor der Behandlung und 48 Stunden nach der Behandlung längere direkte Sonneneinstrahlung (einschließlich Solarium) zu vermeiden. Wenn Sie nach der Behandlung der Sonne ausgesetzt sind, empfehlen wir die Verwendung eines Sonnenschutzmittels mit LSF, um Ihre Haut zu schützen.',
  'لا تستخدم الجهاز فوق الثقب أو أي أغراض معدنية مثل الأقراط أو المجوهرات.':
      'Verwenden Sie das Gerät nicht über Piercings oder metallischen Gegenständen wie Ohrringen oder Schmuck.',
  'يحفظ بعيدا عن متناول الأطفال.': 'von Kindern fernhalten.',
  'ازالة السمرة الاصطناعية قبل الاستخدام.':
      'Entfernen Sie die künstliche Bräune vor dem Gebrauch.',
  'يجب عدم استخدام الجهاز من قبل أي شخص يقل عمره عن 16 عامًا.':
      'Das Gerät darf nicht von Personen unter 16 Jahren verwendet werden.',
  'ظهور احمرار في الجلد لدى البعض امر طبيعي':
      'Das Auftreten von Hautrötungen ist bei manchen normal',
  'كلما كانت بشرتك أغمق ، قل وضوح تأثير الجهاز':
      'Je dunkler Ihre Haut ist, desto weniger sichtbar ist die Wirkung des Geräts',
  ' قد يظهررد الفعل متاخراً، في هذه الحالة تأكد من اتباع فترة الانتظار لمدة ساعتين قبل زيادة إعداد الشدة':
      'Die Reaktion kann verspätet auftreten, halten Sie in diesem Fall unbedingt die Wartezeit von 2 Stunden ein, bevor Sie die Intensitätseinstellung erhöhen',
  'تجنب الأشعة فوق البنفسجية أثناء الاستخدام واحمي بشرتك دائمًا عند الخروج في الشمس.  حاول أيضًا تجنب التعرض الطويل لإشعاع الكمبيوتر أثناء العمل ، واحمي نفسك بالواقي من الشمس .':
      'Vermeiden Sie UV-Strahlen während der Anwendung und schützen Sie Ihre Haut immer, wenn Sie in der Sonne sind. Versuchen Sie auch, während der Arbeit eine längere Computerstrahlung zu vermeiden, und schützen Sie sich mit Sonnencreme.',
  'لا تسد مدخل الهواء ومخرج التبريد حتى لا تؤثر على تبريد الجهاز.':
      'Blockieren Sie nicht den Lufteinlass und den Kühlauslass, um die Kühlung des Geräts nicht zu beeinträchtigen.',
  'لا تحفظ الجهاز بالقرب من المجالات المغناطيسية القوية أو الرطوبة أو الأتربة أو في درجات حرارة عالية.':
      'Lagern Sie das Gerät nicht in der Nähe von starken Magnetfeldern, Feuchtigkeit oder Staub oder bei hohen Temperaturen.',
  'يحظر استخدامه مع تطبيقات أخرى غير مسموح بها.':
      'Es ist verboten, es mit anderen nicht autorisierten Anwendungen zu verwenden.',
  'منع الأشخاص الآخرين من فتح هذا الجهاز باستثناء الأشخاص المعتمدين لدينا وإلا فقد يكون خطر التعرض لصدمة كربائية.':
      'Verbieten Sie anderen Personen außer unseren befugten Personen, dieses Gerät zu öffnen, da sonst die Gefahr eines karmischen Schocks besteht.',
  'لون البشرة المناسب لجهاز الليزر': 'Hautfarbe geeignet für Lasergerät',
  'إذا كانت بشرتك من النوع 1 الى 4 وشعرك غامق اللون فأنت المرشحة المثالية لهذا الجهاز وستحصلين على النتائج المثلى توخي الحذر إذا كان لديك الكثير من الشامات الداكنة أو النمش، حيث تصبح بعض الأجهزة غير مناسبة للاستخدام بسبب الميلانين المتزايد في الجلد،  هل لون شعرك مناسب؟':
      'Wenn Sie Hauttyp 1 bis 4 und dunkles Haar haben, sind Sie der ideale Kandidat für dieses Gerät und Sie erhalten optimale Ergebnisse. Seien Sie vorsichtig, wenn Sie viele dunkle Muttermale oder Sommersprossen haben, da einige Geräte aufgrund der Zunahme ungeeignet werden Melanin in der Haut, ist Ihre Haarfarbe geeignet?',
  'كلما كان لون الشعر قاتماً كان ذلك أفضل لأن الشعر الداكن يحتوي على الكثير من صبغة الميلانين والتي يستهدفها الليزر ويقوم بتسخينها لإتلاف بصيلة الشعر ولمنع نمو الشعر.':
      'Je dunkler das Haar, desto besser, denn dunkles Haar enthält viel Melanin, das der Laser angreift und erhitzt, um die Haarfollikel zu schädigen und das Haarwachstum zu verhindern.',
  'إذا كان لون الشعر فاتح أي أشقر أو أحمر أو أبيض أو رمادي، فإنه يفتقر إلى نوع الميلانين الذي ينقل الحرارة الى الجذور لتعطيل البصيلات، وبالتالي لن تعمل معظم الأجهزة المنزلية على هذا النوع من الشعر.':
      'Wenn das Haar hellblond, rot, weiß oder grau ist, fehlt ihm die Art von Melanin, das Wärme an die Wurzeln überträgt, um die Follikel zu deaktivieren, und daher funktionieren die meisten Haushaltsgeräte bei diesem Haartyp nicht.',
  'طريقة الاستخدام': 'Wie benutzt man',
  'تشغيل الجهاز': 'Schalten Sie das Gerät ein',
  'الجهاز لايعمل بدون وصله بالمقبس الكهربائي ، بعد توصيل الجهازبالمقبس الكهربائي سيومض بشكل متواصل باللون الأخضر. الان يرجى الضغط مرة واحدة على زر التشغيل الموجود على الجهة الخلفية للجهاز المشار اليه في الصورة':
      'Ohne Anschluss an die Steckdose funktioniert das Gerät nicht Nach dem Anschluss des Geräts an die Steckdose blinkt es dauerhaft grün. Drücken Sie nun bitte einmal auf den Netzschalter auf der Rückseite des im Bild bezeichneten Geräts',
  'عند التشغيل يثبت الضوء الأخضر على زر التشغيل ويتوقف عن الوميض. وسوف تسمع صوت الجهاز بشكل واضح':
      'Beim Einschalten hält das grüne Licht den Netzschalter eingeschaltet und hört auf zu blinken. Sie werden den Ton des Geräts deutlich hören',
  'كيف يتم تغيير شدة مستوى الومضات ؟':
      'Wie wird die Intensität der Blitze verändert?',
  'من زر التشغيل Power في كل مرة تضغط على الزر ضغطة واحدة - سوف تزداد قوة الومضات . وسيظهر لك على الجهة الأمامية للجهاز  باللون الأزرق عدد النقاط والذي يشير الى قوة مستوى الومضات مثلا نقطتين باللون الازرق تعني المستوى الثاني .':
      'Von der Power-Taste jedes Mal, wenn Sie die Taste drücken - die Blitze werden stärker. Auf der Vorderseite des Geräts wird Ihnen in Blau die Anzahl der Punkte angezeigt, die die Stärke der Blitzstärke angibt, beispielsweise bedeuten zwei Punkte in Blau die zweite Stufe.',
  'كلما اردت رفع المستوى اضغط مرة واحدة على زر التشغيل Power':
      'Wann immer Sie den Pegel erhöhen möchten, drücken Sie einmal die Power-Taste',
  'ملاحظة الجهاز يحتوى على 5 مستويات': 'Hinweis: Das Gerät hat 5 Stufen',
  'طريقة تطبيق الومضات على الجسم !': 'Wie man Blitze auf den Körper aufträgt!',
  'ضع نافذة الومضات Flash window على الجسم بشكل عمودي وملاصق تماماً للجلد. وقم بتمرير الجهاز على الجسم بمسافات متقاربة مساوية لنافذة الومضات ،وفي كل مرة تنقل الجهاز قم بالضغط مرة واحدة على زر الومضات Flash button':
      'Platzieren Sie das Blitzfenster vollständig senkrecht zur Haut am Körper. Führen Sie das Gerät in einem Abstand, der dem Blitzfenster entspricht, am Körper vorbei, und drücken Sie jedes Mal, wenn Sie das Gerät bewegen, einmal die Blitztaste',
  'كيفية تشغيل الوميض التلقائي.':
      'So schalten Sie den automatischen Blitz ein.',
  'اضغط بشكل مستمر لمدة ثلاثة ثواني على زر الومضات Flash button ،بهذه الطريقة لست مضطرا للضغط على الزر في كل مرة تقوم بها بتطبيق الومضات على البشرة. وانما فقط تمرير الجهاز على الجسم .':
      'Halten Sie die Blitztaste drei Sekunden lang gedrückt, damit Sie die Taste nicht jedes Mal drücken müssen, wenn Sie die Blitze auf die Haut auftragen. Aber führen Sie das Gerät einfach am Körper vorbei.',
  'ايقاف تشغيل الجهاز.': 'Schalten Sie das Gerät aus.',
  'قم بالضغط على زر التشغيل    power بالجهة الخلفية من الجهاز بشكل مستمر لمدة ثلاثة ثواني . سيتوقف الجهاز عن العمل ثم قم بفصل القابس الكهربائي':
      'Drücken Sie den Netzschalter auf der Rückseite des Geräts drei Sekunden lang ununterbrochen. Die Maschine hört auf zu arbeiten und zieht dann den Netzstecker',
  'جدول شدة الومضات وتناسبها مع لون البشرة':
      'Tabelle der Intensität der Blitze und ihres Verhältnisses zur Hautfarbe',
  'تعليمات قبل الجلسة ب ٢٤ ساعة': 'Anweisungen 24 Stunden vor der Sitzung',
  'تنظيف البشرة باستخدام الصابون الغير معطر':
      'Reinigen Sie die Haut mit unparfümierter Seife',
  'ازالة الشعر بالشفرة': 'Haarentfernung mit Rasiermesser',
  'تجنب وضع كريمات او عطورات او مزيل عرق':
      'Vermeiden Sie das Tragen von Cremes, Parfums oder Deodorants',
  'اختبار التحس: قبل البدء بالجلسات ننصح باختبار التحسس في المرة الاولى  ذلك عن طريق  تجربة الجهاز على المستوى الاول في حال عدم الانزعاج يمكنك تجربته على المستوى الثاني فالثالث ف الرابع ف الخامس اذا لم يحصل أية تأثير  يمكنك استخدام المستوى الرابع او الخامس في جلستك الاولى وكلما كان المستوى اعلى كلما كانت النتيجة افضل ولكن يرجى مراعاة اختيار السرعة التي تناسب لون بشرتك':
      'Sensibilitätstest: Wir empfehlen vor Beginn der Sitzungen einen Sensibilitätstest, indem Sie das Gerät zum ersten Mal auf der ersten Stufe ausprobieren. Je höher die Stufe, desto besser das Ergebnis, aber bitte berücksichtigen Sie bei der Auswahl der Geschwindigkeit, die zu Ihrer Haut passt Farbe',
  'تعليمات عند الجلسة': 'Anweisungen bei der Sitzung',
  'امسح عدسة الليزر بمحرمة طبية و ارتداء النظارة الخاصة':
      'Wischen Sie die Laserlinse mit einem medizinischen Pad ab und tragen Sie eine Spezialbrille',
  'اختيار مستوى السرعة المناسب ل لون بشرتك حيث يوجد خمس مستويات .':
      'Wählen Sie die passende Geschwindigkeitsstufe für Ihren Hautton, da es fünf Stufen gibt.',
  'ضع الجهاز بشكل عمودي على الجلد بالمكان المراد تطببق الليزر عليه ،للحصول على نتيجة أفضل وفي حال عدم وجود تحسس لديك بالبشرة او بشرة هشة . يمكنك ان تقوم بتطبيق نبضتين من ضوء الليزر على موضع المعالجة . في حال الشعور بألم يرجى تخفيف شدة الومضات الى مستوى أقل':
      'Platzieren Sie das Gerät senkrecht zur Haut an der Stelle, an der der Laser angewendet werden soll, um ein besseres Ergebnis zu erzielen und falls Sie keine Hautempfindlichkeit oder empfindliche Haut haben. Sie können zwei Laserlichtimpulse auf die Behandlungsstelle anwenden. Wenn Sie Schmerzen verspüren, reduzieren Sie bitte die Intensität der Blitze auf eine niedrigere Stufe',
  'الكورس يستمر لمدة 3 أشهر. يستخدم الجهاز مرة واحدة كل اسبوع  وللحصول على نتيجة افضل يمكن القيام بعمل جلستين اسبوعيا. وبعد انتهاء الكورس   يتناقص عدد الجلسات تدريجيا مرة كل أسبوعين ثم مرة كل شهر او كل شهرين او ثلاثة على حسب حاجتك بعد ذلك يخف الشعر اكثر ف اكثر ويجب ان تقوم بعمل جلسة كلما استدعت الحاجة لذلك ويترواح ذلك نسبيا من فتاة لاخرى  . في حال عدم الحصول على نتيجة مرضية . يجب اعادة الكورس من جديد لاحتمال أن الشعر لديك عنيد':
      'Der Kurs dauert 3 Monate. Das Gerät wird einmal pro Woche verwendet, und um ein besseres Ergebnis zu erzielen, können zwei Sitzungen wöchentlich durchgeführt werden. Nach Abschluss des Kurses verringert sich die Anzahl der Sitzungen schrittweise alle zwei Wochen und dann einmal monatlich oder alle zwei oder drei Monate, je nach Bedarf. Wenn Sie kein zufriedenstellendes Ergebnis erhalten. Der Kurs muss erneut wiederholt werden, da Ihr Haar widerspenstig ist',
  'تعليمات ما بعد الجلسة': 'Anweisungen nach der Sitzung',
  'استخدم منشفة باردة ومرريها على المكان الذي مررت الليزر عليه':
      'Verwenden Sie ein kaltes Handtuch und tupfen Sie es auf die Stelle, an der Sie den Laser passiert haben',
  'بعد ثلاث ساعات استخدم زبدة الشيا او كريم مرطب غير معطر نهائيا':
      'Verwenden Sie nach drei Stunden überhaupt Sheabutter oder eine unparfümierte Feuchtigkeitscreme',
  'الابتعاد عن الماء الساخن وعدم التعرض للشمس مطلقا. في حال التعرض للشمس استخدام كريم واقي شمسي ولكن يفضل عدم التعرض للشمس وفي حال وجود احمرار يفضل استخدام كريم فوسيدين fueldin او بانتينول':
      'Halten Sie sich von heißem Wasser fern und setzen Sie sich niemals der Sonne aus. Bei Sonneneinstrahlung ein Sonnenschutzmittel verwenden, aber besser nicht der Sonne aussetzen Bei Rötungen besser Fueldin- oder Panthenol-Creme verwenden.',
  'للذين يعانون من جلد الوزة ينصح بجلسة سكراب قبل الليزر ب ٤٨ ساعة والترطيب':
      'Für diejenigen, die unter der Haut der Gans leiden, wird empfohlen, 48 Stunden vor dem Laser ein Peeling durchzuführen und Feuchtigkeit zu spenden',
  'الصفحة الرئسية': 'Startseite',
  'تعديل صورة الملف الشخصي': 'Profilbild bearbeiten',
  'إنشاء حساب': 'Ein Konto erstellen',
  'جدول جلساتي': 'mein Sitzungsplan',
  'هل قمت بقراءة دليل المستخدم بشكل جيد ؟':
      'Hast du die Bedienungsanleitung gut gelesen?',
  'نعم': 'Jawohl',
  'ملف التعريف': 'Identifikationsdatei',
  'لا': 'Nein',
  'ما هو تقييمك لهذه الجلسة؟': 'Wie ist Ihre Bilanz dieser Sitzung?',
  'هنا يمكنك البدء بجلسات الليزر الخاص بك.. مرشدك الشخصي سوف يبدأ بالخطوات التالية':
      'Hier können Sie Ihre Lasersitzungen starten. Ihr persönlicher Guide beginnt mit den folgenden Schritten',
  'هل اجريت اختبار التحسس لاختيار الشدة المناسبة?':
      'Haben Sie einen Empfindlichkeitstest durchgeführt, um die geeignete Intensität auszuwählen?',
  'اختر اللون الأقرب للون شعر بشرتك':
      'Wählen Sie die Farbe, die Ihrer Hauthaarfarbe am nächsten kommt',
  'اختر اللون الأقرب لبشرتك':
      'Wählen Sie die Farbe, die Ihrer Haut am nächsten kommt',
  'التحضير لجلسة الليزر': 'Vorbereitung auf die Lasersitzung',
  'تأكد ان بشرتك خالية تماما من الشعر، يمكنك إزالة الشعر باستخدام شفرة الحلاقة. في حال التحسس من استخدام الشفرة يمكن استخدام الشمع او اية آلة كهربائية لإزالة الشعر مع التأكد من أن بشرتك نظيفة وعدم وجود اي مواد عطرية او كريمات عليها عند تطبيق الليزر انتظري لمدة 24 ساعة مابين الحلاقة والبدء بجلسة الليزر':
      'Stellen Sie sicher, dass Ihre Haut völlig frei von Haaren ist, Sie können Haare mit einer Rasierklinge entfernen. Bei Empfindlichkeit durch die Verwendung der Klinge kann Wachs oder eine andere elektrische Maschine verwendet werden, um Haare zu entfernen. Stellen Sie sicher, dass Ihre Haut sauber ist und sich keine Parfüms oder Cremes darauf befinden, wenn Sie den Laser anwenden.Warten Sie 24 Stunden zwischen der Rasur und dem Beginn der Lasersitzung',
  'ارتدي النظارات المرفقة مع الجهاز وتأكدي ان شاشة الومضات نظيفة وغير مبللة /عدم تعريض الجهاز للماء أبدا/-قومي بتوصيل الجهاز بالقابس الكهربائي- ضعي الجهاز بشكل عمودي على البشرة بزاوية 90 درجة ولا تنسي اي جزء من تطبيق ومضات الليزر في المكان المراد علاجه.-لتحقيق نتائج أكثر فعالية قومي بتطبيق الليزر مرتين على كل مكان تريدين معالجته بالليزر.-في حال الشعور بالألم أو الانزعاج الشديد قومي بالتطبيق بمقدار ومضة واحدة فقط': ''
      'Tragen Sie die mit dem Gerät gelieferte Brille und stellen Sie sicher, dass der Bildschirm der Blitze sauber und nicht nass ist / Setzen Sie das Gerät niemals Wasser aus /- Stecken Sie das Gerät in die Steckdose- Platzieren Sie das Gerät in einem Winkel von 90 Grad senkrecht zur Haut und vergessen Sie nicht, welcher Teil der Laserblitze an der zu behandelnden Stelle angewendet wird.Wenden Sie den Laser zweimal an jeder Stelle an, die Sie mit dem Laser behandeln möchten, um effektivere Ergebnisse zu erzielen. - Bei starken Schmerzen oder Beschwerden nur einmal auftragen',
  'إنهاء': 'Ende',
  'اهلا وسهلا ومرحبا بك، قمنا بإنشاء هذا التطبيق ليكون دليلك الخاص في استخدام جهاز برنسيسكا IPL.':
      'Hallo und herzlich willkommen wir haben diese Anwendung erstellt um Sie bei der Verwendung des Princeska IPL Geräts zu unterstützen.',
  'ازالة الشعر والحد من نموه اصبح أمر اسهل بكثير عن قبل  بعد استخدامك جهاز ليزر برنسيسكا المنزل.نتمنى لك الحصول على افضل النتائج عن طريق هذا التطبيق الذي سيكون دليلك الأمثل ومرافقك في كل خطوات الاستخدام.':
      'Das Entfernen von Haaren und das Einschränken seines Wachstums ist nach der Verwendung des Prinesca-Heimlasergeräts viel einfacher geworden als zuvor. Wir wünschen Ihnen, dass Sie mit dieser Anwendung, die Ihr idealer Leitfaden und Begleiter in allen Anwendungsschritten sein wird, die besten Ergebnisse erzielen.',
  'ارتدي النظارات المرفقة مع الجهاز وتأكدي إن شاشة الومضات نظيفة وغير مبللة /عدم تعريض الجهاز للماء أبدا/-قومي بتوصيل الجهاز بالقابس الكهربائي- ضعي الجهاز بشكل عمودي على البشرة بزاوية 90 درجة ولا تنسي اي جزء من تطبيق ومضات الليزر في المكان المراد علاجه.-لتحقيق نتائج أكثر فعالية قومي بتطبيق الليزر مرتين على كل مكان تريدين معالجته بالليزر.-في حال الشعور بالألم أو الانزعاج الشديد قومي بالتطبيق بمقدار ومضة واحدة فقط':
      'Tragen Sie die mit dem Gerät gelieferte Brille und achten Sie darauf, dass der Schirm der Blitze sauber und nicht nass ist / Setzen Sie das Gerät niemals Wasser aus / - Schließen Sie das Gerät an die Steckdose an - Platzieren Sie das Gerät in einem Winkel von senkrecht zur Haut 90 Grad und vergessen Sie nicht, die Laserblitze an der zu behandelnden Stelle anzuwenden - Um effektivere Ergebnisse zu erzielen Wenden Sie den Laser zweimal an jeder Stelle an, die Sie mit dem Laser behandeln möchten - Falls Sie Schmerzen oder extremes Unbehagen verspüren , gelten in einem Blitz',
  'يمكنك استخدام ميزة الوميض التلقائي لتسهيل جلسة الليزر الخاصة بك. في حال عدم معرفة الطريقة يرجى قراءة التعلميات من هنا':
      'Sie können die automatische Blitzfunktion verwenden, um Ihre Lasersitzung zu vereinfachen. Wenn Sie nicht wissen wie, lesen Sie bitte die Anleitung hier',
  'انتظري لمدة 24 ساعة مابين الحلاقة والبدء بجلسة الليزر تأكد ان بشرتك خالية تماما من الشعر، يمكنك إزالة الشعر باستخدام شفرة الحلاقة. في حال التحسس من استخدام الشفرة يمكن استخدام الشمع او اية آلة كهربائية لإزالة الشعر مع التأكد من أن بشرتك نظيفة وعدم وجود اي مواد عطرية او كريمات عليها عند تطبيق الليزر':
      'Warten Sie zwischen der Rasur und dem Beginn der Lasersitzung 24 Stunden. Stellen Sie sicher, dass Ihre Haut vollständig frei von Haaren ist. Sie können Haare mit einer Rasierklinge entfernen. Bei Empfindlichkeit durch die Verwendung der Klinge kann Wachs oder eine andere elektrische Maschine verwendet werden, um Haare zu entfernen. Stellen Sie sicher, dass Ihre Haut sauber ist und sich keine Parfüms oder Cremes darauf befinden, wenn Sie den Laser anwenden.',
  'استخدم منشفة مبللة لتخفيف الألم في حال وجودهيمكن استخدام كريم بانتينول لتخفيف اعراض تهيج البشرة البسيط ينصح باستخدام زبدة الشيا الخام بعد جلسة الليزر بساعتين لترطيب البشرة':
      'Verwenden Sie ein feuchtes Handtuch, um Schmerzen zu lindern, falls vorhanden. Panthenol-Creme kann verwendet werden, um Symptome von leichten Hautirritationen zu lindern. Es wird empfohlen, rohe Sheabutter zwei Stunden nach der Lasersitzung zu verwenden, um die Haut mit Feuchtigkeit zu versorgen',
  'مابعد الجلسة': 'nach der Sitzung',
  'اضغط لاختيار صورة': 'Drücken Sie , um ein Bild auszuwählen',
  'الاسم': 'Der Name',
  'الكنية': 'Spitzname',
  'الجنس': 'Sex',
  'العمر': 'das Alter',
  'اختر اللغة:': 'Wählen Sie die Sprache:',
  'جلسة الليزر': "Lasersitzung",
  'حان موعد جلسة الليزر': "Es ist Zeit für eine Lasersitzung",
  'الإيميل': 'Email',
  'كلمة المرور': 'Passwort',
  'تسجيل الدخول': 'Anmelden',
  'ضع الباركود في منتصف الكاميرا':
      'Legen Sie den Barcode in die Mitte der Kamera',
  'تم مسح الباركود': 'Der Barcode wurde gescannt',
  'مواعيد الجلسات': 'Sitzungsdaten',
  'الاشعارات': 'Benachrichtigungen',
  'المنتجات': 'Produkte',
  'المستكشف': 'Forscher',
  'حسابي': "Arithmetik",
  'معلومات الحساب': 'Kontoinformationen',
  'إرسال رسالة': 'Senden einer Nachricht..',
  'الاسئلة الشائعة؟': 'häufige Fragen?',
  'قسم الدردشة': 'Chat-Bereich',
  'ان شدة الومضات المناسبة لهذه البشرة هي من 3 الى 5':
      'Die angemessene Intensität der Blitze für diese Haut liegt zwischen 3 und 5.',
  'لون البشرة هذا غير مناسب لاستخدام جهاز الليزر  Prinseska IPL':
      'Dieser Hautton ist für den Prinseska IPL-Laser nicht geeignet',
  'ان شدة الومضات المناسبة لهذه البشرة هي من3 الى 4':
      'Die für diese Haut geeignete Intensität der Blitze liegt zwischen 3 und 4',
  'ان شدة الومضات المناسبة لهذه البشرة هي 3':
      'Die Intensität der für diese Haut geeigneten Blitze beträgt 3',
  '''بدءا من الآن سيتم حفظ بيانات وتواريخ جلسات الليزر الخاص بك وسيتم تذكيرك عن طريق التنبيهات بموعد الجلسة التالية
تذكير : مدة كورس الليزر الخاص لجهاز
 Prinseska IPL هي ثلاثة أشهر كل اسبوع جلسة. 
 وننصح لنتيجة أفضل في حال عدم وجود اي آثار تحسسية أن تقومي بالجلسات مرتين اسبوعيا. 
في حال عدم الحصول على نتيجة مرضية ،قومي باعادة الكورس كاملاً مع الالتزام بجميع المواعيد و التعليمات بشكل صحيح''':
      '''Ab sofort werden die Daten und Termine Ihrer Lasersitzungen gespeichert und Sie werden per Alert an das Datum der nächsten Sitzung erinnert
Zur Erinnerung: Die Dauer des Laserkurses für das Gerät
 Prinseska IPL ist eine dreimonatige wöchentliche Sitzung.
 Für ein besseres Ergebnis empfehlen wir, dass Sie die Sitzungen zweimal pro Woche durchführen sollten, wenn keine allergischen Auswirkungen vorliegen.
Falls kein zufriedenstellendes Ergebnis erzielt wird, wiederholen Sie den gesamten Kurs unter korrekter Einhaltung aller Termine und Anweisungen''',
  '''اهلا وسهلا ومرحبا بك ,,
نتمنى لك الحصول على افضل النتائج عن طريق استخدام هذا التطبيق الذي سيكون دليلك الأمثل ومرافقك في كل خطوات الاستخدام.''':
      '''Herzlich willkommen,
Das Entfernen von Haaren und das Begrenzen seines Wachstums ist nach der Verwendung des Princesca-Heimlasergeräts viel einfacher geworden als zuvor.
 Wir wünschen Ihnen, dass Sie mit dieser Anwendung, die Ihr bester Ratgeber und Begleiter in allen Anwendungsschritten sein wird, die besten Ergebnisse erzielen.''',
  'هذا الحقل مطلوب': 'Dieses Feld wird benötigt'
};
