#!/bin/bash
read -p "Number of students: " n

for ((i=1; i<=n; i++)); do
  read -p "Name: " name
  read -p "Reg No: " regno

  total=0
  for ((j=1; j<=5; j++)); do
    read -p "Mark $j: " m
    total=$((total + m))
  done

  avg=$((total / 5))

  if [ $avg -ge 90 ]; then grade="A+"
  elif [ $avg -ge 80 ]; then grade="A"
  elif [ $avg -ge 70 ]; then grade="B"
  elif [ $avg -ge 60 ]; then grade="C"
  elif [ $avg -ge 50 ]; then grade="D"
  else grade="F"; fi

  echo -e "\n--- Marklist ---"
  echo "Name: $name"
  echo "RegNo: $regno"
  echo "Total: $total, Average: $avg, Grade: $grade"
done

