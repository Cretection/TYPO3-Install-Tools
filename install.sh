#!/bin/sh

echo Willkommen zum TYPO3 Install-Script
echo In welchem Pfad soll gerabeitet werden? /absoluterPfad/zuInstaltionsOrdner/:
read typo3pfad
echo Ist $typo3pfad korrekt? Y/N:
read answer1
if [ "$answer1" != "Y" ]
  then echo Starten Sie das Script erneut && exit
fi
echo Welche TYPO3-Version möchten Sie installieren z.B. 6.2.4:
read typo3version
echo Ist Version $typo3version korrekt? Y/N:
read answer1
if [ "$answer1" != "Y" ]
  then echo Starten Sie das Script erneut && exit
fi
echo Die Installation wird gestartet
cd $typo3pfad && mkdir typo3_src && cd typo3_src && wget "http://prdownloads.sourceforge.net/typo3/typo3_src-$typo3version.tar.gz" && tar "xzvf" "typo3_src-$typo3version.tar.gz" && rm typo3_src-$typo3version.tar.gz -Rf && cd ../ && mkdir htdocs && cd htdocs && ln -s ../typo3_src/typo3_src-$typo3version/ typo3_src && ln -s typo3_src/typo3 typo3 
echo Installation abgeschlossen!

/kunden/316313_55278/2014/Intern/Relaunch2014/FileSystem/test/