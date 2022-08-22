
//NOTES------------------------------------------------------------------------------------------------------
Commit => Snapshot of project
Staging Area ou Index -> Lendroit ou on propose le next commit -> On dit que le fichier est "staged"
Pour deux differentes résolutions de problèmes faire deux commit avec les commentaires 
Pull Request : Soumettre contribution à un projet ou on est pas le seul dev
Branch => 	Copie du code source auquel on souhaite apoprter des modifications
			Si tout cest bien passe on pourra alors faire un "merge"




//COMMANDES----------------------------------------------------------------------------------------------------
git config --help  				//Donne des infos ou de l'aide sur les commandes
git config -h 					//Meme chose que --help en condensé
git init 						//Initialise un nouveau repo (crée un dossier .git dans le dossier du projet, mais tout d'abord il faut se placer a la racine du projet)
git add file1 file2				//On place dans le staging Area ce qu'on a fait
git commit -m "Initial commit"	//Place de manière permanente les fichiers dans le repo (Important de laisser un commentaire pour rendre l'historique lisible => avec me -m)
git add . 						//Le point ajoute au repo git tout les fichiers contenu dans le dossier
git add *.txt					//L'asterix ajoute au repo git tous les fichiers .txt contenus dans le dossier
git status 						//Montre (selon la couleur) si des fichiers ont été commmit ou non
git commit -a					//Commit All 
git ls-files					//Liste les fichier que l'on a dans notre repo
git mv main.js file1.js			//Renomme file1.txt en main.js
git status -s					//Donne un statut court (? = Not added, M = Modified, A = Added)
git log 						//Donne un historique des manip faites sur git
git log --oneline				//Donne un historique des manips en condensé (une action = une ligne)




//IGNORE FILES (Ex:On a un dossier logs contenant un fichier dev.log que l'on souhaite ignorer)
echo logs/ >.gitignore			//On crée un fichier sans nom juste avec une extension
code .gitignore					//On ouvre le fichier avec vsCode
		logs/					//toutes les lignes indentés sont inscrite dans le fichier .gitignore grace à l'interface VSCode
		main.log
		*.logs				
git status						//Ignore le dossier log mais pas le fichier .gitignore
git add .gitignore
git commit -m "Add gitignore"	
//--------------------

//ARGUMENTS------------------------------------------------------------------------------------------------------
--global						//Apply to all our repo


