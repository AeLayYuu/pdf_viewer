class MmData {
  // List<String> mmdata = [
  //   'နိုင်ငံတော်၏ စီးပွားရေးမူဝါဒ',
  //   'ရင်းနှီးမြှုပ်နှံမှု မူဝါဒ',
  //   'မြန်မာနိုင်ငံရင်းနှီးမြှုပ်နှံမှု ဥပဒေ',
  //   'မြန်မာနိုင်ငံရင်းနှီးမြှုပ်နှံမှု နည်းဥပဒေ',
  //   'ဝန်ဆောင်မှုနှုန်းထားများ',
  //   'အမိန့်ကြော်ငြာစာအမှတ် (၄၉/၂ဝ၁၄)',
  //   'အမိန့်ကြော်ငြာစာအမှတ် (၅၀/၂ဝ၁၄)',
  //   'ကြေညာချက်အမှတ် (၅၁/၂ဝ၁၄)',
  //   'အမိန့်ကြော်ငြာစာအမှတ် (၆၂/၂ဝ၁၅)',
  //   'အမိန့်ကြော်ငြာစာအမှတ် (၂၆/၂ဝ၁၆)',
  //   'အမိန့်ကြော်ငြာစာအမှတ် (၁၀/၂ဝ၁၇)',
  //   'အမိန့်ကြော်ငြာစာအမှတ် (၁၁/၂ဝ၁၇)',
  //   'အမိန့်ကြော်ငြာစာအမှတ် (၁၃/၂ဝ၁၇)',
  //   'အမိန့်ကြော်ငြာစာအမှတ် (၁၅/၂ဝ၁၇)',
  //   'အမိန့်ကြော်ငြာစာအမှတ် (၃၅/၂ဝ၁၇)',
  //   'အမိန့်ကြော်ငြာစာအမှတ် (၈၄/၂ဝ၁၇)',
  //   'အမိန့်ကြော်ငြာစာအမှတ် (၈၅/၂ဝ၁၇)',
  //   'အမိန့်ကြော်ငြာစာအမှတ် (၈၆/၂ဝ၁၇)',
  //   'အမိန့်ကြော်ငြာစာအမှတ် (၈၇/၂ဝ၁၇)',
  //   'အမိန့်ကြော်ငြာစာအမှတ် (၅/၂ဝ၁၈)',
  //   'အမိန့်ကြော်ငြာစာအမှတ် (၇/၂ဝ၁၈)',
  //   'ပုံစံ (၁)',
  //   'ပုံစံ (၂)',
  //   'ပုံစံ (၃)',
  //   'ပုံစံ (၄-က)',
  //   'ပုံစံ (၄-ခ)',
  //   'ပုံစံ (၅-က)',
  //   'ပုံစံ (၅-ခ)',
  //   'ပုံစံ (၆)',
  //   'ပုံစံ (၇-က)',
  //   'ပုံစံ (၇-ခ)',
  //   'ပုံစံ (၈)',
  //   'ပုံစံ (၉)',
  //   'ပုံစံ (၁၀)',
  //   'ပုံစံ (၁၁)',
  //   'ပုံစံ (၁၂-က)',
  //   'ပုံစံ (၁၂-ခ)',
  //   'ပုံစံ (၁၃)',
  //   'ပုံစံ (၁၄)',
  //   'နိုင်ငံခြားသားကျွမ်းကျင်သူဝန်ထမ်းခန့်ထားမှု ရှင်းလင်းတင်ပြချက်',
  //   'မြန်မာကုမ္ပဏီများ ဥပဒေ',
  //   'မြန်မာကုမ္ပဏီများဆိုင်ရာ စည်းမျဉ်းနှင့်အမိန့်ကြော်ငြာစာများ',
  //   'ကုမ္ပဏီဒါရိုက်တာများ လမ်းညွှန်စာအုပ်',
  //   'မြန်မာအထူးစီးပွားရေးဇုန် ဥပဒေ',
  //   'မြန်မာအထူးစီးပွားရေးဇုန် နည်းဥပဒေ',
  //   'အမိန့်ကြော်ငြာစာအမှတ် (၈၁/၂ဝ၁၄)',
  //   'အမိန့်ကြော်ငြာစာအမှတ် (၈၆/၂ဝ၁၆)',
  //   'နိုင်ငံ့ဝန်ထမ်း ဥပဒေ',
  //   'နိုင်ငံ့ဝန်ထမ်း နည်းဥပဒေ',
  //   'ပြည်ထောင်စုသမ္မတမြန်မာနိုင်ငံတော် ဖွဲ့စည်းပုံအခြေခံဥပဒေ',
  //   'ပြည်ထောင်စုသမ္မတမြန်မာနိုင်ငံတော် ဖွဲ့စည်းပုံအခြေခံဥပဒေကို ပြင်ဆင်သည့်ဥပဒေ',
  //   'နှစ်နိုင်ငံအကာအကွယ်ရေး သဘောတူစာချုပ်များ',
  //   'မြန်မာနိုင်ငံရင်းနှီးမြှုပ်နှံမှုမြှင့်တင်ရေးစီမံကိန်း',
  //   'DICA Annual Report 2017-2018',
  //   'ကမ္ဘာ့ကုန်သွယ်ရေးအဖွဲ့၏ သဘောတူညီချက်များ',
  //   'မြန်မာ့ဘက်စုံဖွံ့ဖြိုးရေး မျှော်မှန်းချက်',
  //   'ပုဂ္ဂလိက ကဏ္ဍ ဖွံ့ဖြိုးရေး မူဘောင်နှင့် လုပ်ငန်းစီမံချက်',
  //   'အထူးကုမ္ပဏီ အက်ဥပဒေ',
  //   'ကြေညာချက်အမှတ် (၂/၂ဝ၁၃)',
  //   'အမိန့်ကြော်ငြာစာအမှတ် (၅၉/၂ဝ၁၄)',
  //   'အစုစပ်လုပ်ငန်း ဥပဒေမူကြမ်း',
  //   'ပို့ကုန် သွင်းကုန် ဥပဒေ',
  //   'မြန်မာနိုင်ငံ၏ ပို့ကုန် သွင်းကုန် ဆိုင်ရာ လုပ်ထုံးလုပ်နည်းများ (2015)',
  //   'တစ်နိုင်ငံလုံး ပစ်ခတ်တိုက်ခိုက်မှု ရပ်စဲရေး သဘောတူစာချုပ်',
  //   'သွင်းကုန် အစားထိုး လုပ်ငန်းများအား ရင်းနှီးမြှုပ်နှံမှု ဖိတ်ခေါ်ခြင်း',
  //   'အုပ်ချုပ်ထောက်ပံ့မှုဆိုင်ရာ ရင်းနှီးမြှုပ်နှံမှုလုပ်ငန်းများ ဖိတ်ခေါ်ခြင်း',
  //   'ညွှန်ကြားချက်အမှတ် (၁/၂ဝ၁၃)',
  //   '၂ဝ၁၇-၂ဝ၁၈ ဘဏ္ဍာနှစ် လုပ်ငန်းဆောင်ရွက်မှု အစီရင်ခံစာ',
  //   'Digitalize DICA Year 2018 Plan',
  //   'မျှော်မှန်းချက်နှင့် လုပ်ငန်းစဉ်များ (၂ဝ၁၆-၂ဝ၁၇ မှ ၂ဝ၂ဝ-၂ဝ၂၁ အထိ)',
  //   'မြန်မာနိုင်ငံ၏ ရေရှည်တည်တံ့ခိုင်မြဲပြီး ဟန်ချက်ညီသော ဖွံ့ဖြိုးတိုးတက်မှု စီမံကိန်း',
  //   'လူသားအရင်းအမြစ် ဖွံ့ဖြိုးတိုးတက်ရေး စီမံချက်',
  //   'ညွှန်ကြားချက်အမှတ် (၂/၂ဝ၁၈) စီမံကိန်းဘဏ် (Project Bank) ဆိုင်ရာ ညွှန်ကြားချက်',
  //   'COVID-19 အားလုံးတစ်ပေါင်းတည်း ကျော်လွှားခြင်း',
  //   'တင်ဒါလုပ်ငန်းစဉ်၊ နိုင်ငံတော်ပိုင်မြေ၊ သဘောတူစာချုပ်ချုပ်ဆိုခြင်းဆိုင်ရာ မူဝါဒနှင့် ညွှန်ကြားချက်များ'
  // ];
  List<String> pdflink = [
    'assets/pdf/mm/mm01.pdf',
    'assets/pdf/mm/mm02.pdf',
    'assets/pdf/mm/mm03.pdf',
    'assets/pdf/mm/mm04.pdf',
    'assets/pdf/mm/mm05.pdf',
    'assets/pdf/mm/mm06.pdf',
    'assets/pdf/mm/mm07.pdf',
    'assets/pdf/mm/mm08.pdf',
    'assets/pdf/mm/mm09.pdf',
    'assets/pdf/mm/mm10.pdf',
    'assets/pdf/mm/mm11.pdf',
    'assets/pdf/mm/mm12.pdf',
    'assets/pdf/mm/mm13.pdf',
    'assets/pdf/mm/mm14.pdf',
    'assets/pdf/mm/mm15.pdf',
    'assets/pdf/mm/mm16.pdf',
    'assets/pdf/mm/mm17.pdf',
    'assets/pdf/mm/mm18.pdf',
    'assets/pdf/mm/mm19.pdf',
    'assets/pdf/mm/mm20.pdf',
    'assets/pdf/mm/mm21.pdf',
    'assets/pdf/mm/mm22.pdf',
    'assets/pdf/mm/mm23.pdf',
    'assets/pdf/mm/mm24.pdf',
    'assets/pdf/mm/mm25.pdf',
    'assets/pdf/mm/mm26.pdf',
    'assets/pdf/mm/mm27.pdf',
    'assets/pdf/mm/mm28.pdf',
    'assets/pdf/mm/mm29.pdf',
    'assets/pdf/mm/mm30.pdf',
    'assets/pdf/mm/mm31.pdf',
    'assets/pdf/mm/mm32.pdf',
    'assets/pdf/mm/mm33.pdf',
    'assets/pdf/mm/mm34.pdf',
    'assets/pdf/mm/mm35.pdf',
    'assets/pdf/mm/mm36.pdf',
    'assets/pdf/mm/mm37.pdf',
    'assets/pdf/mm/mm38.pdf',
    'assets/pdf/mm/mm39.pdf',
    'assets/pdf/mm/mm40.pdf',
    'assets/pdf/mm/mm41.pdf',
    'assets/pdf/mm/mm42.pdf',
    'assets/pdf/mm/mm43.pdf',
    'assets/pdf/mm/mm44.pdf',
    'assets/pdf/mm/mm45.pdf',
    'assets/pdf/mm/mm46.pdf',
    'assets/pdf/mm/mm47.pdf',
    'assets/pdf/mm/mm48.pdf',
    'assets/pdf/mm/mm49.pdf',
    'assets/pdf/mm/mm50.pdf',
    'assets/pdf/mm/mm51.pdf',
    'assets/pdf/mm/mm52.pdf',
    'assets/pdf/mm/mm53.pdf',
    'assets/pdf/mm/mm54.pdf',
    'assets/pdf/mm/mm55.pdf',
    'assets/pdf/mm/mm56.pdf',
    'assets/pdf/mm/mm57.pdf',
    'assets/pdf/mm/mm58.pdf',
    'assets/pdf/mm/mm59.pdf',
    'assets/pdf/mm/mm60.pdf',
    'assets/pdf/mm/mm61.pdf',
    'assets/pdf/mm/mm62.pdf',
    'assets/pdf/mm/mm63.pdf',
    'assets/pdf/mm/mm64.pdf',
    'assets/pdf/mm/mm65.pdf',
    'assets/pdf/mm/mm66.pdf',
    'assets/pdf/mm/mm67.pdf',
    'assets/pdf/mm/mm68.pdf',
    'assets/pdf/mm/mm69.pdf',
    'assets/pdf/mm/mm70.pdf',
    'assets/pdf/mm/mm71.pdf',
    'assets/pdf/mm/mm72.pdf',
    'assets/pdf/mm/mm73.pdf',
    'assets/pdf/mm/mm74.pdf',
  ];
}
