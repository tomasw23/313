#!/bin/bash

shareDir=~/.local/share


# create a directory bin for binary files
echo mkdir -p $HOME/bin
mkdir -p $HOME/bin


echo mkdir -p $HOME/git
mkdir -p $HOME/git

cd $HOME/git; git clone https://anton_setzer@bitbucket.org/anton_setzer/criticalhighintegritysystems.git

exit

# add xml files defining mime types gpr and mlw to ~/.local/share/mime/packages/
echo cp $HOME/git/lib/application-gpr.xml $shareDir/mime/packages/
cp $HOME/git/lib/application-gpr.xml $shareDir/mime/packages/

echo cp $HOME/git/lib/application-mlw.xml $shareDir/mime/packages/
cp $HOME/git/lib/application-mlw.xml $shareDir/mime/packages/


# add desktop entries for why3 and gps to ~/.local/share/applications/

echo cp $HOME/git/lib/callwhy3.desktop $shareDir/applications/
cp $HOME/git/lib/callwhy3.desktop $shareDir/applications/

echo cp $HOME/git/lib/callgps.desktop $shareDir/applications/
cp $HOME/git/lib/callgps.desktop $shareDir/applications/


# backup ~/.local/share/applications/mimeapps.list  
# since it might contain already some user defined mime types

echo mv $shareDir/applications/mimeapps.list $shareDir/applications/mimeapps.list.old

mv $shareDir/applications/mimeapps.list $shareDir/applications/mimeapps.list.old

# overwrite the file 
# ~/.local/share/applications/mimeapps.list  
# by one making associations for .gpr and .mlw


echo cp $HOME/git/lib/mimeapps.list $shareDir/applications/
cp $HOME/git/lib/mimeapps.list $shareDir/applications/

# add the scripts callgps and callmlw to the user's bin directory

echo rm $HOME/bin/callgps
rm $HOME/bin/callgps

echo cp $HOME/git/bin/callgps $HOME/bin
cp $HOME/git/bin/callgps $HOME/bin

echo rm $HOME/bin/callwhy3 
rm $HOME/bin/callwhy3 

echo cp $HOME/git/bin/callwhy3 $HOME/bin
cp $HOME/git/bin/callwhy3 $HOME/bin



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

