import 'package:flutter/material.dart';
import 'package:lab4/model/termin_polaganje.dart';
class Korisnik{
   final String ime;
   final List<Termin> terminiPolaganje;
   Korisnik(this.ime, this.terminiPolaganje);
}