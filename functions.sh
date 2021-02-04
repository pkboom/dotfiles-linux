composer-link() {  
    composer config repositories.$1 '{"type": "path", "url": "../packages/'$1'"}'
}

package-new() {
    if [ -n "$1" ]; then # If command line argument is present
        dir="$HOME/code/packages"

        mkdir -p $dir

        git clone https://github.com/pkboom/skeleton-php "$dir/$1"

        ln -s "$dir/$1" a_package
    else
        echo 'You need a package name'
    fi
}

wip() {
    if [ "$1" = "up" ]; then # If command line argument is present
        git add . && git commit -m 'wip' && git push
    else
        git add . && git commit -m 'wip'
    fi
}

web() { cd $HOME/code && ls -lh; }

dotfiles() { cd $HOME/.dotfiles && ls -lh; }

art() {
    if [ -n "$1" ] && [ $1 = "fresh" ]; then
        php artisan migrate:fresh --seed
    else
        php artisan $@
    fi
}

function weather() {
   city="$1"

   if [ -z "$city" ]; then
      city="Hamilton"
   fi

   eval "curl http://wttr.in/${city}"
}


xdebug() {
   iniFileLocation="/etc/php/7.4/cli/php.ini";
   
   currentLine=`cat $iniFileLocation | grep xdebug.so`

    if [ -z "$currentLine" ]; 
    then
        sudo sh -c "cat << 'EOF' >> $iniFileLocation
zend_extension=/usr/lib/php/20190902/xdebug.so
xdebug.remote_enable=1
EOF"

        echo "xdebug is now active";
        return
    fi

   if [[ $currentLine =~ ^#zend_extension ]];
   then
      sudo sed -i -e 's/^#zend_extension/zend_extension/g' $iniFileLocation
      sudo sed -i -e 's/^#xdebug.remote_enable/xdebug.remote_enable/g' $iniFileLocation
      echo "xdebug is now active";
   else
      sudo sed -i -e 's/^zend_extension/#zend_extension/g' $iniFileLocation
      sudo sed -i -e 's/^xdebug.remote_enable/#xdebug.remote_enable/g' $iniFileLocation
      echo "xdebug is now inactive";
   fi
}

db() {
    if [ "$1" = "refresh" ]; then
        mysql -uroot -e "drop database $2; create database $2"
    elif [ "$1" = "create" ]; then
        mysql -uroot -e "create database $2"
    elif [ "$1" = "drop" ]; then
        mysql -uroot -e "drop database $2"
    fi
}

describe() {
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

switch-db(){
    export DATABASE_MANAGEMENT_SYSTEM=$1 // mysql or postgres
}

import-format() {
    if [ -n "$1" ]; then # If command line argument is present
        cd $1

        wget https://raw.githubusercontent.com/pkboom/format/master/.eslintrc.js
        wget https://raw.githubusercontent.com/pkboom/format/master/.php_cs.dist
        wget https://raw.githubusercontent.com/pkboom/format/master/.prettierrc    
    else
        wget https://raw.githubusercontent.com/pkboom/format/master/.eslintrc.js
        wget https://raw.githubusercontent.com/pkboom/format/master/.php_cs.dist
        wget https://raw.githubusercontent.com/pkboom/format/master/.prettierrc    
    fi
}

laravel-new() {
    if [ -n "$1" ]; then # If command line argument is present
        laravel new $1

        cd $1

        composer require barryvdh/laravel-debugbar --dev
        composer require --dev beyondcode/laravel-dump-server 

        wget https://raw.githubusercontent.com/pkboom/setup-files/master/.eslintrc.js
        wget https://raw.githubusercontent.com/pkboom/setup-files/master/.php_cs.dist
        wget https://raw.githubusercontent.com/pkboom/setup-files/master/.prettierrc    
        wget https://gist.githubusercontent.com/calebporzio/cdf70bd390688646fda65490006eb0a6/raw/6e4f0117cb92c5015d99742424cb132e1dec36c7/tinker.config.php    

        rm .gitignore
        wget https://raw.githubusercontent.com/pkboom/setup-files/master/.gitignore    

        touch .idea

        git init

        echo "Add PSYSH_CONFIG=tinker.config.php to .env"
    else
        echo "Application name is needed.";
    fi
}

function mkcd() {
   mkdir -p "$@" && cd "$@"
}

function scheduler () {
    while :; do
        php artisan schedule:run
	echo "Sleeping 60 seconds..."
        sleep 60
    done
}