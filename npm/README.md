
# Installing Node.js modules globally without sudo

npm install -g without sudo

    $ npm config set prefix ~/.npm

Edit your rc file

    export PATH=$HOME/.npm/bin:$PATH

# Reference

[Installing Node.js modules globally without sudo?](http://www.reddit.com/r/archlinux/comments/29pw2o/installing_nodejs_modules_globally_without_sudo/)

[Best way to install nodejs packages? (npm vs pacman)](https://bbs.archlinux.org/viewtopic.php?id=179535)

