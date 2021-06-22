function web() {
    cd /var/www/html
}

function art() {
    if [ -n "$1" ] && [ $1 = "fresh" ]; then
        php artisan migrate:fresh --seed
    else
        php artisan $@
    fi
}

function watch() {
    if [ -n "$1" ]; then
        eval "npm run watch-${1}"
    else
        npm run watch
    fi
}

function describe() {
    database=$1
    table=$2

    if [ $DATABASE_MANAGEMENT_SYSTEM = "mysql" ]; then
        if [ -z "$2" ]; then # If no table
            mysql -uroot -e "use $1; show tables"
        else
            mysql -uroot -e "use $1; describe $2"
        fi
    else
        if [ -z "$2" ]; then # If no table
            psql -c "\d" $database
        else
            psql -c "\d $table" $database
        fi
    fi
}

function mkdircd() {
   mkdir -p "$@" && cd "$@"
}

function rmrf() {
    rm -rf "$1"
}

function tests() {
    if [ -z "$1" ]; then
        echo 'File name required.'
    elif [ -z "$2" ]; then
        ./vendor/bin/phpunit $1
    else
        ./vendor/bin/phpunit $1 --filter $2
    fi
}
