composer-link() {  
    composer config repositories.$1 '{"type": "path", "url": "../packages/'$1'"}'
}

package-new() {
    if [ -n "$1" ]; then # If command line argument is present
        dir='/home/y/code/packages'

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

web() { cd /home/y/code && ls -lh; }

dotfiles() { cd $HOME/.dotfiles && ls -lh; }

art() {
    if [ -n "$1" ]; then # If command line argument is present
        if [ $1 = "tinker" ]; then
            rlwrap php artisan tinker
        elif [ $1 = "fresh" ]; then
            php artisan migrate:fresh --seed
        else
            php artisan $@
        fi
        return
    fi

    php artisan
}

# https://alexvanderbist.com/posts/2019/running-laravel-scheduler-without-setting-up-cron
function scheduler () {
    while :; do
        php artisan schedule:run
    	echo "Sleeping 60 seconds..."
        sleep 60
    done
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
    table=$1

    database='touchstone'

    psql -c "\d $table" $database
}