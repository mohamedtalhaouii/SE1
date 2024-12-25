gedit script.sh
#----------------------------------#
#!/bin/bash
readonly x=7
echo $x
x=9
unset x
#----------------------------------#
#4 : on peut pas modifier une variable en lecture seule
#5 : on peut pas détruire une variable en lecture seule