#Q1 :
mkdir Jawad Karim
cd Karim; mkdir Module1 Module2 Module3
cd Module1; mkdir Cours TP
cd TP; mkdir TP1 TP2 TP3 TP4
#OU
mkdir -p Jawad Karim/Module1/Cours Karim/Module1/Cours/TP Karim/Module2 Karim/Module3
cd Karim/Module1/Cours/TP; mkdir TP1 TP2 TP3 TP4

#Q2 :
ls; ls -l; ls -a

#Q3 : Le repertiore jawad est vide

#Q4 :
rmdir Jawad; rmdir -p Karim/Module1/Cours/TP/TP4

#Q5 :
cd Karim/Module1/Cours/TP; ls