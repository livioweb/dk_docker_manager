#!/bin/bash

__MAIN__(){


  Menu
  Options $action



}
clear



Options(){
  case $action in
    list) Lista ;;
    stopcont) echo "Drop containers" ;;
    dropnet) echo "Drop Networks" ;;
    sair) echo "Sair" ;;
  esac
}

Menu ()
{
  action=$(dialog --stdout \
   --title 'Perfil' \
   --menu 'Escolha uma acao:' \
   10 50 10 \
   list 'List All Containers' \
   stopcont 'Drop Containers' \
   dropnet 'Drop Network')
}

Lista(){
  echo docker ps --all --format "table {{.ID}}\t{{.Names}}"
  echo "Enter your container name / id or 0 to exit::";
  dialog --stdout --inputbox "Nome do Container" 0 0
}

__MAIN__