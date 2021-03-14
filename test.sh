#!/bin/bash
 PS3='Select DB: '
    options=('mysql' 'postgres')
    
    select db in "${options[@]}"
    do
        case $db in
            'mysql')
                break
                ;;
            'postgres')
                break
                ;;
            *)
                echo "invalid option $REPLY"
                ;;
        esac
    done

    echo "connected to $db"
    export DATABASE_MANAGEMENT_SYSTEM=$db
