
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