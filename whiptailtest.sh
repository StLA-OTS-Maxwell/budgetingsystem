#!/bin/bash
#Whiptail Test

whiptail --msgbox "This is a simple message box created with Whiptail." 10 40

option=$(whiptail --title "Main Menu" --menu "Choose an option:" 15 50 4 \
"1" "View Balance" \
"2" "Add Income" \
"3" "Add Expense" \
"4" "Exit" 3>&1 1>&2 2>&3)
clear

echo "You selected option: $option"
                            echo "User chose: No"; exit 1;;
                        *)
                            echo "Please answer yes or no.";;
                esac
            done
        fi
    }

  case $choice in
    1)
      dialog --msgbox "Current Balance: $balance" 6 40
      ;;
    2)
      add_income
      ;;
    3)
      add_expense
      ;;
    4)
      whiptail --msgbox "Goodbye!" 6 40
      clear
      exit 0
      ;;
    *)
      whiptail --msgbox "Invalid choice. Please select a valid option." 6 40
      ;;
  esac