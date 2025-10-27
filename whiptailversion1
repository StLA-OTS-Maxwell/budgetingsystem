#!/bin/bash
#Whiptail Test

whiptail --msgbox "This is a Budgeting System created with Whiptail." 10 40


income=${income:-0}
expenses=${expenses:-0}
balance=${balance:-0}

while true; do
    option=$(whiptail --title "Main Menu" --menu "Choose an option:" 15 50 4 \
    "1" "View Balance" \
    "2" "Add Income" \
    "3" "Add Expense" \
    "4" "Exit" 3>&1 1>&2 2>&3)
    status=$?
    
    if [ $status -ne 0 ]; then
        whiptail --msgbox "Cancelled. Exiting." 8 40
        exit 0
    fi

  
    case $option in
        1)
            # Show current balance
            whiptail --msgbox "Current Balance: $balance" 8 40
            ;;

        2)
            #Income Amount
            amount=$(whiptail --inputbox "Enter the income amount:" 8 40 3>&1 1>&2 2>&3)
            exitstatus=$?
            if [ $exitstatus -eq 0 ]; then
                if [[ $amount =~ ^[0-9]+$ ]]; then
                    income=${income:-0}
                    balance=${balance:-0}
                    income=$((income + amount))
                    balance=$((balance + amount))
                    whiptail --msgbox "Income added successfully.\nNew balance: $balance" 8 40
                else
                    whiptail --msgbox "Invalid amount. Please enter a valid number." 8 40
                fi
            else
                whiptail --msgbox "Cancelled." 8 40
            fi
            ;;

        3)
            # Expense Amount
            amount=$(whiptail --inputbox "Enter the expense amount:" 8 40 3>&1 1>&2 2>&3)
            exitstatus=$?
            if [ $exitstatus -eq 0 ]; then
                if [[ $amount =~ ^[0-9]+$ ]]; then
                    expenses=${expenses:-0}
                    balance=${balance:-0}
                    expenses=$((expenses + amount))
                    balance=$((balance - amount))
                    whiptail --msgbox "Expense added successfully.\nNew balance: $balance" 8 40
                else
                    whiptail --msgbox "Invalid amount. Please enter a valid number." 8 40
                fi
            else
                whiptail --msgbox "Cancelled." 8 40
            fi
            ;;

        4)
            whiptail --msgbox "Exiting..." 8 40
            exit 0
            ;;
        *)
            whiptail --msgbox "Invalid option." 8 40
            ;;
    esac
done
