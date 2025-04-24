#!/bin/bash

balance=1000  # Initial balance

while true; do
  echo -e "\n--- Bank Menu ---"
  echo "1. Deposit"
  echo "2. Withdraw"
  echo "3. Exit"
  read -p "Choose an option: " choice

  case $choice in
    1)
      read -p "Enter amount to deposit: " amt
      balance=$((balance + amt))
      echo "Deposited. New balance: ₹$balance"
      ;;
    2)
      read -p "Enter amount to withdraw: " amt
      if [ $amt -le $balance ]; then
        balance=$((balance - amt))
        echo "Withdrawn. New balance: ₹$balance"
      else
        echo "Insufficient balance!"
      fi
      ;;
    3)
      echo "Exiting. Final balance: ₹$balance"
      break
      ;;
    *)
      echo "Invalid choice. Try again."
      ;;
  esac
done
