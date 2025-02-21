@echo off
setlocal enabledelayedexpansion

:: Personnalisez ces variables avec vos informations KeyAuth
set API_KEY=<VOTRE_API_KEY>
set API_SECRET=<VOTRE_API_SECRET>
set APP_ID=<VOTRE_APP_ID>

:: Demandez à l'utilisateur de saisir son nom d'utilisateur et sa clé
set /p USERNAME=Entrez votre nom d'utilisateur : 
set /p USERKEY=Entrez votre clé d'utilisateur : 

:: URL de base pour les requêtes KeyAuth
set BASE_URL=https://keyauth.win/api/1.0/

:: Construisez l'URL pour la vérification de la clé
set VERIFY_URL=!BASE_URL!login
set ARGS=app=!APP_ID!&username=!USERNAME!&key=!USERKEY!&hash=!API_SECRET!

:: Envoyez la requête pour vérifier la clé
echo Vérification de la clé...
curl -X GET "!VERIFY_URL!?!ARGS!" -H "Authorization: Bearer!API_KEY!" -s -o response.txt

:: Lire la réponse de l'API
set /p RESPONSE=<response.txt

:: Supprimer le fichier temporaire de réponse
del /q response.txt

:: Traitement de la réponse (basique, personnalisez selon les réponses attendues de l'API)
if "!RESPONSE!"=="true" (
    echo Connexion réussie!
    :: Ajoutez ici les commandes à exécuter après une connexion réussie
) else (
    echo Échec de la connexion. Vérifiez vos informations.
    :: Ajoutez ici les commandes à exécuter en cas d'échec de connexion
)

pause