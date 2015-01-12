# Prozessbeschreibung

## Requirements Engineering
* Erstellen von Use Cases (Use-Casediagramm)
* Erstellen eines
* Für jeden Use Case Zuordnung von Qualitätsattributen und Businesskritikalität
 * Auswahl der in Frage kommenden Qualitätsattribute (nach ISO/IEC 9126)
 * Bewerten/Gewichten der Attribute
 * Gibt es mehrere Attribute mit dem selben Gewicht? Fixe Reihung bestimmen
 * System Zugriffsrichtungen: Incoming/Internal und/oder Outgoing (zb öffentlich Webseite wäre Incoming, Zugriff auf externen Service Outgoing und Zugriff von Internen Systemen Internal)
 * Wachstumsszenarien
 * Änderungsszenarien
 * Ausfallkosten pro Tag
 * Verfeinern in verschiedene Aktionen falls nötig (Aktivitätsdiagramm)
 * Klassendiagramm: Beziehungen zwischen Daten
 * Kontextdiagramm: Partnersysteme modellieren

## Architecture
* Basierend auf Anforderungen Komponenten auswählen
 * Gibt es eine favorisierte Basisarchitektur?
 * Zuordnung der verschiedenen Aktionen zu verschiedenen Systemen (Komponentendiagramm, Interface/Klassendiagramm)
 * ? erklären wie man: auf einzelne bzw Komponenten kommt (Kochrezept, zb public private services aufteilen)
 * Aktivitätsdiagramme anpassen auf einzelne Komponenten
 * Dokumentation von Entscheidungen (Vorteile und Nachteile/Gründe)
 * Single Point of Failure Analyse anhand einer Matrix (UseCase x Komponente) und Ausfallkosten bestimmen
 * Angriffsszenarien (was ist wenn Komponente X kompromitiert ist)
 * Wartungskosten
 * Testen von Kohäsion, Koppelung und stabiler Abhängigkeiten
 * Überprüfen der Anpassung auf Grund der vorher dokumentierten Entscheidungen
 * Vereinigung und Modifikation der Systeme anhand der beschriebenen Szenarien, Qualitäts- und Businesskritikalitäts Attributen
















TODO:
Metaebene noch stärker herausarbeiten (warum, + änderungen) von Martin Hasitschka
Fokus auf bestimmte teile (forschungsleitende fragen, was will ich erreichen in der arbeit): In dieser Arbeit wird ein allgemein anwendbarer Architekturprozess entwickelt, wie man von einem Set von Requirements auf eine Architektur kommen. Das soll auf folgende Art/Der Fokus liegt auf. zb.: Ausgehen von UML Ansatz
