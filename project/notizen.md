
# Architektur (Was, Wo, Warum, Womit, Wer, Wie)

Warum: Architekturanforderungen aus Anforderungen

# Warum (Software Architektur, Grundlagen S. 32-33)
Anforderungen (funktional und nicht funktional) müssen gewahrt werden um Kunden mehrwert zu bieten: Organisation, System, Baustein, Entwicklung, Laufzeit, Rahmenbedingungen, erst wenn bewusst kann man einbeziehen, 37% scheitern wegen Anforderungen

(Software Architektur, Grundlagen S. 104-109)
Anforderungen müssen korrekt sein (Interessensvertreter mit einbeziehen, System verwenden das testet ob: machbar, eindeutig, nachprüfbar, vollständig (fehlersituationen!), konsistent)

Nicht funktionale oft vergessen: Checkliste!n

# Womit (Software Architektur, Grundlagen S. 33-36)
Separation of Concerns
Model driven architecture

Verschiedene Basisarchitekturen:
* Schichtenmodell
* Datenflussarchitekturen
* n-Tier Architekturen
* Middleware
* Rich client
* Thin client

Modellierung wegen Kommunizieren, bei Kundenpräsentation einfachere (kein UML vllt) aber intern UML um ausdrucksstark und eindeutig zu sein

# Wie (Software Architektur, Grundlagen S. 37)
Prozess wichtig,

# Fachliche Architektur vs Technische Architektur (Software Architektur, Grundlagen S. 52)
Fachlich: Fachliche Bausteine, entspringt dem Problembereich, getrieben durch funktionale Anforderungen z.B.: Auftragsabwicklungslösung: Bausteine:
* Auftragserfassung
* Auftragsverwaltung
* Kundenverwaltung

Technisch:
* Basiert auf fachlicher Architektur
* Primär nicht funktionale Anforderungen z.B.:
 * Logging
 * Auditing
 * Sicherheit
 * Persistenz
 * Transaktionsmanagement

Architektursichent für einzelne Anforderungen notwendig?

Generell Domänenunabhängig da nicht funktionale Anforderungen, bei MVC wird zB ein fachlicher Baustein in 3 Teile aufgeteilt

Interessen sind auch Anforderungen (Software Architektur, Grundlagen S. 84)

# Architektur Sichten (Software Architektur, Grundlagen S. 91)
Anforderungssicht
Logische Sicht

# Anforderungen im Architektur Kontext (Software Architektur, Grundlagen S. 119-123)
Anforderungen priosierien mit Nutzen und Wirkung um heraus zu finden welche interessant sind
Wichtig für
* Systemvision
* Bausteine für funktionale Anforderungen
* Nicht funktionale Anforderungen
* Systemanforderungen (JEE?)

# Bewertung (Software Architektur, Grundlagen S. 128-139)
Systemarchitektur ist gut wenn sie die funktionalen/nicht funktionalen Anforderungen erfüllt. Gleiche, gute Architektur kann bei geänderten Einsatzbereich schlecht werden

Lose Koppelung: ändert man nur 1 Baustein, sollten andere nicht geändert werden müssen
Hohe Kohäsion: verwandte Anforderungen zusammen tun
Änderungen einplanen (erwartbare Änderungen, zb nicht implementierte Funktionen aus Kostengründen)
Nicht erwartete Änderungen einplanen
Seperation of concerns: Zerlegen von Anforderungen, Zerlegen in Sichten, fachliche und technische Teile trennen damit sie unabhängig voneinander weiterentwickelt werden können
SOLID
Traceability

# modellgetriebene software entwicklung (Software Architektur, Grundlagen S. 170-175)
Modelle mit Software verweben
Problem: um alles in Modellen auszudrücken müsste Modellsprache einer Programmiersprache gleichen -> nur bestimmte Bereiche verweben, zB entitäten aus ER diagramm generieren, trotzdem umstritten

# modellgetriebene architektur (Software Architektur, Grundlagen S. 175)

# wartung (Software Architektur, Grundlagen S. 189)
20% erstellen 40% verstehen was da ist 40% auf ändern/updaten

# qualitätsattributsszenarien (Software Architektur, Grundlagen S. 196-197)
Je mehr  qualitätsmerkmale ein use case hat desto schwieriger dessen architektur
S. 210: Entwurfsmuster: Patterns, Architekturmuster: systemweite patterns

# Basisarchitekturen (Software Architektur, Grundlagen S. 216-256)
* Monotlith (schlecht, wenn alles zusammen ohne modelle, für prototypen nutzbar)
* Layered
* Datenfluss (pipes + filters)
* Repositories
* Zentralisierung vs Dezentralisierung
 * mainframe architektur
 * Client Server
* n Tier
* Rich client vs Thin client
* Peer to peer
* Publish Subscribe
* Middleware (zb TCP IP für netzwerk)
* Komponenten Platformen
* Service oriented architecture
* Sicherheitsarchitekturen

Bewertung: (Der Architekturreview, S. 179)

# Modellierung

# Wie (Software Architektur, Grundlagen S. 344)
Projektmanagement
Vorgehen: Systemvision -> Anforderung -> Architektur -> Umsetzung
Checkliste Architekturentwurf: 402


# Gute Architekturen (Der Architekturreview, S. 18)
Keine allgemein gültigen/akzeptierte Metriken
Anforderungen grob, nicht widerspruchsfrei
Zielsetzungen nicht quantifizierbar was sie nicht explizit messbar macht


# Methoden (Der Architekturreview, S. 60)
* SAAM: Auswahl von Systemqualitäten durch festlegen repräsentativer szenarien auf basis einer vorhandenen architektur, keine wirkliche Formel zur Bewertung
* ATAM: Weiterentwicklung von SAAM, schaut sich Trade Offs an. Es zeigt früh risikobehaftete stellen an: Sensitivitätspunkte (wo kann man viel gewinnen, von was hängt der gewinn ab), Kompromisspunkte (wo sind mehrere Merkmale gleichzeitig betroffen, die sich vielleicht ausschließen), Risiken + Nichtrisiken (Ist entscheidung kritisch oder nicht). Szenarien werden verwendet um das zu testen
* CBAM: versucht ROI zu berechnen auf Basis von Ergebnissen
* ALMA: Kombination aus ATAM und SAAM, beschäftigts sich vor allem mit Veränderbarkeit
* ARID: adaption von ATAM für teile der Architektur, kompakt und deswegen gut geeignet um Module oder Komponenten zu reviewen
* SACAM: vergleicht architekturen
* QUASAR: Analyse von Sub Systemen mittels Qualitäten (zB Performanz) mit Argumenten und Beweisen, dass die Entscheidungen das erhöhen