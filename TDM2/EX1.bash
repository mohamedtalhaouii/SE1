#Q1
mkdir -p test/rep2/rep3
mkdir -p test/rep1/rep4
cd test
touch lpfic6 lsfic6 lsrep4
cd rep2
touch lslsrep4
cd ..; cd rep1
touch fic2
cd rep4; touch fic6

#Q2
sudo apt-get install gedit

#Q3
cd test/rep1
gedit fic2 #Remplissage
wc -l fic2

#Q4
mv fic2 /home/mohamedtalhaoui/test/rep2/rep3

#Q5
cd /test/rep2/rep3
touch fic3
chmod a-r fic3

#Q6
rm fic3 #on peut supprime le fichier car il est protégé 
cd test/rep1/; rmdir rep4