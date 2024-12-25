#Q1
ls -l /ect | more

#Q2
mkfifo monPipe
#Etudiant 1 :
echo "Redirigez la sortie de la commande ls -l /etc vers l'entree de la commande more" > monPipe
#Etudiant 2 :
cat < monPipe
ls -l /ect | more > monPipe
#Etudiant 1 :
cat < monPipe
rm monPipe
