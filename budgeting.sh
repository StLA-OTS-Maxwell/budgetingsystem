#!/bin/bash
#Finance Budgeting

balance=1000
expenses=100

display_menu(){
    echo "Finance Budgeting"
    echo "1. View Balance"
    echo "2. Add Expense"
    echo "3. Quit"
    echo -n "Enter Your Choice: "
}

add_expense() {
  read -p "Enter the expense amount: " amount
  if [[ $amount =~ ^[0-9]+$ ]]; then
    expenses=$((expenses + amount))
    balance=$((balance - amount))
    echo "Expense added successfully."
  else
    echo "Invalid input. Please enter a valid amount."
  fi
}


while true; do
  display_menu
  read choice
  case $choice in
    1)
      echo "Current Balance: $balance"
      ;;
    2)
      add_expense
      ;;
    3)
      echo "Goodbye!"
      exit 0
      ;;
    *)
      echo "Invalid choice. Please select a valid option."
      ;;
  esac
done
