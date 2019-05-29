<?php
return [
    'welcome'           => [
        'name'      => 'Verser de l\'argent',
        'version'   => '1,7',
        'title'     => 'Bienvenue à l\'installateur!',
        'sub-title' => 'Votre serveur a toutes les exigences et autorisations pour cette application. Avant de nous lancer, nous avons besoin d\'informations sur votre base de données:',
        'item1'     => 'Nom de la base de données',
        'item2'     => 'Base de données',
        'item3'     => 'Mot de passe',
        'item4'     => 'Hébergeur',
        'message'   => 'Nous utiliserons ces informations pour mettre à jour le fichier d\'environnement',
        'button'    => 'Allons-y !',

    ],
    'database'          => [
        'title'          => 'Paramètre de base',
        'sub-title'      => 'Si vous ne savez pas comment remplir ce formulaire, contactez votre hébergeur',
        'dbname-label'   => 'Nom de la base de données (où vous voulez que votre application soit)',
        'username-label' => 'Nom d\'utilisateur (Identifiant de votre base de données)',
        'password-label' => 'Mot de passe (mot de passe de votre base de données',
        'host-label'     => 'Nom d\'hôte (devrait être "localhost", si cela ne fonctionne pas, demandez à votre hébergeur)',
        'button'         => 'Envoyer',
        'wait'           => 'Un peu de patience ...',

    ],
    'database-error'    => [
        'title'     => 'Erreur de connexion à la base',
        'sub-title' => 'Nous ne pouvons pas nous connecter à la base de données avec vos paramètres:',
        'item1'     => 'Êtes-vous sûr de votre nom d\'utilisateur et mot de passe?',
        'item2'     => 'Êtes-vous sûr de votre nom d\'hôte?',
        'item3'     => 'Êtes-vous sûr que votre serveur de base de données fonctionne?',
        'message'   => 'Si vous n\'êtes pas très sûr de comprendre tous ces termes, vous devriez contacter votre hébergeur.',
        'button'    => 'Réessayer !',

    ],
    'requirement-error' => [
        'title'       => 'Il y a une erreur d\'exigence',
        'requirement' => 'Nous ne pouvons pas installer cette application car cette exigence PHP est manquante:',
        'php-version' => 'La version de PHP doit être au moins 5.5.9 mais votre version est',
        'message'     => 'Vous devez corriger cette erreur pour continuer l\'installation!',

    ],
    'permission-error'  => [
        'title'     => 'Il y a une erreur d\'autorisation',
        'sub-title' => 'Nous ne pouvons pas installer cette application car ce dossier n\'est pas accessible en écriture:',
        'message'   => 'Vous devez corriger cette erreur pour continuer l\'installation!',

    ],
    'register'          => [
        'title'      => 'Création d\'un administrateur',
        'sub-title'  => 'Vous devez maintenant entrer les informations pour créer l\'administrateur',
        'base-label' => 'Votre',
        'message'    => 'Vous aurez besoin de votre mot de passe pour vous connecter, alors gardez-le en sécurité!',
        'button'     => 'Envoyer',

    ],
    'register-fields'   => [
        'first_name' => 'Prénom',
        'last_name'  => 'Nom de famille',
        'email'      => 'email',
        'password'   => 'mot de passe',

    ],
    'end'               => [
        'title'     => 'Installation réussie!',
        'sub-title' => 'L\'application et maintenant installé et vous pouvez l\'utiliser',
        'login'     => 'Votre identifiant:',
        'password'  => 'Votre mot de passe :',
        'button'    => 'S\'identifier',

    ]];
