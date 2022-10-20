class Game {
  String name;
  String genre;
  String year;
  String platform;
  String alldescription;

  String developer;
  String mode;

  List<String> image;
  Game({
    required this.mode, //single player , pvp etc ....
    required this.developer,
    required this.platform, //windows etc ...
    required this.name,
    required this.genre, //action , strategic etc....
    required this.year,
    required this.alldescription,
    required this.image,
  });
}

List<Game> gameList = [
  Game(
      mode: '	Single player, PvP',
      platform: 'Android, iOS, Microsoft Windows,',
      name: 'Axie Infinity',
      genre: 'Online game, Strategy Video Game, P2E ',
      year: '2018',
      alldescription:
          ' تو این بازی باید اول  NFTچند تا هیولا گوگولی که بهشون Axie میگن رو بخرید و آنها را به مبارزه بفرستید. در طول بازی شما توکن هایی دریافت می کنید که می توانید از آنها برای خرید آیتم استفاده کنید یا آنها را به پول تبدیل کنید. هر روز  به تعداد بازیکنان این بازی معروف اضافه می شود و همین باعث افزایش قیمت آیتم های شما می شود. ',
      image: [
        'images/axi1.png',
        'images/axi2.png',
        'images/axi3.png',
        'images/axi4.png',
        'images/axi5.png',
      ],
      developer: 'Sky Mavis'),
  Game(
      mode: '	Single player, PvP',
      platform: 'Android, WebBase,',
      name: 'CryptoBlades ',
      genre: 'Online game, RPG, P2E ',
      year: '2022',
      alldescription:
          'یک بازی رقابتی در سبک RPG که در آن می توانید  درآمد  کسب کنید. در این بازی با شکست دشمنان، با دوستانتان  حمله های دسته جمعی انجام دهید. توکن های توانایی (skill) بدست می آورید. همچنین میتوانید با قابلیت (Crafting) آیتم های جدید خلق کنید تا دشمنان قوی تری را شکست دهید یا آنها را در بازار داخلی بازی به فروش برسانید. برای شروع بازی نیاز دارید تا یک شخصیت خریداری کنید. اگه این سوال براتون پیش اومده که آیا کریپتو بلید جای خوبی برای سرمایه گذاری است؟ پاسخ مثبت است. شما میتوانید با پشتکار و همینطور لذت از بازی درآمد کسب کنید و آیتم ها و اسکیل هاتون رو بفروش برسانید.',
      image: [
        'images/cr1.png',
        'images/cr2.png',
        'images/cr3.png',
        'images/cr4.png',
        'images/cr5.png',
      ],
      developer: ' Riveted Games'),
  Game(
      mode: 'PvP, Farm	',
      platform: 'Android, IOS, Windows,',
      name: 'Plants vs Undead ',
      genre: 'Tower Defense, P2E,Garden Warfare games ',
      year: '2021',
      alldescription:
          'یک بازی در سبک  دفاع از قلعه  بر پایه بلاکچین، هدف این بازی دفاع از گیاهان و مادر درختان در مقابل زامبی ها است. بازی بر پایه دانه گیاهان می چرخد که میتوانید  با توکن های  اختصاصی درون بازی از فروشگاه داخلی خرید کنید. داخل بازی دو حالت وجود دارد که میتوانید از آن ها کلی پول در بیاورید یکی حالت بقا و دیگری حالت فارمینگ. ',
      image: [
        'images/un1.png',
        'images/un2.png',
        'images/un3.png',
        'images/un4.png',
        'images/un5.png',
      ],
      developer: 'PUV'),
  Game(
      mode: 'single player	',
      platform: 'WebBase',
      name: ' Farmers world ',
      genre: 'Online game, Strategy Video Game, P2E ',
      year: '2021',
      alldescription:
          'این روزا بازی های شبیه ساز کشاورزی خیلی معروف شدن و بازی دنیای کشاورزان یه بازی تو همون سبک، ولی شما می توانید ازش درآمد کسب کنید، بازیکنان می توانند ابزار های مختلفی رو در اختیار بگیرند  تا به کشاورزیشون رونق بدن و محصولات بیشتری برداشت کنن. همینطور بازیکنان می تونن به کشاورز های دیگه که منتظر برداشت هستند حمله کنند. برای شروع بازی حتماً نیاز به یک ابزار دارید و باید اون رو از مارکت بازی تهیه کنید.',
      image: [
        'images/fa1.png',
        'images/fa2.png',
        'images/fa3.png',
        'images/fa4.png',
        'images/fa5.png',
      ],
      developer: 'G.JIT JAPAN'),
  Game(
      mode: 'PVP ',
      platform: 'Android',
      name: ' Forest Knight ',
      genre: 'Online game, Strategy Video Game, P2E, F2P',
      year: '2019',
      alldescription:
          ' تو این بازی شما قرار یه شوالیه رویایی در زره درخشان باشید که با شیاطین و بدی ها مبارزه میکنه، هر قهرمان در این بازی قابلیت های منحصر بفرد و ضعف های خاص خودش را دارد. این بازی سال 2019 راه اندازی شد و هنوز هم به لطف بروز رسانی ها و ارتقا های مختلف با قدرت به راه خود ادامه می دهد. بازی کنان روزانه به خاطر ورود به بازی پاداش میگیرند و همینطور در حالی که از گیم پلی روان بازی لذت میبرند NFTهای متفاوت کسب میکنند که میتوانند آنها را در پلتفرم EnjinX بفروش برسانند.',
      image: [
        'images/for1.png',
        'images/for2.png',
        'images/for3.png',
        'images/for4.png',
        'images/for5.png',
      ],
      developer: 'Chrono Games'),
  Game(
      mode: 'PVP ',
      platform: 'Android',
      name: ' Elementos ',
      genre: ' turn-based RPG, P2E ',
      year: '2021',
      alldescription:
          'یک بازی RPG در دنیای بلاکچین، که در آن شما سبک مبارزه ای نوبتی را تجربه خواهید کرد. شما می توانید به جنگ بازیکنان دیگر بروید و یا با هم همکاری کنید تا توکن دریافت کنید، جایزه ببرید و حیوان خونگی خودتان را پرورش بدید. برای شروع بازی بازیکنان باید یک تخم مرغ کریستالی تهیه کنند .',
      image: [
        'images/el1.png',
        'images/el2.png',
        'images/el3.png',
        'images/el4.png',
        'images/el5.png',
      ],
      developer: 'elementos.io'),
  Game(
      mode: 'VR ',
      platform: 'Android, Windows',
      name: ' Dvision Network ',
      genre: 'blockchain-based NFT metaverse platform,',
      year: '2021',
      alldescription:
          'یک بازی واقعیت مجازی بر پایه بلاکچین است. که در آن بازار های NFT به صورت واقعیت مجازی وجود دارد. شما در این بازی میتونید بدون این که نیاز به کد نویسی داشته باشید NFTهای خود را بسازید و اون ها رو بفروش برسونید. این بازی یکی از جدید ترین بازی هایی است که در زمینه متاورس فعالیت میکند. علاوه بر معاملات NFT شما می توانید با افراد دیگر در شهر و جاهای دیگر ملاقات کنید و همینطور با اشیا، مجازی تعامل داشته باشد.',
      image: [
        'images/dev1.png',
        'images/dev2.png',
        'images/dev3.png',
        'images/dev4.png',
        'images/dev5.png',
      ],
      developer: 'Division'),
  Game(
      mode: 'PvP',
      platform: 'Android, Steam',
      name: ' Metalands ',
      genre: 'blockchain-based NFT First person shooter,',
      year: 'Coming soon',
      alldescription:
          'یه بازی جهان باز بر پایه بلاکچین، چیزی که این بازی رو ویژه میکنه اینه که این بازی دو ویژگی رایگان بودن و درآمد زایی رو باهم داره و بازی کنان میتونن توکن های CIFI رو در جریان بازی کسب کنند. تمام دارایی های این بازی NFT هستن که بازی کنان میتونن اونا رو آزادانه بفروشند و معامله کنند. سلاح ها و سنگر ها قابلیت شخصی سازی را دارند و بازی کنان  میتونن روی  تجربه بازیشون تاثیر گذار باشند.',
      image: [
        'images/m2.png',
        'images/m1.png',
        'images/m3.png',
        'images/m4.png',
        'images/m5.png',
      ],
      developer: 'Arvrse Studio'),
  Game(
      mode: 'Multiplayer',
      developer: 'Animoca Brands',
      platform: 'Mobile , PC',
      name: 'SandBox',
      genre: 'ONLINE GAME P2E',
      year: '2021',
      alldescription:
          'سند باکس یک بازی بر پایه اتریوم و جهان باز است و بازیکنان با گشت و گزار در آن اتفاقات مختلفی را تجربه می کنند. در این جهان مجازی شما می توانید بخرید، بفروشید و درآمد کسب کنید، حتی برنامه های جانبی نیز با این بازی منتشر شده که می توان با آن مدل ها، توکن هایی که خودتان طراحی کرده اید را به اشتراک بگذارید و بفروشید. در این بازی زمین ها نقش مهمی را ایفا می کنند، وقتی که یک زمین میخرید و صاحب آن می شوید می توانید به سلیقه خودتان آن را بسازید و در آن آیتم ها و بازی های مخصوص خودتان را بکار ببرید.',
      image: [
        'images/sandBox01.jpg',
        'images/sandBox02.jpg',
        'images/sandBox03.jpg',
        'images/sandBox04.jpg',
        'images/sandBox05.jpg',
      ])
];
