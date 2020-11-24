# set input filename to category directory name
#
CATEGORY=`pwd | awk -F/ '{print $NF}'`
while read n
do
awk -v cat="$CATEGORY" ' BEGIN { print "[" } 
            { print "\{\"" substr($1,1,10) "\":\""cat"\"\}," }
      END   { print "]"  } ' 
done
