import 'package:flutter/material.dart';
import 'package:sizedbox_extention/sizedbox_extention.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NBA ',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [Header(), Body(), Footter()],
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 56),
      child: SafeArea(
        bottom: false,
        child: Scrollbar(
          child: ListView(
            children: [
              250.height,
              for (var team in teamsData)
                Container(
                  color: Colors.white,
                  child: ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Image.asset(team["logo"]),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: const RoundedRectangleBorder()),
                            onPressed: () {},
                            child: const Text(
                              "Follow",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                      ),
                      tileColor: Colors.white,
                      title: Text(team["Name"])),
                ),
              80.height
            ],
          ),
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> teamsData = [
  {
    "Name": "  Atlanta Hawks",
    "logo": "assets/logos/58419be4a6515b1e0ad75a58.png"
  },
  {"Name": "  Boston Celtics", "logo": "assets/logos/bosten.png"},
  {"Name": "  Brooklyn Nets", "logo": "assets/logos/broke.png"},
  {"Name": "  Charlotte Hornets", "logo": "assets/logos/ch.png"},
  {"Name": "  Chicago Bulls", "logo": "assets/logos/cb.png"},
  {"Name": "  Cleveland Cavaliers", "logo": "assets/logos/cc.png"},
  {"Name": "  Dallas Mavericks", "logo": "assets/logos/dm.png"},
  {"Name": "  Denver Nuggets", "logo": "assets/logos/dn.png"},
  {"Name": "  Detroit Pistons", "logo": "assets/logos/dp.png"},
  {"Name": "  Golden State Warriors", "logo": "assets/logos/gw.png"},
  {"Name": "  Houston Rockets", "logo": "assets/logos/hr.png"},
  {"Name": "  Indiana Pacers", "logo": "assets/logos/pa.png"},
  {"Name": "  Memphis Grizzlies", "logo": "assets/logos/mg.png"},
  {"Name": "  Los Angeles Clippers", "logo": "assets/logos/cp.png"},
  {"Name": " Los Angeles Lakers", "logo": "assets/logos/la.png"},
  {"Name": "  Miami Heat", "logo": "assets/logos/mh.png"},
  {"Name": "  Milwaukee Bucks", "logo": "assets/logos/mb.png"},
  {"Name": "  Minnesota Timberwolves", "logo": "assets/logos/mt.png"},
  {"Name": "  New Orleans Pelicans", "logo": "assets/logos/np.png"},
  {"Name": "  New York Knicks", "logo": "assets/logos/nk.png"},
  {"Name": "  Oklahoma City Thunder", "logo": "assets/logos/okc.png"},
  {"Name": "  Orlando Magic", "logo": "assets/logos/old.png"},
  {"Name": "  Philadelphia 76ers", "logo": "assets/logos/p76.png"},
  {"Name": "  Phoenix Suns", "logo": "assets/logos/ps.png"},
  {"Name": "  Portland Trail Blazers", "logo": "assets/logos/ptb.png"},
  {"Name": "  Sacramento Kings", "logo": "assets/logos/sk.png"},
  {"Name": "  San Antonio Spurs", "logo": "assets/logos/spu.png"},
  {"Name": "  Toronto Raptors", "logo": "assets/logos/tr.png"},
  {"Name": "  Utah Jazz", "logo": "assets/logos/ut.png"},
  {"Name": "  Washington Wizards", "logo": "assets/logos/ww.png"}
];

class Footter extends StatelessWidget {
  const Footter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Container(
        color: Colors.white54,
        child: Container(
            margin: const EdgeInsets.only(left: 25, right: 25, top: 25),
            width: double.infinity,
            child: SafeArea(
              top: false,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: const RoundedRectangleBorder()),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Next",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            )),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      color: const Color.fromRGBO(211, 211, 211, 1).withOpacity(0.2),
      child: SafeArea(
        bottom: false,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              alignment: Alignment.topRight,
              height: 200,
              width: double.infinity,
              child: SizedBox(
                height: 140,
                width: 290,
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Opacity(
                    opacity: 0.1,
                    child: Text(
                      "Teams".toUpperCase(),
                      style: const TextStyle(),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 56,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              color: Colors.transparent,
              child: Row(
                children: const [
                  SizedBox(
                    height: 56,
                    child: FittedBox(
                        fit: BoxFit.fitHeight, child: Icon(Icons.arrow_back)),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 350,
              color: Colors.transparent,
              padding: const EdgeInsets.only(bottom: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset(
                      "assets/logos/pngwing.com (3).png",
                      scale: 35,
                    ),
                  ),
                  15.height,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        Text(
                          "Follow your favorite team".toUpperCase(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        16.height,
                        const Text(
                          "Get news, game updates, hightlights and more info on your favorite teams",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
