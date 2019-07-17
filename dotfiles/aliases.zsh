alias gp="git push"
alias gs="git status"
alias gc="git commit -m"
alias ga="git add ."
alias nah="git reset --hard && git clean -df"
alias gl='git log --decorate --oneline --graph --all'
alias gch='git checkout'
alias dev='npm run dev'
alias watch='npm run watch'
alias pbcopy='xclip -sel clip'

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

DIR=${PWD##*/}
if [ "code" = "$DIR" ] || [ "projects" = "$DIR" ]; then
    ls
fi

composer-link() {  
    composer config repositories.local '{"type": "path", "url": "'$1'"}'
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

# https://alexvanderbist.com/posts/2019/running-laravel-scheduler-without-setting-up-cron
function scheduler () {
    while :; do
        php artisan schedule:run
    	echo "Sleeping 60 seconds..."
        sleep 60
    done
}

function greview () {
    current=`git symbolic-ref --short HEAD`
    git checkout master
    git fetch --prune
    git merge
    git checkout $current
    git pull -f
    git rebase master
}
