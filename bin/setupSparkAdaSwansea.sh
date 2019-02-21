#!/bin/bash

shareDir=~/.local/share


# create a directory bin for binary files
echo mkdir -p $HOME/bin
mkdir -p $HOME/bin


echo mkdir -p $HOME/git
mkdir -p $HOME/git

cd $HOME/git; git clone git clone https://anton_setzer@bitbucket.org/anton_setzer/criticalhighintegritysystems.git

exit

# add xml files defining mime types gpr and mlw to ~/.local/share/mime/packages/
echo wget -P  $shareDir/mime/packages/ http://www.cs.swan.ac.uk/~csetzer/lectures/critsys/current/SPARK_Ada/files/setupfiles/application-gpr.xml
wget -P  $shareDir/mime/packages/ http://www.cs.swan.ac.uk/~csetzer/lectures/critsys/current/SPARK_Ada/files/setupfiles/application-gpr.xml

echo wget -P  $shareDir/mime/packages/ http://www.cs.swan.ac.uk/~csetzer/lectures/critsys/current/SPARK_Ada/files/setupfiles/application-mlw.xml

wget -P  $shareDir/mime/packages/ http://www.cs.swan.ac.uk/~csetzer/lectures/critsys/current/SPARK_Ada/files/setupfiles/application-mlw.xml


# add desktop entries for why3 and gps to ~/.local/share/applications/
echo wget -P  $shareDir/applications/ http://www.cs.swan.ac.uk/~csetzer/lectures/critsys/current/SPARK_Ada/files/setupfiles/callwhy3.desktop

wget -P  $shareDir/applications/ http://www.cs.swan.ac.uk/~csetzer/lectures/critsys/current/SPARK_Ada/files/setupfiles/callwhy3.desktop

echo wget -P  $shareDir/applications/ http://www.cs.swan.ac.uk/~csetzer/lectures/critsys/current/SPARK_Ada/files/setupfiles/callgps.desktop

wget -P  $shareDir/applications/ http://www.cs.swan.ac.uk/~csetzer/lectures/critsys/current/SPARK_Ada/files/setupfiles/callgps.desktop

# backup ~/.local/share/applications/mimeapps.list  
# since it might contain already some user defined mime types

echo mv $shareDir/applications/mimeapps.list $shareDir/applications/mimeapps.list.old

mv $shareDir/applications/mimeapps.list $shareDir/applications/mimeapps.list.old

# overwrite the file 
# ~/.local/share/applications/mimeapps.list  
# by one making associations for .gpr and .mlw

echo wget -P  $shareDir/applications/ http://www.cs.swan.ac.uk/~csetzer/lectures/critsys/current/SPARK_Ada/files/setupfiles/mimeapps.list

wget -P  $shareDir/applications/ http://www.cs.swan.ac.uk/~csetzer/lectures/critsys/current/SPARK_Ada/files/setupfiles/mimeapps.list

# add the scripts callgps and callmlw to the user's bin directory

echo rm $HOME/bin/callgps
rm $HOME/bin/callgps

echo wget -P  $HOME/bin/ http://www.cs.swan.ac.uk/~csetzer/lectures/critsys/current/SPARK_Ada/files/callgps
wget -P  $HOME/bin/ http://www.cs.swan.ac.uk/~csetzer/lectures/critsys/current/SPARK_Ada/files/callgps

echo rm $HOME/bin/callwhy3 
rm $HOME/bin/callwhy3 

echo wget -P  $HOME/bin/ http://www.cs.swan.ac.uk/~csetzer/lectures/critsys/current/SPARK_Ada/files/callwhy3
wget -P  $HOME/bin/ http://www.cs.swan.ac.uk/~csetzer/lectures/critsys/current/SPARK_Ada/files/callwhy3

echo chmod u+x $HOME/bin/callgps
chmod u+x $HOME/bin/callgps

echo chmod u+x $HOME/bin/callwhy3
chmod u+x $HOME/bin/callwhy3


# update mime database

update-mime-database ~/.local/share/mime/

if [ -x /usr/bin/why3 ];
then why3 config --detect-provers
else /usr/local/opam/system/bin/why3 config --detect-provers
fi 

