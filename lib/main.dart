import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          sectionLogo,
          sectionTitle,
          sectionIcons,
        ]
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget sectionTitle = Container(
    padding: const EdgeInsets.all(8),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: const Text(
                  'Hello World',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ),
              const Text('Hi people !', style: TextStyle(color: Colors.red),)
            ]
          )
        ),
        FavoriteWidget()
      ]
    ),
  );

  Widget sectionIcons = Container(
    padding: const EdgeInsets.all(8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Column(
            children: [
              TelWidget()
            ]
          ),
        ),
        Expanded(
          child: Column(
              children: [
                MapWidget()
              ]
          ),
        ),
        Expanded(
          child: Column(
              children: [
                Container(
                  child: const Icon(
                    Icons.share,
                    color: Colors.blue,
                  ),
                )
              ]
          ),
        )
      ],
    )
  );

  Widget sectionLogo = Container(
    child: const Expanded(
      child: AspectRatio(
        aspectRatio: 16/9,
        child: Image(
          image: NetworkImage('http://2.bp.blogspot.com/-HJ_cbRm5bdY/TwSIJsO_vOI/AAAAAAAAAd8/xPBkjIfZCgQ/s1600/BURGER+KING+LOGO.JPG'),
          fit: BoxFit.contain,
          height: 100,
        ),
      ),
    ),
  );

  Widget sectionContent = Container(
    padding: const EdgeInsets.all(8),
    child: Column(
      children: const [
        Text(
            "Le Lorem Ipsum est simplement du faux texte employ?? dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les ann??es 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour r??aliser un livre sp??cimen de polices de texte. Il n'a pas fait que survivre cinq si??cles, mais s'est aussi adapt?? ?? la bureautique informatique, sans que son contenu n'en soit modifi??. Il a ??t?? popularis?? dans les ann??es 1960 gr??ce ?? la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus r??cemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker. Contrairement ?? une opinion r??pandue, le Lorem Ipsum n'est pas simplement du texte al??atoire. Il trouve ses racines dans une oeuvre de la litt??rature latine classique datant de 45 av. J.-C., le rendant vieux de 2000 ans. Un professeur du Hampden-Sydney College, en Virginie, s'est int??ress?? ?? un des mots latins les plus obscurs, consectetur, extrait d'un passage du Lorem Ipsum, et en ??tudiant tous les usages de ce mot dans la litt??rature classique, d??couvrit la source incontestable du Lorem Ipsum. Il provient en fait des sections 1.10.32 et 1.10.33 du \"De Finibus Bonorum et Malorum\" (Des Supr??mes Biens et des Supr??mes Maux) de Cic??ron. Cet ouvrage, tr??s populaire pendant la Renaissance, est un trait?? sur la th??orie de l'??thique. Les premi??res lignes du Lorem Ipsum, \"Lorem ipsum dolor sit amet...\", proviennent de la section 1.10.32.L'extrait standard de Lorem Ipsum utilis?? depuis le XVI?? si??cle est reproduit ci-dessous pour les curieux. Les sections 1.10.32 et 1.10.33 du \"De Finibus Bonorum et Malorum\" de Cic??ron sont aussi reproduites dans leur version originale, accompagn??e de la traduction anglaise de H. Rackham (1914). On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et emp??che de se concentrer sur la mise en page elle-m??me. L'avantage du Lorem Ipsum sur un texte g??n??rique comme 'Du texte. Du texte. Du texte.' est qu'il poss??de une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du fran??ais standard. De nombreuses suites logicielles de mise en page ou ??diteurs de sites Web ont fait du Lorem Ipsum leur faux texte par d??faut, et une recherche pour 'Lorem Ipsum' vous conduira vers de nombreux sites qui n'en sont encore qu'?? leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d'y rajouter de petits clins d'oeil, voire des phrases embarassantes). Plusieurs variations de Lorem Ipsum peuvent ??tre trouv??es ici ou l??, mais la majeure partie d'entre elles a ??t?? alt??r??e par l'addition d'humour ou de mots al??atoires qui ne ressemblent pas une seconde ?? du texte standard. Si vous voulez utiliser un passage du Lorem Ipsum, vous devez ??tre s??r qu'il n'y a rien d'embarrassant cach?? dans le texte. Tous les g??n??rateurs de Lorem Ipsum sur Internet tendent ?? reproduire le m??me extrait sans fin, ce qui fait de lipsum.com le seul vrai g??n??rateur de Lorem Ipsum. Iil utilise un dictionnaire de plus de 200 mots latins, en combinaison de plusieurs structures de phrases, pour g??n??rer un Lorem Ipsum irr??prochable. Le Lorem Ipsum ainsi obtenu ne contient aucune r??p??tition, ni ne contient des mots farfelus, ou des touches d'humour.",
            style: TextStyle(
                fontSize: 14
            ))
      ]
    )
  );

}

class FavoriteWidget extends StatefulWidget {

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  int _favoriteCount = 41;
  bool _isFavorite = true;

  void _toggleFavorite() {
    setState(() {
      if(_isFavorite) {
        _favoriteCount -= 1;
        _isFavorite = false;
      } else {
        _favoriteCount += 1;
        _isFavorite = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          child: IconButton(
            alignment: Alignment.center,
            icon: (_isFavorite ? const Icon(Icons.star) : const Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          )
        ),
        SizedBox(
          width: 18,
          child: Container(
            child: Text('$_favoriteCount'),
          )
        )
      ],
    );
  }
}


class TelWidget extends StatefulWidget {

  @override
  State<TelWidget> createState() => _TelWidgetState();
}

class _TelWidgetState extends State<TelWidget> {

  Uri phone = Uri.parse('tel:0');

  void launchTel() async {
    if (await launchUrl(phone)) {
      //dialer opened
    }else{
      //dailer is not opened
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          child: IconButton(
            alignment: Alignment.center,
            icon: const Icon(Icons.phone),
            color: Colors.blue[500],
            onPressed: launchTel,
          )
        )
      ]
    );
  }
}

class MapWidget extends StatefulWidget {

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {

  Location location = new Location();
  Uri map = Uri.parse('geo:0,0?q=0,0');

  void launchMap() async {
    if (await launchUrl(map)) {
      //map opened
    }else{
      //map is not opened
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          child: IconButton(
            alignment: Alignment.center,
            icon: const Icon(Icons.map),
            color: Colors.green[500],
            onPressed: launchMap,
          )
        )
      ]
    );
  }
}