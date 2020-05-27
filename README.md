# Audioprog
Audioprogrammierung synthesizer project
Jan Nietfelds Synthesizer 
Dieser Sytnhesizer ist eine kombination aus einem Stylophone und der Eulerschen Musiktheorie.

Wie Starte ich Jan Nietfelds Synthesizer:

1. Es wird die oscP5 Library für Processing benötigt

2. Öffne die datei GUI2.pde

3. Drücke Auf den start Button (Dreieck)

4. in pure data öffne die Datei GUI.pd im Ordner Anwendungen

5. in pure data schalte unter Medien DSP an


Die Fenster am besten so hinschiebn, dass beide gleichzeitig auf dem Bildschirm sichtbar sind.

zu beginn muss  in GUI.pd einmalig der Button "Start" betätigt werden

Danach kann in GUI2.pde gespielt werden.

Erklärung der Elemente in GUI.pd:
1. Start: Initialisiert die Verbindung zwischen Pure Data und Processing. muss einmalig betätigt werden sonst kommt nix an

2. Regler für die Anteile verschiedener Oszillatoren im Ton Phasor: Sägezahnschwingungh, Sine: Kosinusschwingung, Pulse, Quadratische Schwingung, Noise: Rauschen
	Es muss mindestens einer der Regler einen Pegel haben damit Ton kommt (wenn der Anteil aller Schwingungen 0 ist gibts keine schwingung)

3. Der Envelope Generator regelt den lautstärkeverlauf eines Tons. 
		Attack: Wie schnell geht die kurve hoch wenn man den Ton anschlägt" Trommel= niedrige/schnelle Attackdauer, Querflöte = Langsame/hohe Attackdauer
		Decay: Nach dem Attack verfällt die Lautstärke rasant auf ein tieferes Level. Decay 1 bestimmt aud welches level sie verfallen soll. Decay 2 bestimmt die geschwindigkeit mit der dies passiert
		Sustain: Nach dem Decay Bleibt die lautstärke kurz in einem Equilibrium bevor sie released wird, Sustain bestimmt wie lange die Lautstärke erhalten bleibt.
		Release: zum ende des Tons geht die Lautstärke wieder auf 0. Release steuert wie lang die Lautstärke ausläuft
		Curve: Dieser wert bestimmt ob die oben beschribenen kurven linear verlaufen oder exponential und mit welchem exponenten,
	Alle werte außer Decay 1 sind in millisekunden. Decay 1 liegt ist in prozent/100
	Im zweifelsfall durch klick auf std standardwerte nehmen

4. Klangfarbe: ein natürlicher Ton enthält obertöne die lautstärke dieser im vergleich zum Grundton bildet die Klangfarbe. 
	hier kann man mit mode ebenfalss einen Linearen oder Exponentialen verlauf Einstellen

5. Chord mode: hier kann man einstellen ob der Synthesizer einzelne Töne ode Akkorde in Dur oder Moll spielt.

6. Filters: In diesem Synthesizer sind 3 filter eingebaut. Diese kann man alle einzal an und ausschalten
	High Pass. der high pass Filter lässt nur Frequenzen über seinem Wert hindurch
	Bandpass: der bandpass Filter schneidet sowohl zu hohe Ffrequnzen wie auch zu niedrige Frequenzen ab. man kann die mittelfrequenz sowie die breite der erlaubten frequenzen anpassen. 
		eine höhere Zahl bei width führt zu einem engeren Filter.
	Lowpass: der lowpass lässt nur Frequenzen unter seinem Wert durch. heir kann man zusätzlich eine Resonanz and der Abschnittfrequenz einstellen.

7. Low Frequency oszillators: Es sind drei LFO vorhanden.
	der Freq Mod moduliert die Frequenz, also die Tonhöhe mit der der Filter Schwingt
	der Amp Mod moduliert die Amplitude, also die Lautstärke der Schwingung
	der Filter Mod moduliert die zeilfrequenzen der eingebauten Filter

Viel spaß mit meinem Synthesizer
bei nachfragen und anregungen bin ich erreichbar unter jannietfeld@gmail.com
