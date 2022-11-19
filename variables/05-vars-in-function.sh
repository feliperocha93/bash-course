#!/bin/bash

animal="Dog"
animal_w_local="Dragon"

echo "1: (Before the function): The bad animal is : $animal"
echo "1: (Before the function): The good animal is : $animal_w_local"

function print_animal {
  animal="Lion"
  # local keyword respect the scope
  local animal_w_local="Tiger"
  echo "2: (Inside the function): The bad animal is : $animal"
  echo "2: (Inside the function): The good animal is : $animal_w_local"
}

print_animal
  echo "3: (After the function): The bad animal is : $animal"
  echo "3: (After the function): The good animal is : $animal_w_local"
