# FiveM-NoHeadshot
FiveM Mod welche es erlaubt das es nicht Headshot Oneshot ist.


Erklärung:
Schadensmodifikation:

Das Skript überschreibt die Standard-Schadensberechnung von GTA. Jeder Schuss verursacht den gleichen Schaden (10 in diesem Fall), egal ob Headshot oder Körpertreffer.
Da die Advanced Rifle standardmäßig einen größeren Schaden verursacht, reduzieren wir die Schadensmenge, um ~15 Schüsse für den Tod zu benötigen.
Event-Handling:

Das Event CEventNetworkEntityDamage wird ausgelöst, wenn ein Spieler Schaden nimmt.
Das Skript überprüft, ob es ein Headshot ist, setzt aber den Schaden auf die gleiche Menge wie bei Körpertreffern.
Flexible Anpassung:

Du kannst den Wert von baseDamage anpassen, um die Anzahl der erforderlichen Schüsse zu ändern.
Wenn du möchtest, dass verschiedene Waffen unterschiedliche Schadensmengen haben, kannst du eine Tabelle mit Waffen-Hashes und Schadenswerten hinzufügen.
