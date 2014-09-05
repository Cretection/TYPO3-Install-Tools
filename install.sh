#!/bin/sh

echo Willkommen zum TYPO3 Install-Script
echo Welches TYPO3-Version möchten Sie installieren z.B. 6.2.4:
read typo3version
echo Sie haben Version $typo3version gewählt
echo Die Installation wird gestartet
cd ../
mkdir typo3_src
cd typo3_src
wget http://prdownloads.sourceforge.net/typo3/typo3_src-6.2.4.tar.gz
tar xzvf typo3_src-6.2.4.tar.gz
rm typo3_src-6.2.4.tar.gz -Rf
cd ../
mkdir htdocs
cd htdocs
ln -s ../typo3_src/typo3_src-6.2.4/ typo3_src
ln -s typo3_src/typo3 typo3
git clone https://github.com/Cretection/TYPO3-Install-Tools.git
mv TYPO3-Install-Tools/index.php index.php
echo Installation abgeschlossen!