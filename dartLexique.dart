------------------- SYNTHESE ---------------------------------------------------------------------------
SafeArea()		->			Evite la barre d état
SizedBox() 		->      Permet dajouter des espaces
Flexible()    ->      Permet dadapter un widget au changement de taille de ses parents
FittedBox()   ->      Adapt un widget CHILD a la taille de son parent
---------------------------------------- PERMISSION ANDROID   ----------------------------------------------------------------------

A placer dans le fichier Android Manifest. xml
	<uses-feature android:name="android.hardware.bluetooth_le" android:required="true"/>
   <uses-permission android:name="android.permission.BLUETOOTH"/>
   <uses-permission android:name="android.permission.BLUETOOTH_ADMIN"/>
   <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>

   Voir : 'https://android-er.blogspot.com/2016/06/bluetooth-le-gatt-example-step-by-step.html'

---------------------------------------- A U T R E ----------------------------------------------------------------------

(context)																		->			'Keeps track of where in the apps we actually are'
Si "Gradle task assembleDebug failed with exit code 1"			->			'Dans terminal RUN : flutter clean'
Si probleme de version SDK 												-> 		'Dans android/app/build.gradle' changer 'minSdkVersion' par 19

---------------------------------------- A U T R E   M E T H O D E----------------------------------------------------------------------

List.filled(nbitem, var) 													->			'Remplie une liste avec une valeur prédéfinie'
int bpm = int.parse(text); 												-> 		'Convert to INT'
color:(isPressed) ? Color(0xff007397) : Color(0xff9A9A9A))		->			'Attribue couleur en fontion dun booléen'

---------------------------------------- S Y N T H A X E ------------------------------------------------------------------

MAPPING			->			Map student = {'name' : 'Margaux' , 'age' : 27};
								print(student['name']);
FONT				->			fontWeight: FontWeight.bold,
								letterSpacin: 2.0,
WIDGET			->			elevation : 0.0,

---------------------------------------- E N  T E T E ----------------------------------------------------------------------

librairies google 			->			import 'package:flutter/material.dart';
librairies perso				->			import 'package:pampam_add_tiles/pages/home.dart'; (meme si le chemin d acces indique lib, On ne le met pas)
debugShowCheckedModeBanner: false, //Pour retirer la banière de debug

----------------------------------------L I S T S-----------------------------------(tuto#17)---------------------------------------

List names = ['chun-li' , 'Yoshi' , 'Mario']; //création d'une liste
names.add('Luigi'); //On ajoute Luigi à la liste names
name.remove('Yoshi');//On enlève Yoshi de la liste names
print(names); //On affiche la liste
'______________________'
List<String> names = ['chun-li' , 'Yoshi' , 'Mario']; //On précise que cette liste ne contient que des Strings

----------------------------------------C L A S S E S  &  O B J E C T---------------(tuto#18)----------------------------------------

void main(){
	User user_one = User('Mario' , 25); //Crée une instance de la classe USER
	print(user_one.username);//Affiche le username de userone
	user_one.login(); 

	SuperUser user_three = SuperUser('Margaux' , 27);
	print(userThree.username);
	user_three.publish(); //publish????
}

{
	String username;
	int age; 

	User(String username, int age);
	this.username = username;
	this.age = age;

	void login(){
		print('user logged in');
	}
}
class SuperUser extends User{
	SuperUser(String username, int age) : super(username, age),

	void publish(){
		print('published update');
	}
}
----------------------------------------C U S T O M   C L A S S E S----------------------------------------------------------'custom class'

file -> New -> dart file;
import 'quote.dart';
'______________________'
class quote{
	String text;
	String author;
	Quote({this.text, this.author});
}

--------------------------------- B O U T O N S-------------------------------------------------------------------------'boutons buttons'

body: Center(
'1______________________'
	child: Icon(
		Icons.airport_shuttle,
		color: Colors.lightBlue,
		size: 50.0,
		),
	)
'2______________________'
	child: RaisedButton(
		splashColor: Colors.white,
		onPressed: (){},
		child: Text('click me'),
		color : Colors.lightBlue,
		),
'3______________________'
	child: FlatButton(
		onPressed:() {
			print('you clicked me'),
		},
		child: Text('click me'),
		color: Colors.lightBlue,
	),
'4______________________'
	child: RaisedButton.icon(
		onPressed: () {},
		icon: Icon(
			Icons.mail
			),
		label: Text('mail me'),
		color: Colors.amber,
		),
'5______________________'
	child: IconButton(
		onPressed: () {
			print('you clicked me');
			},
		icon: Icon(Icons.alternate_email),
		color: Colors.amber
		),
	*	*	*	*	*	*	*	*	*	*	*	*	
	),//Center
'______________________'
floatingAction: FloatingActionButton(
	onPressed: (){},
	backgroundColor: Colors.red[600];
)

'bouton_dégradé________________________________'

RaisedButton(
          onPressed: () {},
          textColor: Colors.white,
          padding: const EdgeInsets.all(0.0),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            padding: const EdgeInsets.all(10.0),
            child: const Text(
              'Gradient Button',
              style: TextStyle(fontSize: 20)
            ),
          ),
        ),

-------------------C O N T A I N E R S & P A D D I N G---------------------------------------------------------------------------

'1_______'
body: Container(
	padding: EdgeInsets	.all(20.0),
								.symetrique(horizontale: 30.0, vertical: 10.0),
								.fromLTRB(10.0, 20.0, 30.0, 40.0),
	margin: EdgeInserts	.all(20.0),
								.symetrique(horizontale: 30.0, vertical: 10.0),
								.fromLTRB(10.0, 20.0, 30.0, 40.0),

	color: Colors.grey[400],
	child: Text('hello'),		//La couleur ne s'applique qu'à la taille du child
	),
'2_______'
body: Padding(
	padding: EdgeInserts.all(30.0),
	child: Text('Hello'),
	),

-----------------L I N E S & R O W S---------------------------------------------------------------------------------------

body: Row(
	mainAxisAlignment : MainAxisAlignment	.center,
														.spaceBetween,
														.spaceEvenly,
														.end,
														.spaceAround,

	crossAxisAlignment: CrossAxisAlignment .stretch,
														.center,
														.start,
														.end,
	children: <Widget>[		
1.		Text('hello, world'),	
2.		FlatButton(
			onPressed: (){},
			color: Colors.amber,
			child: Text('Click')
		),	
3.		Container(
			color: Colors.cyan,
			padding: EdgeInsets.all(30.0),
			child: Text('Inside container'),
		),
	],
),

-----------------C   O   L   U   M   N   S---------------------------------------------------------------------------------------

body: Column(
	//Les main axis et cross axis sont inversé selon que ce soit des ligne ou des colonnes
	mainAxisAlignment : MainAxisAlignment	.center,
														.spaceBetween,
														.spaceEvenly,
														.end,
														.spaceAround,

	crossAxisAlignment: CrossAxisAlignment .stretch,
														.center,
														.start,
														.end,
	children: <Widget>[
		Container(
			padding: EdgeInsets.all(20.0),
			color: Colors.cyan,
			child: Text('one'),
			)
		Container(
			padding: EdgeInsets.all(30.0),
			color: Colors.red,
			child: Text('two'),
			)
		Container(
			padding: EdgeInsets.all(40.0),
			color: Colors.green,
			child: Text('three'),
			)
		),],),

-----------------------F L U T T E R  O U T L I N E  &  S H O R T C U T S-------------------------------------------------------------

//Pour organiser les Container, leurs placement etc, on peut sélectionner le mot clef du Widget, cliquer sur l'ampoule et choisir en fonction des options

------------------------E X P E N D E D  W I D G E T S---------------------------------------------------------------------------------

body: Row(
	children: <Widget>[
		Container(
			padding: EdgeInsets.all(30.0),
			color: Colors.cyan,
			child: Text('1'),
		),
		Container(
			padding: EdgeInsets.all(30.0),
			color: Colors.red,
			child: Text('2'),
		),
		Container(
			padding: EdgeInsets.all(30.0),
			color: Colors.green,
			child: Text('3'),
		),
	],
),
// Si on souhaite que le container 1 prennent toute la place restante, on sélectionne 'Container' (1), puis on clic sur l'ampoule, 
//et on choisie wrap que l'on inscrit à la place de 'Widget'.
//On peut également ajouter la propriété flex qui définira la place que prend chaque container (plus le chiffre est grand plus l'espace occupé l'est également)
//_____RESULTAT_______ :
body: Row(
	children: <Widget>[
		Expanded(
			flex: 6,
			child : Container(
				padding: EdgeInsets.all(30.0),
				color: Colors.cyan,
				child: Text('1'),
			),
		),
		Expanded(
			flex: 3,
			child : Container(
				padding: EdgeInsets.all(30.0),
				color: Colors.cyan,
				child: Text('2'),
			),
		),
		Expanded(
			flex: 1,
			child : Container(
				padding: EdgeInsets.all(30.0),
				color: Colors.cyan,
				child: Text('3'),
			),
		),
	],
),

------------------------------------F O N C T I O N   W I D G E T----------(tuto#19)------------------------------------fonction widget

Widget quoteTemplate(quote){
	return Card(
		margin: ...
		children <Widget>[
			Text(
				quote.text,
				...
				...
			),
			SizedBox(height: 6.0),
			Text(
				quote.text,
				...
				...
			),
		],
	),
}

----------------------------------------E X T R A C T   W I D G E T-------(tuto#20)-----------------------------------------tuto 20

//'Sur le widget qu on veut extraire (exemple: un widget qui met en forme des citations en colonnes :'
flutter Outline -> clic droit sur "card (le widget qu'on veut extraire avec toutes ses modifications" -> Extract Widget
//'On fait passer largument dont on a besoin dans les paramêtres nommés du widget extrait :'
Widget quoteTemplate(quote) {
    return QuoteCard(quote : quote);
  }
// 'On supprime les elements inutiles dans la classe qui vient de se créer automatiquement: '
 const QuoteCard({
    Key key,
  }) : super(key: key);
// 'Puis dans cette même classe, on créer une variable FINAL de lobjet : "final Quote quote" puis on instanci cette même classe en attribuant à "quote" le paramêtre de la fonction'
	final Quote quote;
  	QuoteCard({this.quote}); 'ATTENTION A NE PAS OUBLIER LES {} !!!'
// 'Enfin on peut se débarasser de la fonction template & faire appel au widget extrait directement dans la partie children : quote.map(...)'
   children: quote.map((quote) => quoteTemplate(quote)).toList(),
//Enfin on peut placer tout ce widget dans un nouveau fichier .dart pour pouvoir l'utiliser dans d'autre projet

----------------------------------------R E M O V E-------------(tuto#21)---------------------------------------remove, icon, delete, quote

		//EXERCICE QU'ON A PAS REUSSI A TERMINER !!!
		//EXERCICE QU'ON A PAS REUSSI A TERMINER !!!
'Voir Flutter Tutorial for Beginners #22 - Starting the World Time App  // FICHIER UTILISE DANS BROUILLON/QUOTE'
		//EXERCICE QU'ON A PAS REUSSI A TERMINER !!!
		//EXERCICE QU'ON A PAS REUSSI A TERMINER !!!

------------------------------------MAPPING & ROUTING------------(tuto#23)------------------------------------------------fonction widget
Navigator.popAndPushNamed(context, '/location');
Navigator.pushNamed(context, '/location');
Navigator.of(context).pop();

MAPPING			->			Map student = {'name' : 'Margaux' , 'age' : 27};
								print(student['name']);

ROUTTING		->	'MAIN.dart'		initialRoute: '/',
										routes : {
											'/': (context) => Loading(),
											...
											...
										}
				-> 'ANY.dart'			FlatButton.icon(
											onPressed:(){
												Navigator.pushNamed(context, '/location');
											},
											icon : Icon(Icons.edit_location),
											label : Text('Edit Location'),
										)		
				//NE PAS METTRE HOME : SI ON UTILISE INITIALROUTE
        

------------------------------------WIDGET LIFECYCLE--------(tuto#24)------------------------------------------------lifecycle, initstate

'DANS LES STATEFULL WIDGET____'
initState()				->		Called  when widget first created (only once & On top of stfu obj)
Build()					->		Build the widget tree (trigger eachtime we call setState())
Dispose()				->		Triggered when the widget/stateObject completely removed
setState((){...})		->		Cause le Widget to re-build

----------------------------------------SLIVER----------------------------------------------------slivergrid, grid, sliverlist

body: CustomScrollView(
            slivers: <Widget>[
              SliverGrid(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200.0,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 8.0,
                ),
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return RaisedButton(
                    onPressed: () {},
                    //alignment: Alignment.center,
                    child: Text('Grid Item: $index'),
                  );
                }, childCount: 10),
              ),
            ],
          ),

------------------------------------ON LONGED PRESS----------------------------------------------------------- 

	onLongPress:(){
		print("Longpress");
	}

------------------------------------ASYNC (TUTO #25)----------------------------------------------------------- 

void getData() async {
    //simulate network request for a username
    String name = await Future.delayed(Duration(seconds: 3), () {
      return 'yoshi';
    });
    //Simulate network request to get bio of the username
    String bio = await Future.delayed(
      Duration(seconds: 2),
      () {
        return "vegan, musician, egg collector";
      },
    );
    print('$name - $bio');
  }
  //AWAIT permet d'attendre un certain temps avant d'éffectuer sa tâche
  //ASYNC permet de continuer l'éxecution du code principale sans la bloquer

  ___________________________________________________________________________

 ------------------------------------TIMER----------------------------------------------------------- 

Timer(Duration(seconds: 3), () {			
  print("Yeah, this line is printed after 3 second");	
});
print('This line is printed first');		//This print is executed first
_________________________________
Timer.periodic(Duration(seconds: 5), (timer) {		//On répète l'action toutes les 5 secondes
  print(DateTime.now());
});
timer.cancel()	//Stop le timer
_________________________________
Timer.run(() {		//Timer.run() permet d'éxecuter l'instruction dès que c'est possible
  print("Yeah, this must be printed immediately.");
});


------------------------------------FLUTTER PACKAGES (TUTO #26)----------------------------------------------------------- 

'1____aller sur pub.dev/packages'
'2____ajouter dans le pubspec.yaml la dépendance du package'
'3____Clicker sur GET DEPENDENCIES'
'4____Importer la dependance'

//REQUEST HTTP + DECODAGE JSON (On doit importer le paquet 'package:http/http.dart' et le paquet 'dart:convert')
void getData() async {
    Response response = await get('https://jsonplaceholder.typicode.com/todos/1');
    Map data = jsonDecode(response.body);
    print(data);
    print(data['userId']);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

 ------------------------------------WORLD TIME API (TUTO #27)----------------------------------------------------------- 

void getTime() async {
    Response response =
        await get('http://worldtimeapi.org/api/timezone/Europe/London');
    Map data = jsonDecode(response.body);

    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);
    //print(offset);
    //print(datetime);

    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);
  } 

------------------------------------WORLDTIME CUSTOM CLASS (TUTO#28)----------------------------------------------------------- 

'______________LOADING.DART______________'
class _LoadingState extends State<Loading> {
  String time = 'Loading';

  void setupWorldTime() async {
    WorldTime instance = WorldTime(
        location: 'London', flag: 'germany.png', url: 'Europe/Dublin');
    await instance.getTime();
    print(instance.time);
    setState(() {
      time = instance.time;
    });
  }
'______________WORLD_TIME.DART______________'
import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location; //Location name for the UI
  String time; //The time in that location
  String flag; //url to an asset flag icon
  String url; //Location url for API endpoints

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    Response response = await get('http://worldtimeapi.org/api/timezone/$url');
    Map data = jsonDecode(response.body);

    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);
    //print(offset);
    //print(datetime);

    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));

    time = now.toString();
  }
}

------------------------------------ERROR HANDLING (TUTO#29)----------------------------------------------------------- 

try{
	...;
}
catch(e){
	print('error : $e');
}

---------------------------------------------GRID VIEW---------------------------------------------------------------------font

		...
		body: Container(
			child: _pictureGridView(),
		),
	);
}

Widget _pictureGridView(){
	return GridView.builder(
		gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
			crossAxisCount: 2,
			mainAxisSpacing: 5,
			crossAxisSpacing: 5,
			);
		itemCount : 10,
		itemBuilder: (BuildContext _context, int _index){
			return Container(
				decoration: BoxDecoration(
					image: DecorationImage(
						image:NetworkImage("https://i.pravatar.cc/150?img=$_index"),
					)
				)
			)
		}
	)
}

---------------------------------------------TextField---------------------------------------------------------------------textField

TextField(
autocorrect:false,
autofocus: false,
cursorColor: Colors.pinkAccent,
decoration: InputDecoration(icon: Icon(Icons.access_alarms)),
enable : true/false,
maxLength: 5,
obscureText: true/false,
textInputType	.text
					.number
					.emailAdress
					.datetime
					.multiline
style: TextStyle(...)
textInputAction : TextInputAction.next    //Change le bouton Done en bouton Next
onChanged: (text){print(text);}
onSubmitted: (text){print(text);}

	)

---------------------------------------------Divider / Diviseur---------------------------------------------------------------------

VerticalDivider()
__________________
Divider()
__________________
Container(
  width: 1,
  height: double.maxFinite,
  color: Colors.grey,
)
__________________
Container(
  height: 1,
  width: double.maxFinite,
  color: Colors.grey,
)

---------------------------------------------StaggeredGridView---------------------------------------------------------------------font

class StaggeredGridView extends StatelessWidget {
	...
  body: new Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: new StaggeredGridView.count(
        crossAxisCount: 4,
        staggeredTiles: _staggeredTiles,  //On place les StaggeredTile =>   List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[ const StaggeredTile.count(2, 2),  ......   ],
        children: _tiles,	//On place les attributs des tiles   =>  List<Widget> _tiles = const <Widget>[const _Example01Tile(Colors.green, Icons.widgets), ...],
        ...

---------------------------------------------DISPLAY LIST OF WIDGET---------------------------------------------------------------------font

body: Row(
        children: List<Widget>.generate(3, (index) {
          return tiles[index];
        }),
      ),
//list, widget, object, array, iterate, cycling

------------------------------------ASSET, IMAGE, FILE IN PROJECT----------------------------------------------------------- 

/*
* Si on souhaite rajouter un fichier de maniere permanante au projet, on se rend dans
* Project -> pubspec.yaml -> 
* 		# To add assets to your application, add an assets section, like this:
* 		# assets:
* 		#  - images/a_dot_burr.jpeg
* 		#  - images/a_dot_ham.jpeg
*/
On crée également un dossier "assets" dans le dossier ou se trouve pubspec.yaml

body: Center(
          child: Image(	//Le widget child de Center est Image
            image: NetworkImage(	//Pour récuperer une image depuis internet
                'https://aldwarkarms.co.uk/wp-content/uploads/2016/01/MUSICAL-NOTES.png'),
            ou
            image: AssetImage('images/MUSICAL-NOTES.png'), //Avec 'images' le nom du directory et 'MUSICAL-NOTES.png' le nom du fichier (on peut l'enlever pour prendre tout le dossier en compte)
          ),
        ),

---------------------------------------------DATE & TIME----------------------------------------------------date, time, timing, counter

var now = new DateTime.now();											//BASE, 
var berlinWallFell = new DateTime.utc(1989, 11, 9);
var moonLanding = DateTime.parse("1969-07-20 20:18:04Z");  -> Resultat : 8:18pm
______________________________________________________
assert(berlinWallFell.month == 11);
assert(moonLanding.hour == 20);
______________________________________________________
var now = new DateTime.now();											//Pour ajouter une durée à une variable
var sixtyDaysFromNow = now.add(new Duration(days: 60));
______________________________________________________
var difference = berlinWallFell.difference(moonLanding);		//DIFFERENCE ENTRE DEUX TEMPS
assert(difference.inDays == 7416);


---------------------------------------------F  O  N  T---------------------------------------------------------------------font

//Dans pubspec.yaml, enlever les commentaires de 'fonts et de ses attributs'
//Ajouter à la ligne de 'fonts :' ->  - asset: fonts/nom_de_la_police.ttf     <=  On a fonts qui est le dossier créé pour y placé la police (comme pour les images)
//Ne pas oublier de update les assets !!!!!!
//on aura donc : 
/*
* fonts: 
* 	-family: IndieFlower
* 		fonts:
* 			- asset: fonts/IndieFlower-Regulat.ttf
* On ajoute alors dans le widget TextStyle la propriété fontFamily : 'IndieFlower',
*/ 

---------------------------------------------M A I N--------------------------------------------------------------------- 

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false, //Pour retirer la banière de debug
        initialRoute: '/home',
        title : 'TITLE',
        routes: {
          '/home': (context) => Home(),
        },
      ),
    );
--------------------------------------------- APPBAR --------------------------------------------------------------------- 
appBar: AppBar(
        title: Text("Androidmonks"),
        actions: <Widget>[
          Icon(Icons.comment),
          Icon(Icons.settings),
        ],
        backgroundColor: Colors.deepOrangeAccent,
        elevation: 50.0,
        leading: Icon(Icons.menu),
        brightness: Brightness.dark,


appBar: PreferredSize(
        preferredSize: Size.fromHeight(27),
        child: AppBar(
          ...
--------------------------------------------- NAVIGATOR POP ---------------------------------------------------------------------
onPressed: () {
  Navigator.pop(context);
}
--------------------------------------------- HIDE NAVIGATION BAR OPACITÉ---------------------------------------------------------------------
import 'package:flutter/services.dart';
SystemChrome.setEnabledSystemUIOverlays([])

SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
--------------------------------------------- ORIENTATION HORIZONTAL VERTICAL ---------------------------------------------------------------------
import 'package:flutter/services.dart';
SystemChrome.setEnabledSystemUIOverlays([
  SystemUiOverlay.bottom
]);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
 --------------------------------------------- DRAWER / VOLET / SIDE PANNEL ---------------------------------------------------------------------
drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Colors.green[900],
                    Colors.green[300],
                  ],
                ),
              ),
              child: Container(
                color: Colors.transparent,
                child: Material(
                  color: Colors.transparent,
                  child: Image.asset(
                    'lib/assets/logo.png',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ),
            drawerTiles(),
          ],
        ),
      ),

--------------------------------------------- BOTTOM APPBAR APP BAR ---------------------------------------------------------------------
bottomNavigationBar: BottomNavigationBar(
  backgroundColor: Colors.white,
  elevation: 0,
  iconSize: 24,
  items: bottomBarWidgets(),
),
List<BottomNavigationBarItem> bottomBarWidgets() {
  List<BottomNavigationBarItem> widgetList = new List();
  widgetList.add(BottomNavigationBarItem(
    icon: Icon(
      Icons.home,
      color: Colors.black,
    ),
    title: Text('', style: TextStyle(color: Colors.white, fontSize: 10))));
    widgetList.add(BottomNavigationBarItem(
      title: Text(''),
      backgroundColor: Colors.black,
      icon: Icon(
        Icons.settings,
        color: Colors.black,
      ),
    ));
  return widgetList;
}
--------------------------------------------- BORDER RADIUS COINS ARRONDIS  ---------------------------------------------------------------------
decoration: new BoxDecoration(
              color: Colors.green,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(40.0),
                topRight: const Radius.circular(40.0),
              )

--------------------------------------------- EXIT APP QUITTER  ---------------------------------------------------------------------
SystemChannels.platform.invokeMethod('SystemNavigator.pop');
--------------------------------------------- CREATE DATABASE DB SQFLITE  ---------------------------------------------------------------------
Dans YAML
dependencies:
  sqflite: any
DANS DATABASE.DART
class DBProvider {
  DBProvider._();
  static final DBProvider db = DBProvider._();
}
--------------------------------------------- LIST SCROLLABLE, LISTE, SCROLL, FLEXIBLE  ---------------------------------------------------------------------
Flexible(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      Client item = snapshot.data[index];
                      return Dismissible(
                        key: UniqueKey(),
                        background: Container(color: Colors.red),
                        onDismissed: (direction) {
                          DBProvider.db.deleteClient(item.id);
                        },
                        child: ListTile(
                          title: Text(item.lastName),
                          subtitle: Text(item.firstName),
                          leading: Text(item.id.toString()),
                          trailing: Checkbox(
                            onChanged: (bool value) {
                              DBProvider.db.blockOrUnblock(item);
                              setState(() {});
                            },
                            value: item.blocked,
                          ),
                        ),
                      );
                    },
                  ),
                );

Flexible(
  fit: FlexFit.tight,
  ...
)
--------------------------------------------- Draggable, LongPressDraggable, DraggableTarget  ---------------------------------------------------------------------
//--------- BASIS
Draggable(
  child: WhiteKnight( //Ce qui est concerné
    size: 90.0,
  ),
  feedback: WhiteKnight(  //Ce qui se déplace
    size: 90.0,
  ),
  childWhenDragging: Container(), //Ce qui reste à l'emplacement
),
//-------- Restriction
Draggable(
  axis: Axis.horizontal,
  ...
  
//-------- Adding Data to Draggable
Draggable(
  child: WhiteKnight(),
  feedback: WhiteKnight(),
  childWhenDragging: Container(),
  data: ["White","Knight"]

//-------- Callbacks
onDragStarted
onDragCompleted
onDragCancelled

//-------- DragTargets => Provide a destination
bool accepted = false;
Container(
  child : DragTarget(
    builder: (//builder called when Draggable hovered over the DragTarget or is drop into it
      context, 
      List<String> candidateData, rejectedData,) { //candidate: data of Draggable over DragTarget, rejected: data of Draggable over DragTarget at moment it is not accepted
      return accepted ? WhiteKnight(size: 90.0,) : Container(); 
    }, 
    //Data fait référence au data du Draggable
    onWillAccept: (data) {return true;},  //functon that gives the Draggable data for us to decide if we accept or reject (voir exemple). Called when hoover
    onAccept: (data) {accepted = true;}   //Si onWillAccept return true, alors onAccept est appelé. Utilisé pour stocker le draggable dans le dragTarget
    onLeave: (data){}; //called when a Draggable is hovered over the DragTarget and leaves without being dropped.
    ),)

        //EXEMPLE : Only accept if the data is Knight
        Draggable(
          data: "Knight",
           ...),
        DragTarget(
          ...
          onWillAccept: (data) {
            if(data == "Knight") return true;
            else return false;
          },),
--------------------------------------------- Coordonate Coordonnées Click Touch Tap  ---------------------------------------------------------------------
double posx, posy;

void onTapDown(BuildContext context, TapDownDetails details) {
    print('${details.globalPosition}');
    final RenderBox box = context.findRenderObject();
    final Offset localOffset = box.globalToLocal(details.globalPosition);
    setState(() {
      posx = localOffset.dx;
      posy = localOffset.dy;
    });
  }

  ...

  GestureDetector(
    onTapDown: (TapDownDetails details) => onTapDown(context, details),
    onTap: () {
    print(posx.toString());
    print(posy.toString());
    },
  ),

--------------------------------------------- SIZE SCREEN MEDIA QUERY TAILLE ECRAN  ---------------------------------------------------------------------
double width = MediaQuery.of(context).size.width;
double height = MediaQuery.of(context).size.height;

--------------------------------------------- BUTT0N BORDER SHAPE  ---------------------------------------------------------------------
RaisedButton(
  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
  color: Colors.white,
  child: Text('Delete', style: TextStyle(color: Colors.blueGrey[800], fontSize: 15)),
  onPressed: () {},
),
--------------------------------------------- FITTEDBOX  ---------------------------------------------------------------------

child: Column(
          children: <Widget>[
            Expanded(
              child: FittedBox(
                fit: BoxFit.fill,
                child: Padding(
                    ...
---------------------------------------------  ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

---------------------------------------------   ---------------------------------------------------------------------

