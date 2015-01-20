1. erste herangehensweise: erstellen von allen komponenten pro usecase, danache mergen:
 * Zu aufwendig

2. erstellen eines daumen mal pi komponenten diagrammes, danach verfeinerung
 * Keine klaren Regeln

3. Fokusieren auf nicht funktionale Anforderungen und auswahl der Komponenten nach der am höchsten bewerteten:
 * Erfordert (unendlich) viele Komponenten mit Gewichtungen, schwieriger Einstieg

4. Fokussieren auf Daten
 * Erstellen von Data Regions

5. Adaptieren von Datenvertrautheit
 * Höhere Vertrautheit darf ohne Proxy auf kleinere Vertrautheit zugreifen
 * Gleiche Vertrautheit dürfen aufeinander zugreifen
 * Niedrigere Vertrautheit darf nur über Proxy auf höhere Vertrautheit zugreifen

6. Integrieren von Benutzern
