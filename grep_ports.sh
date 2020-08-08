cat $1 | awk '{printf "%s\t", $2;
      for (i=4;i<=NF;i++) {
        split($i,a,"/");
        if (a[2]=="open") printf ",%s",a[1];}
      print ""}' | sed -e 's/,//' | sort -n -t . -k 1,1 -k 2,2 -k 3,3 -k 4,4 | sed '
  N
  s/\(.*\)\n\(.*\)/\2,\1/
 ' | sed 's/\(.*\),.*/\1/' | tail -n +2 | awk '{print $2}' | awk '!NF{$0="null"}1' > data/ports.txt