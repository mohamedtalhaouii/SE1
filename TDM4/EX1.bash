#Q1
mkdir -p rep/jours.txt 2> rep/joursErreur.txt

#Q2
cd rep
gedit jours.txt &

#Q3
ps > processus.txt

#Q4
ls 

#Q5
# Executer cmds, si les deux commandes sont vrai 
cd rep && ls -a # dans notre cas, les cmds n'execute pas car on a deja dans le repertoire rep (cd rep => est faux)

#Q6
ps
kill 1234 # 1234 est le PID de processus gedit