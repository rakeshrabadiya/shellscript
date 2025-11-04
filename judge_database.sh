#!/bin/bash

db_file="judge_database.txt"
touch "$db_file"

while true
do
    echo "===================================="
    echo "      Judge Database Management      "
    echo "===================================="
    echo "1. Add Record"
    echo "2. Update Record"
    echo "3. View Records"
    echo "4. Delete Record"
    echo "5. Display No of records"
    echo "6. Find Judge with highest cases judged"
    echo "7. Calculate total Cases of Court Ahmedabad"
    echo "8. List All Judge Names"
    echo "9. Exit"
    echo "===================================="
    read -p "Enter your choice: " choice

    case $choice in
        1)
            read -p "Enter Judge Name: " jname
            read -p "Enter Court Name: " cname
            read -p "Enter City: " city
            read -p "Enter Cases Judged: " cases
            read -p "Enter Total Cases: " total
            echo "$jname|$cname|$city|$cases|$total" >> "$db_file"
            echo "Record added successfully!"
            ;;
        2)
            read -p "Enter Judge Name to update: " jname
            line=$(grep -i "^$jname|" "$db_file")
            if [ "$line" != "" ]; then
                read -p "Enter new Court Name: " cname
                read -p "Enter new City: " city
                read -p "Enter new Cases Judged: " cases
                read -p "Enter new Total Cases: " total
                # Escape special characters for sed
                esc_line=$(echo "$line" | sed 's/[&/\]/\\&/g')
                sed -i "s/^$esc_line$/$jname|$cname|$city|$cases|$total/" "$db_file"
                echo "Record updated successfully!"
            else
                echo "Judge not found!"
            fi
            ;;
        3)
            if [ -s "$db_file" ]; then
                echo "All Records:"
                column -t -s '|' "$db_file"
            else
                echo "No records found."
            fi
            ;;
        4)
            read -p "Enter Judge Name to delete: " jname
            line=$(grep -i "^$jname|" "$db_file")
            if [ "$line" != "" ]; then
                esc_line=$(echo "$line" | sed 's/[&/\]/\\&/g')
                sed -i "/^$esc_line$/d" "$db_file"
                echo "Record deleted successfully!"
            else
                echo "Judge not found!"
            fi
            ;;
        5)
            count=$(wc -l < "$db_file")
            echo "Total number of records: $count"
            ;;
        6)
            if [ -s "$db_file" ]; then
                highest=$(sort -t '|' -k4 -nr "$db_file" | head -1)
                jname=$(echo "$highest" | cut -d'|' -f1)
                cases=$(echo "$highest" | cut -d'|' -f4)
                echo "Judge with highest cases judged: $jname ($cases cases)"
            else
                echo "No records found."
            fi
            ;;
        7)
            if [ -s "$db_file" ]; then
                total_cases=$(grep -i "Ahmedabad" "$db_file" | cut -d'|' -f5 | paste -sd+ | bc)
                echo "Total cases of Court Ahmedabad: $total_cases"
            else
                echo "No records found."
            fi
            ;;
        8)
            if [ -s "$db_file" ]; then
                echo "All Judge Names:"
                cut -d'|' -f1 "$db_file"
            else
                echo "No records found."
            fi
            ;;
        9)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice!"
            ;;
    esac
done
