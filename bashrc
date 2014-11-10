# A pretty color terminal
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]> '

# add everything in my /bin dir and subdirs to the path
for d in ~/bin/*/; do
	PATH+=":$d"
done

# fix java home
export JAVA_HOME=$(/usr/libexec/java_home)
export ELASTICSEARCH_HOME="/usr/local/Cellar/elasticsearch/0.1.1.1/"

# use the one true editor 
export EDITOR='vim'

# Start powerline
#powerline-daemon -q
#. /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

# load my aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
