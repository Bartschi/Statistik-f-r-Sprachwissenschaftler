# Hausaufgabe 03
# Isabelle Bartsch <bartschi@students.uni-marburg.de>
# 2014-04-26

# Dieses Werk ist lizenziert unter einer CC-BY-NC-SA Lizenz.

# Sie sollten die Datei auch in Ihren Ordner kopieren und einen Commit machen, 
# bevor Sie die Kopie weiter anpassen! Vergessen Sie dabei nicht, Namen, Datum
# und ggf. Lizenz zu ändern. Bei R-Code-Dateien wird der Text als R-Code
# verstanden, weshalb man Fließtext auskommentieren (mit #-Präfix inaktiv 
# stellen) muss. Das ist zwar Umständlicher für Beschreibungstext, aber schöner 
# für den Umgang mit viel Code.

# In R können wir den arithmetischen Mittelwert sehr leicht mit mean()
my.data <- c(1,9,7,3)
print(mean(my.data))
[1] 5

# Führen Sie das Skript mit dem "Source"-Knopf aus. Bemerken Sie dabei, dass wir
# hier print() nutzen müssen, damit das Ergebnis gedruck wird. Das ist anders als 
# beim interaktiven Fenster!

# Der Output in der R-Konsole sieht nicht besonders schön aus, v.a. im Vergleich
# zu RMarkdown-Output. Das ist die Ur-Form von R. RStudio bietet auch die 
# Möglichkeit an, den Output automatisch einigermaßen schöner darzustellen. Es 
# gibt in der Leiste mit "Source" auch einen kleinen Knopf, der so aussieht wie 
# einen kleinen Notizblock (Notebook) aus. Ein weiteres Fenster öffnet sich mit 
# schön formatiertem Output. Das ist schön, aber trotzdem sollten Sie wissen,
# wie R-Output in seiner Basisform aussieht UND wie man wirklich schönen Output
# mit Fließtext durch RMarkdown macht.

# In R sind fast alle Daten Vektoren, sogar Einzelzahlen -- Einzelelemente sind
# einfach Vektoren mit Länge 1. Wir können das daran betrachten, dass die
# üblichen Vektoroperationen auch bei "normalen" Einzelzahlen funktionieren. Zum
# Beispiel ist es möglich das Element an Position n mit [n] abzurufen:

# (Im folgenden müssen Sie die Code-Zeilen wieder aktiv setzen -- ich habe sie
# vorläufig auskommentiert, damit der Output beim ersten Beispiel sehr
# überschaubar war.)

# print(my.data[3])
[1] 7

# Wenn wir eine Variable mit einer Zahl haben,
# zahl <- 42
# print(zahl)
[1] 42

# können wir auch sie indizieren (zwar nur mit [1]), weil es nur ein Element gibt
# print(zahl[1])
[1] 42

# Diese starke Orientierung an Daten statt an Datenpunkte ist eine große Stärke
# von R, die R von vielen anderen Programmiersprachen unterscheidet.
# Ganz viele praktische Funktionen sind in R eingebaut und sie funktionieren alle
# mit Vektoren:

# Quadratwurzel
print(sqrt(my.data))
[1] 1.000000 3.000000 2.645751 1.732051

# Exponenten mit **
print(my.data**3)
[1]   1 729 343  27

# Logarithmen
# print(log(my.data))
[1] 0.000000 2.197225 1.945910 1.098612

# Summe aller Elemente in einem Vektor
# print(sum(my.data))
[1] 20

# Sortieren
# print(sort(my.data))
[1] 1 3 7

# und vieles Mehr! 

# Es gibt eine eingebaute Funktion für das Median:
# print(median(my.data))
[1] 5

# aber nicht für den Modalwert!
# Es gibt aber andere Funktionen, die uns da helfen.
# more.data <- c("m","m","w","w","m","w","w","w","w","w","w","m","m","m","w","w","w")

# with table()
# print(table(more.data))
more.data
m  w 
6 11

# with xtabs()
# die komische Syntax mit Tilde wird später deutlicher ....
# print(xtabs(~more.data))
m  w 
6 11 

# auch die Ergebnisse solcher Funktionen können wir einer Variabel zuweisen:
# tabelle <- xtabs(~more.data)
# print(tabelle)
more.data
m  w 
6 11 

# Wir können die Werte auch aus dieser Tabelle bearbeiten
# total <- sum(tabelle)
# print(total)
[1] 17

# und damit relative Häufigkeiten ausdrucken:
# tabelle.rel <- tabelle / total
# print(tabelle.rel)
more.data
m         w 
0.3529412 0.6470588 

# Vervollständigen Sie folgende Zeile, sodass Prozentwerte aus den relativen
# Häufigkeiten entst ehen: tabelle.prozent <- quantile(tabelle.rel) 
# print(tabelle.prozent)
0%       25%       50%       75%      100% 
0.3529412 0.4264706 0.5000000 0.5735294 0.6470588 

# Aber die Frage bleibt, wie berechnen wir den Modus? Durch sortieren!
# tabelle.sorted <- sort(tabelle,decreasing=TRUE)
# print(tabelle.sorted)
more.data
w  m 
11  6 

# Sie sehen hier, dass manche Funktionen weitere Optionen haben, die wir
# bestimmen können. Hier wollten wir, dass die Liste mit dem größten Wert
# anfängt, daher setzen wir decreasing=TRUE

# Nehmen Sie das erste Element aus dem obigen Ergebnis, um den Modalwert zu
# bekommen:
# modus <- (tabelle.sorted[1])
# print(modus)
w 
11

# Verständisfrage: gibt es immer nur *einen* Modalwert? 
# Wenn nicht, ist der Code oben korrekt? Warum?
# Schreiben Sie Ihre Antwort als Comment hier.

# # Es gibt nicht immer nur ein Modalwert, da dies ein der höchste Wert ist, der einer Variablen
# zugeordnet werden kann. In unsere Fall ist der Modalwert "w", weil "w" 11 mal beobachtet werden
# kann. Würde "m" allerdings auch 11 mal vorkommen, gäbe es 2 Modalwerte.
# Demzufolge ist der Code oben nicht korrekt, da er die Werte in absteigender Reihenfolge sortiert.
# Bei 2 Elementen mit dem gleichen Wert, kann allerdings keine derartige Reihenfolge gemacht
# werden.

# Als Abschied ein Beispiel mit der Darstellung Frequenzdaten mit Säulendiagramm
# bzw. Histogramm

# library(ggplot2)
# my.histogram <- qplot(more.data,geom="histogram")
# print(my.histogram)

# Sie sind jetzt fertig -- das waren ganz viele Kleinigkeiten, aber
# Kleinigkeiten, die wir immer wieder nutzen werden. Machen Sie einen Commit und
# einen Push!

