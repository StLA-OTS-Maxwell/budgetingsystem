#!/bin/bash
#Personal Budgeting System

balance=0
expenses=0

display_menu(){
    echo "Personal Budgeting System"
    echo "1. View Balance"
    echo "2. Add Income"
    echo "3. Add Expense"
    echo "4. Quit"
    echo -n "Enter Your Choice: "
}

add_expense() {
  read -p "Enter the expense amount: " amount
  if [[ $amount =~ ^[0-9]+$ ]]; then
    expenses=$((expenses + amount))
    balance=$((balance - amount))
    echo "Expense added successfully."
  else
    echo "Invalid. Please enter a valid amount."
  fi
}

add_income(){
  read -p "Enter your income: " amount
    if [[ $amount =~ ^[0-9]+$ ]]; then
    balance=$((balance + amount))
    echo "Income added successfully."
  else
    echo "Invalid. Please enter a valid amount."
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
      add_income
      ;;
    3)
      add_expense
      ;;
    4)
      echo "Goodbye!"
      exit 0
      ;;
    *)
      echo "Invalid choice. Please select a valid option."
      ;;
  esac
done
