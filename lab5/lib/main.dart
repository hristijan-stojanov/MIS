import 'package:flutter/material.dart';
import 'package:lab4/model/termin_polaganje.dart';
import 'widgets/addForma.dart';
import 'widgets/login.dart';
import 'widgets/calendar.dart';

class App extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<App> {
   final List<Termin> _items = [];

  late final String najevenKorisnik;


  List<Termin> getList(){
    return _items;
  }

  void _addItem(BuildContext cont) {
    showModalBottomSheet(
        context: cont,
        builder: (_) {
          return GestureDetector(
              onTap: () {},
              child: AddElement(_addNew),
              behavior: HitTestBehavior.opaque);
        });
  }
  void _openCalendar(BuildContext cont) {
    showModalBottomSheet(
        context: cont,
        builder: (_) {
          return GestureDetector(
              onTap: () {},
              child: calendar(getList),
              behavior: HitTestBehavior.opaque);
        });
  }


  void _addNew(Termin item) {
    setState(() {
      _items.add(item);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lab4"), actions: <Widget>[
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () => _addItem(context),
        ),
        IconButton(
          icon: Icon(Icons.calendar_view_week_sharp),
          onPressed: () => _openCalendar(context),
        ),

      ]),
      body: Center(
        child: _items.isEmpty
            ? Text("Nema dodadeno termini")
            : ListView.builder(
                itemBuilder: (ctx, index) {
                  return Card(
                    elevation: 3,
                    margin: EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 10,
                    ),
                    child: ListTile(
                      title: Text(
                        _items[index].predmet,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "${_items[index].datum}   ${_items[index].vreme}",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  );
                },
                itemCount: _items.length,
              ),
      ),
    );
  }
}



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Log in';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body:  Loginform(),
      ),
    );
  }
}


