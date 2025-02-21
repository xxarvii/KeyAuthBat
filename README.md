Installation de curl : Le script utilise curl pour envoyer des requêtes à l'API KeyAuth. Assurez-vous que curl est installé sur votre système et accessible via la ligne de commande. Si ce n'est pas le cas, vous pouvez le télécharger depuis https://curl.se/download.html.

Informations d'API KeyAuth : Vous aurez besoin des détails suivants de votre projet KeyAuth :

API Key (Clé d'API)
API Secret (Secret d'API)
L'ID de votre application (App ID)
Le nom d'utilisateur et la clé que vous souhaitez utiliser pour la connexion (ces informations seront saisies par l'utilisateur ou définies à l'avance dans le script, selon vos besoins)
Sécurité : Les fichiers batch ne sont pas la méthode la plus sécurisée pour stocker ou transmettre des informations sensibles comme des clés API. Utilisez ce script pour des buts éducatifs ou de test. Pour des applications de production, considérez des langages de programmation plus robustes et sécurisés.

Remarques Importantes :
Sécurité des Informations : N'oubliez pas de supprimer ou de sécuriser correctement les informations sensibles une fois le test effectué, especialmente si vous utilisez des versions de ce script dans un environnement de production.
Personnalisation : Selon la structure spécifique de réponse de l'API KeyAuth et vos besoins, vous devrez peut-être personnaliser la partie de traitement de la réponse (if "!RESPONSE!"=="true").
Dépendances : Assurez-vous que curl est bien installé et fonctionnel sur les machines qui exécuteront ce script.
Ce script est un point de départ. Selon votre application spécifique, vous pourriez devoir l'adapter pour gérer les différents scénarios de connexion, les erreurs potentielles, et améliorer la sécurité des informations sensibles.
