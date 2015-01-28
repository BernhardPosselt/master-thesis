# Prozessbeschreibung

## Requirements Engineering
* Erstellen von Use Cases (Use-Casediagramm)
* Erstellen eines
* Für jeden Use Case Zuordnung von Qualitätsattributen und Businesskritikalität
 * Auswahl der in Frage kommenden Qualitätsattribute (nach ISO/IEC 9126)
 * Gibt es mehrere Attribute mit dem selben Gewicht? Fixe Reihung bestimmen
 * System Zugriffsrichtungen: Incoming/Internal und/oder Outgoing (zb öffentlich Webseite wäre Incoming, Zugriff auf externen Service Outgoing und Zugriff von Internen Systemen Internal)
 * Erwartete Nutzung
 * Wachstumsszenarien + Businessvalue
 * Änderungsszenarien
 * Ausfallkosten pro Tag
 * Verfeinern in verschiedene Aktionen falls nötig (Aktivitätsdiagramm)
 * Klassendiagramm: Beziehungen zwischen Daten, Vertrautheit durch Stereotypen und wenn möglich Schaden
 * Kontextdiagramm: Partnersysteme modellieren

## Architecture Process
1. Datenflüsse festlegen
1.1 Ausgehen vom Kontextdiagram. Zeigt minimale Anzahl der Systeme
1.2 Anhand des Vertrautheitslevels der Daten verschiedene Systeme erstellen wenn:
 * Vertrautheit kritisch
 * Schaden bei Verlust > den Sytemkosten (minimale Kosten = Kosten für 1 Server + Proxy falls nicht vorhanden für Stufe)
1.3 Zwischen jedem System einen Proxy aufstellen
 * Regel:
  1. Daten müssen alle Vertrautslevel durchlaufen und dürfen nicht überspringen
  2. Proxies dürfen keine Services/Schnittstellen anbieten sondern nur weiterleiten. Proxies sind nur dazu da, die Requests zu authentifizieren und weiterzuleiten
1.4 Wer hat Zugriff auf eingehende Ports? Wäre es schlecht wenn ein User das System und die Daten kontrollieren könnte? Wenn ja aufspalten in 2 Systeme (Idee: Systeme zwischen denen Daten fließen müssen bekannt sein oder ein Proxy mit well defined interfaces muss vorhanden sein)
2.
2.1 Dann Aktivitätsdiagramme anpassen auf einzelne Komponenten
2.2 Matrix erstellen Use Case x Komponente
2.3 Ausfallkosten berechnen und für jede Komponente addieren. Da Komponenten in Serie geschalten sind hat jede Komponente die Gesamtausfallkosten. Dann die Kosten mit der Ausfallwahrscheinlichkeit der Komponente multiplizieren
2.4 Komponenten reihen nach erechneten Kosten
2.5 Mit der Komponente mit den meisten Ausfallkosten anfangen und Ausfallwahrscheinlichkeit reduzieren durch hinzufügen einer zweiten Komponente.
2.6 Differenz der beiden Kosten berechnen: Falls Differenz < Kosten für Komponente Komponente nicht hinzufügen.
2.7 Ad 2.4 solange es noch Systeme gibt, deren Ausfallkosten höher als die Kosten einer weiteren Komponente ist



## Implementationsprozess
3.1 implementieren der Komponenten und testen auf Geschwindigkeit


## Nicht funktionale Anforderungen

### Implementierungsabhängig
* Zuverlässigkeit (Systemreife, Wiederherstellbarkeit, Fehlertoleranz)
* Aussehen und Handhabung (Look and Feel)
* Benutzbarkeit (Verständlichkeit, Erlernbarkeit, Bedienbarkeit)
* Leistung und Effizienz (Antwortzeiten, Ressourcenbedarf, Wirtschaftlichkeit)
* Betrieb und Umgebungsbedingungen
* Portierbarkeit und Übertragbarkeit (Anpassbarkeit, Installierbarkeit, Konformität, Austauschbarkeit)
* Korrektheit (Ergebnisse fehlerfrei)
* Flexibilität (Unterstützung von Standards)

## Architekturabhängig
* Leistung und Effizienz (Antwortzeiten, Ressourcenbedarf, Wirtschaftlichkeit)
* Wartbarkeit, Änderbarkeit (Analysierbarkeit, Stabilität, Prüfbarkeit, Erweiterbarkeit)
* Sicherheitsanforderungen (Vertraulichkeit, Informationssicherheit, Datenintegrität, Verfügbarkeit)
* Skalierbarkeit (Änderungen des Problemumfangs bewältigen)
* Randbedingungen, je nachdem in welches Feld sie fallen

## TODOs
* Activity Diagramme anpassen
* Ausfallkosten ermitteln
* Ausfallmatrix erstellen und ermitteln wieviel Systeme als Backup da sein müssen






TODO:
Beispielhafte Volumina
Beispielhafte Rechnungen die verfeinert werden können
Kern der Arbeit für Endpräsentation beschreiben: Weniger das Erstellen der Diagramme als mehr das Herausheben, abstrakte Prozess beschreiben
Metaebene noch stärker herausarbeiten (warum, + änderungen) von Martin Hasitschka
Fokus auf bestimmte teile (forschungsleitende fragen, was will ich erreichen in der arbeit): In dieser Arbeit wird ein allgemein anwendbarer Architekturprozess entwickelt, wie man von einem Set von Requirements auf eine Architektur kommen. Das soll auf folgende Art/Der Fokus liegt auf. zb.: Ausgehen von UML Ansatz
