## **Commandes Linux**

### **1. Introduction au shell**
- Le **shell** est une interface permettant d’exécuter des commandes en ligne.
- Les commandes peuvent être :
  - **Internes** : Intégrées au shell, comme `cd`, `pwd`.
  - **Externes** : Exécutables placés dans des répertoires système comme `/bin` ou `/usr/bin`.

---

### **2. Structure générale des commandes**
- **Syntaxe** :  
  ```bash
  commande [options] [arguments]
  ```
- **Exemple** :  
  ```bash
  ls -l /home
  ```
  - `ls` : Affiche le contenu d’un répertoire.
  - `-l` : Option pour afficher les détails.
  - `/home` : Argument spécifiant le répertoire cible.

---

### **3. Commandes liées à l’environnement**
1. **Informations système** :
   - `lsb_release -a` : Informations sur la distribution Linux.
   - `hostname` : Affiche le nom de la machine.

2. **Informations utilisateur** :
   - `pwd` : Affiche le répertoire courant.
   - `logname` : Affiche le login de l’utilisateur.
   - `who` : Liste les utilisateurs connectés.

3. **Gestion des mots de passe** :
   - `passwd` : Permet à un utilisateur de changer son mot de passe.

4. **Changement d’utilisateur** :
   - `su [utilisateur]` : Bascule vers un autre utilisateur.

---

### **4. Commandes liées au système de fichiers**

#### **Navigation dans les répertoires**
- `cd [répertoire]` : Change de répertoire.
  - `cd ..` : Remonte d’un niveau.
  - `cd /` : Va à la racine.
  - `cd -` : Revient au répertoire précédent.
- `pwd` : Affiche le répertoire courant.

---

#### **Gestion des répertoires**
- `mkdir [répertoire]` : Crée un répertoire.
  - `mkdir -p chemin/vers/répertoire` : Crée une arborescence complète.
- `rmdir [répertoire]` : Supprime un répertoire vide.

---

#### **Gestion des fichiers**
1. **Création de fichiers** :
   - `touch fichier` : Crée un fichier vide.
   - `vi fichier` : Ouvre un fichier dans l’éditeur vi.

2. **Affichage du contenu des fichiers** :
   - `cat fichier` : Affiche le contenu d’un fichier.
   - `more fichier` : Affiche le contenu page par page.
   - `less fichier` : Affiche le contenu avec navigation avant/arrière.
   - `head fichier` : Affiche les premières lignes (10 par défaut).
     - `head -n N fichier` : Affiche les N premières lignes.
   - `tail fichier` : Affiche les dernières lignes (10 par défaut).
     - `tail -n N fichier` : Affiche les N dernières lignes.

3. **Manipulation des fichiers** :
   - `cp source destination` : Copie des fichiers.
     - `cp -r source destination` : Copie récursive pour les répertoires.
   - `mv source destination` : Déplace ou renomme un fichier.
   - `rm fichier` : Supprime un fichier.
     - `rm -r répertoire` : Supprime un répertoire et son contenu.
     - `rm -f fichier` : Supprime sans confirmation.

---

#### **Informations sur les fichiers**
1. `ls` : Liste les fichiers d’un répertoire.
   - `ls -l` : Affiche les détails des fichiers.
   - `ls -a` : Affiche les fichiers cachés.
2. `file fichier` : Identifie le type d’un fichier.
3. `wc fichier` : Affiche le nombre de lignes, mots, et caractères :
   - `wc -l` : Nombre de lignes.
   - `wc -w` : Nombre de mots.
   - `wc -c` : Nombre de caractères.

---

#### **Permissions et droits d'accès**
1. **Modification des droits** :

- **Permissions sous UNIX** :  
   Chaque fichier a des permissions pour **le propriétaire**, **le groupe**, et **les autres utilisateurs**.  
   Ces permissions sont représentées par un code binaire de 3 chiffres, où chaque chiffre définit les permissions pour chaque catégorie.

- **Droits sous forme binaire** :
   - **Lecture (`r`)** : Représentée par 4 (binaire `100`).
   - **Écriture (`w`)** : Représentée par 2 (binaire `010`).
   - **Exécution (`x`)** : Représentée par 1 (binaire `001`).

   Ces droits sont combinés pour chaque utilisateur :
   - Le **propriétaire** : `rwx` = 7 (binaire `111`).
   - Le **groupe** : `rw-` = 6 (binaire `110`).
   - Les **autres** : `r--` = 4 (binaire `100`).

   **Exemple de commande** :
   ```bash
   chmod 755 fichier   # Propriétaire : rwx (7), Groupe : r-x (5), Autres : r-x (5)
   ```

- **Explication de la commande `chmod` avec la forme binaire** :
   La commande `chmod` utilise la forme numérique pour affecter les permissions :
   - **7** : Lecture (4), Écriture (2), Exécution (1) → rwx (Propriétaire)
   - **5** : Lecture (4), Exécution (1) → r-x (Groupe et Autres)

   Vous pouvez spécifier les permissions comme suit :
   ```bash
   chmod 755 fichier   # rwx pour le propriétaire, r-x pour le groupe et les autres.
   ```

- **Utilisation des chiffres** : Les permissions sont représentées par des chiffres allant de **0 à 7** (en binaire).
  - Exemple :  
    `chmod 644 fichier` donne :  
    - Propriétaire : `rw-` (6 en binaire `110`),  
    - Groupe et autres : `r--` (4 en binaire `100`).

- **Forme symbolique** :
  Vous pouvez aussi utiliser la forme symbolique avec des opérateurs :
  - `+` : Ajouter des droits.
  - `-` : Supprimer des droits.
  - `=` : Définir des droits spécifiques.

  Exemple :
  ```bash
  chmod u+x fichier    # Ajoute le droit d'exécution au propriétaire.
  chmod g-w fichier    # Supprime le droit d'écriture au groupe.
  chmod o=r fichier    # Donne uniquement le droit de lecture aux autres utilisateurs.
  ```

2. **Modification du propriétaire ou du groupe** :
   - `chown utilisateur fichier` : Change le propriétaire.
   - `chgrp groupe fichier` : Change le groupe.

---

#### **Liens dans le système de fichiers**
1. **Lien physique (hard link)** :
   - `ln fichier_source fichier_lien` : Crée un lien physique.
2. **Lien symbolique (symbolic link)** :
   - `ln -s fichier_source fichier_lien` : Crée un lien symbolique.

---

#### **Recherche et filtrage**
1. **Recherche de fichiers** :
   - `find répertoire -name nom_fichier` : Recherche par nom.
   - `find . -type f -size +1M` : Recherche de fichiers > 1 Mo.
2. **Recherche de texte** :
   - `grep "texte" fichier` : Recherche une chaîne dans un fichier.
     - Options :  
       - `-i` : Ignore la casse.
       - `-n` : Affiche les numéros de ligne.
       - `-v` : Affiche les lignes qui ne contiennent pas le texte.

---

### **5. Redirections et pipes**

1. **Redirections** :
   - `>` : Redirige la sortie standard vers un fichier (écrase).  
     ```bash
     commande > fichier
     ```
   - `>>` : Redirige la sortie standard en mode ajout.  
     ```bash
     commande >> fichier
     ```
   - `<` : Redirige l'entrée standard depuis un fichier.  
     ```bash
     commande < fichier
     ```

2. **Pipes** :
   - Envoie la sortie d’une commande comme entrée d’une autre commande :  
     ```bash
     commande1 | commande2
     ```

---

### **6. Commandes avancées**

#### **Gestion des processus**
1. `ps` : Affiche les processus en cours.
2. `top` : Affiche les processus en temps réel.
3. `kill PID` : Termine un processus (PID = identifiant du processus).

---

#### **Archivage et compression**
1. **Archivage** :
   - `tar -cvf archive.tar fichiers` : Crée une archive.
   - `tar -xvf archive.tar` : Extrait une archive.
2. **Compression** :
   - `gzip fichier` : Compresse un fichier.
   - `gunzip fichier.gz` : Décompresse un fichier.

---

### **7. Documentation et aide**
1. `man commande` : Affiche le manuel d’une commande.
2. `whatis commande` : Résume brièvement une commande.
3. `help commande` : Affiche l'aide pour une commande interne.

