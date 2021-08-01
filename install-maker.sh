#!/usr/bin/env bash

FILENAME='setup.sh'

cat > $FILENAME <<- EOM
#!/usr/bin/env bash

# commands that you need to do ...
# ...

unzip <(tail -n +$((LINENO + 2)) "$0")
exit
EOM

chmod +x $FILENAME

cat $ARCHIVE >> $FILENAME
