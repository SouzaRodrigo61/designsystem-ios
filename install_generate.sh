#!/bin/bash

clear

#Kill Xcode
killall "Xcode"

displayCompilerInfo() {
	printf "\n"
	printf "\n"
	echo -n "### Current Compiler"
	printf "\n"
	eval xcrun swift -version
	eval xcode-select --print-path
}

xcodegenGenerate() {

	printf "\n"
	printf "\n"
	echo 'Gerando os projetos para abrir o app'

	echo 'Entrando no modulos para gerar os modulos primeiros'
  #Generate Feature Module
  cd Modules

  #Generate Core Module
  cd Core
  xcodegen generate

  #Generate Account Module
  cd ..
  cd Account
  xcodegen generate

  #Generate Account Module
  cd ..
  cd Home
  xcodegen generate

  #Generate App
	echo 'Gerando o modulo principal'
  cd ..
  cd ..
  xcodegen generate

	
  #Workspace grouping
  # cp -R "contents.xcworkspacedata" "Design System.xcworkspace/contents.xcworkspacedata" 
}

################################################################################

echo "### Brew"
echo " [1] : Install"
echo " [2] : Update"
echo " [3] : Skip"
echo -n "Option? "
read option
case $option in
    [1] ) /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" ;;
    [2] ) eval brew update ;;
   *) echo "Ignored...."
;;
esac

################################################################################

printf "\n"

echo "### Xcodegen"
echo " [1] : Install"
echo " [2] : Upgrade"
echo " [3] : No/Skip"
echo -n "Option? "
read option
case $option in
    [1] ) brew install xcodegen ;;
    [2] ) brew upgrade xcodegen ;;
   *) echo "Ignored...."
;;
esac

################################################################################

displayCompilerInfo

################################################################################

printf "\n"
printf "\n"

echo "### Perform Xcodegen?"
echo " [1] : Yes"
echo " [2] : No/Skip"
echo -n "Option? "
read option
case $option in
    [1] ) xcodegenGenerate ;;
   *) echo "Ignored...."
;;
esac

xed .
xcodegen dump --type graphviz --file ../Documents/Graph.viz
xcodegen dump --type json --file ../Documents/Graph.json
echo " ╔═══════════════════════╗"
echo " ║ Done! You're all set! ║"
echo " ╚═══════════════════════╝"