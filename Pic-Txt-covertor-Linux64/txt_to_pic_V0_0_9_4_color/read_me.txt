Dies wandelt die list.txt aus "pic_to_txt" zum bild1.png um.
einfach die list.txt durch ein graues schwarz weis bild erzeugen oder aendern.
die erkennung der bildgrösse ist automatisch.

die .pde datei läst sich mit Processing 3.5.4 verändern, und in ein ausfürbares programm umwandeln.
Wenn sie nicht programmiern wollen:
im ordner application.windows64 ist eine exe datei, sie wandelt die list.txt im ihrem ordner um.
Die lizenz ist GNU GPL V3, also wie linux.
eine intalation ist nicht notwendig.

est ist zum beispiel:

list.txt:

0    //x wetr 1 zeile 1
200  //x wert 2 zeile 1
eol    //y wert + 1
100   //x wetr 1  zeile 2
200  //xwert 2 zeile 2
eol //ende zeil 2
eof //ende der datei

0=schwarz
...
100=dunkelgrau
...
200=hellgrau
...
255=weis

