---
title: Guide de l'utilisateur final de DHIS2
---

<!--DHIS2-SECTION-ID:index-->

# À propos de ce guide

<!--DHIS2-SECTION-ID:about_this_guide_-->

La documentation de DHIS2 est un effort collectif est à été développée par l'équipe de développement mais aussi par les utilisateurs. Bien que ce guide vise à être complet, il se peut que certaines fonctionnaliés aient été omises ou doivent encore être documentées. Cette section explique certaines des conventions utilisées dans le document

DHIS2 est une application fonctionnant dans un navigateur. Dans la plupart des cas, des impressions d'écran ont été incluse pour une meilleure compréhension. Des raccourçis vers diverses fonctionnalités sont affiché comme **Element de donnée** \> **Groupe d'élément de données**. Le symbole "\>" indique que vous devez cliquer sur **Element de donnée** et ensuite sur **Groupe d'élément de données**

Differents styles de texte ont été utilisés pour mettre en avant des parties importantes ou des types particulier de texte comme par exemple du code source. Chaque convention est expliquée ci-dessous:

> **Note**
>
> Une note contient des informations complémentaires à considérer ou une référence vers de l'information additionnelle

> **Truc**
>
> Un truc peut être un conseil utile, par exemple comment effectuer une tâche de manière plus efficiente

> **Important**
>
> Les informations importantes ne doivent pas être ignorées et indiquent souvent quelque chose que l'application requiert.

> **Prudence**
>
> L'information dans ces sections doit être lue avec attention. Ne pas la suivre peut mener à des résultats innattendus

> **Attention**
>
> L'information dans ces sections doit être lue avec attention. Ne pas la suivre peut mener à des pertes de données ou des problèmes de stabilité dans le système.

    Les programmes contiennent le plus souvent du code informatique
    Ils sont affichés sur un background ombré et avec une police distincte

`Les commandes sont affichées en gras et représentent une commande à exécuter sur le système d'exploitation ou la base de données.`

Les liens vers des sites externes ou références croisées sont affichés en bleu et soulignés comme [ceci.](http://www.dhis2.org).

<!--
Bibliographic references will displayed in square brackets like this
Store2007. A full reference can be found in the bibliography contained
at the end of this document.
-->

# A propos du serveur démo, le forfait live et la conception de base de données

<!--DHIS2-SECTION-ID:moare_about_dhis2_server_database-->

## Utilisation du serveur démo de DHIS2

L'équipe DHIS2 gère un serveur de démonstration dont l'adresse est <https://play.dhis2.org/demo>. C'est le moyen le plus simple pour essayer DHIS2. Il suffit d'ouvrir le lien dans votre navigateur web et vous connecter nom d'utilisateur = admin et mot de passe = district.

> **Note**
>
> Toutes les modifications effectuées sur ce serveur sont supprimées chaque soir. Ne sauvegardez aucun travail important sur ce serveur. Il est exclusivement conçu pour des fins de démonstration\!

## Utilisation du forfait live de DHIS2

<!--DHIS2-SECTION-ID:mod2_1-->

### Démarrer avec le forfait live de DHIS2

Le forfait live de DHIS2 est le moyen le plus simple d'utiliser DHIS2 sur votre ordinateur local. Le forfait live DHIS2 est convenable pour une installation et des démos indépendantes. Il suffit de télécharger l'application sur ce [lien](http://www.dhis2.org/downloads). Une fois le fichier téléchargé, vous pouvez simplement double-cliquer sur le fichier téléchargé, et commencer à utiliser DHIS2.

#### Les prérequis pour utiliser DHIS2 Live

Vous devez vous assurer d'avoir une version actualisée de JAVA Runtime sur votre dispositif. Selon votre système d'exploitation, il existe différentes méthodes pour installer JAVA. Vous pouvez vous référer à ce [siteweb](http://java.sun.com/javase/downloads/index.jsp) pour plus détails sur l'installation de JAVA.

#### A partir d'une base de données vierge

Le forfait live inclut une base de données de démonstration semblable à celle sur la [démo en ligne](http://apps.dhis2.org/demo/) (qui est basée sur l'indice HMIS national de la Sierra Leone), et si vous souhaitez commencer avec un système/base de données vierge et construire votre propre système vous devez suivre les étapes suivantes:

1\) Arrêtez DHIS2 live s'il est en cours d'exécution. Faites un clic droit sur l'icône barre de taches et sélectionnez Quitter. La barre de taches est le symbole vert en bas à droite de votre écran(sur Windows) qui devrait afficher 'Serveur DHIS2 en cours d'exécution' quand vous pointez votre curseur sur l'icône.

2\) Ouvrez le dossier dans lequel DHIS2 forfait live est installé et localisez le dossier nommé "conf".

3\) Dans conf/ ouvrez le fichier nommé 'hibernate.properties' dans un éditeur de texte, (notepad ou similaires) et exécutez les modifications suivantes: localisez l'adresse 'jdbc:h2:./database/dhis2' et remplacez de la partie 'dhis2' par un nom que vous souhaitez attribuer à votre base de données. (e.g. dhis2_test).

4\) Sauvegardez et quittez le fichier hibernate.properties.

5\) Démarrez DHIS2 Live en double-cliquant sur le fichier dhis2-live.exe dans le fichier d'installation de DHIS2 Live en utilisant un raccourci sur le bureau ou un lien de menu que pouvez éventuellement configurer.

6\) Attendez que l'écran de connexion s'affiche sur la fenêtre de votre navigateur, puis connectez-vous avec les identifiants nom d'utilisatuer: admin et mot de passe: district

7\) Maintenant vous verrez un système DHIS2 vierge et vous devriez commencer par ajouter vos utilisateurs, hiérarchie organisationnelle, éléments de données, sets de données, etc. Veuillez vous référer aux autres sections du manuel d'utilisateur.

### Télécharger et installer la version serveur

La dernière version stable de la version serveur peut être téléchargée à partir de ce [siteweb](http://stable.dhis2.org/). Pour plus d'informations sur son installation, veuillez vous reporter au chapitre d'installation dans le manuel d'implémentation.

## Se connecter à DHIS2

<!--DHIS2-SECTION-ID:mod2_2-->

Que vous ayez installé la version serveur de la version live sur ordinateur ou non, vous devrez utiliser un navigateur web pour vous connecter à l'application. DHIS2 est compatible avec les versions récentes de navigateurs, cependant vous devez vous assurer que Java Script est activé

Pour vous connecter à l'application, allez à l'adresse <http://localhost:8080/dhis> si vous utilisez DHIS2 forfait live, ou remplacez `localhost` par le nom ou adresse IP du serveur dans lequel la version serveur est installée.

Dès que vous avez démarré DHIS2, en-ligne ou hors-ligne, l'écran qui s'affiche vous invite à entrer votre nom d'utilisateur et mot de passe. Après avoir entré les informations nécessaires, cliquez sur le bouton se connecter pour vous connecter à l'application. Le nom d'utilisateur et mot de passe par défaut sont respectivement 'admin' et 'district'. Il est recommandé de les modifier dès votre première connexion.

![](resources/images/content/user/getting_started/login.png)

Vous pouvez sélectionner la langue dans laquelle vous souhaiter utiliser DHIS2 à partir de la boîte de dialogue "Changer de langue" en bas de l'écran. Certaines langues ne sont pas disponibles.

Si vous avez oublié votre mot de passe, vous pouvez cliquer sur le lien "Mot de passe oublié". Vous devez avoir prélablement entré votre adresse électronique sur DHIS2 et le serveur doit être configuré correctement pour envoyer des emails.

Si vous souhaitez créer votre propre compte (et le serveur administrateur le permet), cliquez simplement sur "Créer un compte" et suivez les instructions.

Une fois connecté à DHIS2, reportez-vous aux sections spécifiques de ce manuel pour connaître les différentes fonctionnalités disponibles.

## Se déconnecter de DHIS2

<!--DHIS2-SECTION-ID:mod2_4-->

Cliquez simplement sur le Profil puis sur "Se déconnecter" en haut à droite dans le menu DHIS2.

## Introduction rapide à la conception d'une base de données DHIS2

<!--DHIS2-SECTION-ID:database_design-->

DHIS2 offre un ensemble de divers outils pour la collecte de données, la validation, le reporting et l'analyse de données, mais le contenu de la base de données, ex. ce qu'il faut collecter, par qui et sous quel format dépendra du contexte d'utilisation. Cependant, pour utiliser DHIS2, vous devez d'abord créer des métadonées. Les métadonnées, ou données sur les données, décrivent ce qui doit être collecté (éléments de données et catégories), ou cela doit être collecté (unités d'organisation) et à quelle fréquence il doit être collecté (périodes). Ces métadonnées doivent être créées dans la base de données DHIS2 pour qu'elles puissent être utilisées. Cela peut se faire à partir de l'interface de utilisateur et ne nécessite pas de programmation ni de compétences techniques pointues, mais requiert une bonne connaissances des processus à partir desquels vous souhaitez collecter des données.

Cette section représente une introduction brève et rapide à la conception de base de données sur DHIS2 et explique les différentes étapes nécessaires à la préparation d'un nouveau système prêt à être utilisé. Les spécifcités de chaque étape sont epxliquées dans différents autres chapitres, et les meilleures pratiques en choix de conception sont expliquées dans le manuel d'implémentation. Voici les étapes à suivre:

1\. Configurer une hiérarchie organisationnelle

2\. Définir les éléments de données

3\. Définir les sets de données et les modèles de saisie de données

4\. Définir les règles de validation

5\. Définir les indicateurs

6\. Définir les tableaux de rapports et concevoir les rapports

7\. Configurer le module GIS

8\. Concevez des graphiques et personnalisez le tableau de bord

### La hiérarchie organisationnelle

La hiérarchie organisationnelle définit l'organisation à l'aide de DHIS2, des établissements médicaux, zones administratives et autres zones géographiques utilisées dans la collection et l'analyse de données. Cette dimension de données est définie comme hiérarchie avec une unité mère (ex. Ministère de la santé)et un nombre quelconque de niveaux et de noeuds en-dessous. Chaque noeud dans cette hiérarchie est appelé unité d'organisation dans DHIS2.

La conception de cette hiérarchie détérmine les unités géographiques d'analyse disponibles à l'utilisateur puisque les données sont collectées et agrégées dans cette structure. Il ne peut y avoir qu'une seule hiérarchie d'organisation à la fois, il faut donc faire attention à sa structure. Des hiérachies supplémentaires (ex. regroupements administratifs parallèles comme "Titularité des établissements") peuvent être modélisées à l'aide de regroupements organisationnels et des sets des ensembles de regroupements, mais la hiérarchie organisationnelle représente le principal moyen d'agrégation de données sur la dimension géographique. Les hiérarchies organisationnelles nationales typiques dans le domaine de la santé publique ont 4 à 6 niveaux, mais peuvent prendre en charge n'importe quel nombre de niveaux. La hiérarchie est constituée de relations parent-enfant, ex. Un pays ou une unité MoH (unité mère ou racine) peut avoir par exemple 8 unités parents (provinces), et chaque province ( en niveau 2) peut avoir 10 à 15 arrondissement en tant qu'enfant. Normalement, les établissements médicaux sont localisées dans les niveaux les plus bas, mais il peuvent également être placées dans niveaux plus élevés, ex. les hopitaux nationaux ou provincaux, donc les arborescences asymétriques sont également supportées (ex. un noeud feuille peut être placé au niveau 2 alors que la plupart des noeuds feuilles sont au niveau 5).

Il existe généralement une hiérarchie géographique définie par le système de santé. ex. ou se situent les bureaux administratifs(ex. Ministère de la santé, province, arrondissement), mais il y'a souvent d'autres limites administratives dans le pays qui peuvent être ajoutées ou pas, selon comment leur limites vont influencer l'analyse des données. En concevant la hiérarchie le nombre d'enfants de toute unité organisationnelle peut indiquer l'utilité de la structure, ex. avoir une relation 1-1 ou plus entre deux niveaux n'est pas très utile car les valeurs seront les mêmes pour le niveau enfant et le niveau parent. D'autre part, un très grand nombre d'enfants dans le milieu de la hiérarchie (ex. 50 arrondissements dans la même province) peut nécessiter l'ajout d'un niveau supplémentaire pour augmenter l'utilité de l'analyse des données. Au niveau le plus bas, les établissements médicaux auront souvent un grand nombre d'enfants (10 à 60), mais pour les autres niveaux plus haut dans la hiérarchie environ il est recommandé d'avoir 5 à 20 enfants. Peu ou trop d'enfants pourraient indiquer qu'un niveau doit être supprimé ou ajouté.

Notez qu'il est facile et pratique d'apporter des modifications aux niveaux supérieurs de la hiérarchie dans des étapes ultérieures, le seul problème est la modification des unités organisationnelles qui sont responsables de la collecte de données (les nuds feuilles), ex. la dissociation ou l'association d'établissements médicaux. L'agrégation dans la hiérarchie est effectuée en fonction de l'état de la hiérarchie à tout moment et reflétera toujours les modifications les plus récentes apportées à la structure organisationnelle. Reportez-vous au chapitre sur les unités d'organisation pour apprendre à créer des unités d'organisation et de construire la hiérarchie.

### Eléments de données

Les éléments de données sont peut-être l'élément de base le plus important d'une base de données DHIS2. Ils représentent la dimension "QUOI" , ils expliquent ce qui est collecté ou analysé. Dans certains contextes, il s'agit d'un indicateur, mais dans DHIS2, nous appelons cette unité de collecte et d'analyse un _élément de données_. L'élément de données représente souvent un compte de quelque chose, et son nom décrit ce qui est compté, ex. "Doses de BCG données" ou "Cas de Paludisme". Lorsque les données sont collectées, validées, analysées, rapportées ou présentées, ce sont les éléments de données ou expressions construites sur ces éléments de données qui décrivent le QUOI de ces données. De cette manière, les éléments de données deviennent important pour tous les aspects du système et ils décident non seulement de la manière dont les données sont collectées, mais également et plus important encore, la manière dont les valeurs de données sont représentées dans la base de données, qui décide comment les données peuvent être analysées et présentées

Il est possible d'ajouter plus de détails à cette dimension "QUOI" à travers la dimension désagrégation appelée catégories d'éléments de données. Certaines catégories communes sont l'âge et le sexe, mais n'importe quelle catégorie peut être ajoutée par l'utilisateur et liée à des éléments de données spécifiques. La combinaison du nom d'un élément de données et de la catégorie qui lui est attribuée définit la plus petite unité de collecte et d'analyse disponible dans le système, et décrit donc les données brutes de la base de données. Des agrégations peuvent être effectuées lorsque vous zoomez en arrière sur cette dimension, mais aucune autre exploration n'est possible, la conception des éléments de données et des catégories définit donc le détail de l'analyse disponible au système (sur la dimension QUOI). Les modifications d'éléments de données et de catégories apportées ultérieurement dans le processus peuvent être compliquées car elles changeront la signification des valeurs de données déjà stockées dans la base de données (s'il en existe). Donc, cette étape est l'une des plus décisives et prudentes du processus de conception de bases de données

Une des meilleures méthodes de conception d'éléments de données consiste à les considérer comme une unité de d'analyse de données et non seulement comme un champ dans le modèle de collecte de données. Chaque élément de données vit indépendamment dans la base de données, complètement détaché du modèle de collecte, les rapports et autres sorties sont basés sur des éléments de données et des expressions/formules composées d'éléments de données et ne sont pas basé sur les modèles de collecte de données. Donc, les besoins en analyse de données devraient guider le processus, et non les modèles de collecte de données. Une règle simple est que le nom de l'élément de données doit pouvoir se débrouiller seul et décrire la valeur de données même en dehors du contexte de son modèle de collecte. Ex. un nom d'élément de données tel que like "références totales" parait logique lorsque vous le regardez soit sous le modèle "RCH" ou le modèle "OPD" , mais le nom tout seul ne décrit pas uniquement les phénomènes (qui sont référés?), et devrait plutôt être appelé "Références totale de Maternité" ou "Références totales de OPD". Deux éléments de données différents avec des significations différentes, bien que le champ du modèle de saisie indique uniquement "Références totales" puisque l'utilisateur du modèle saura toujours d'où viennent ces références. Dans une base de données ou un référentiel d'éléments de données, ce contexte n'est plus valide et donc les noms des éléments de données deviennent important dans la description des données.

Les propriétés communes des éléments de données peuvent être modélisées via ce qu'on appelle des groupes d'éléments de données. Les groupes sont complètement flexibles dans le sens où ils sont définis par l'utilisateur, à la fois leurs noms et leurs membres. Les groupes sont utiles à la fois pour parcourir et présenter des données connexes, mais peuvent également être utilisés pour agréger des éléments de données. Les groupes sont faiblement couplés aux éléments de données et ne sont pas directement liés aux valeurs de données, ce qui signifie qu'ils peuvent être modifiés et ajoutés à tout moment sans interférer avec les données brutes.

### Set de données et modèles de saisie de données

Toute la saisie de données dans DHIS2 est organisée à l'aide de sets de données. Un set de données est une collection d'éléments de données regroupés pour la collecte de données. Dans le cas d'installations distribuées, ils définissent également des blocs de données destinés à l'exportation et à l'importation entre des instances de DHIS2 (ex. à partir d'une installation locale d'un bureau d'arrondissement vers un serveur national). Les sets de données ne sont pas liés directement aux valeurs de données, mais uniquement par le biais de leurs éléments de données et de leurs fréquences. De ce fait, un set de données peut être modifié, supprimé ou ajouté à tout moment sans affecter les données brutes déjà stockées dans le système, mais ces modifications vont évidement affecter la façon dont les nouvelles données seront collectées.

Un set de données a un type de période qui contrôle la fréquence de collecte des données, qui peut être quotidienne, hebdomadaire, mensuelle, trimestrielle, semestrielle ou annuelle. Les éléments de données à inclure dans le set de données et le type de période sont définis par l'utilisateur, ainsi qu'un nom, un nom abrégé et un code.

Pour utiliser un set de données afin de collecter des données pour une unité d'organisation spécifique, vous devez affecter l'unité d'organisation au set de données. Ce mécanisme contrôle quels unités d'organisation pouvent utiliser quels sets de données et définit simultanément les valeurs cibles pour la complétude des données (ex. établissements médicaux d'un arrondissement censés soumettre des données RCH tous les mois).

Un élément de données peut appartenir à plusieurs sets de données, mais cela nécessite une réflexion approfondie, car il peut en résulter en un chevauchement et une collecte de données superposées et inconstantes si ex. les sets de données ont des fréquences différentes et sont utilisés par les mêmes unités d'organisations.

#### Modèles de saisie de données

Une fois que vous avez affecté un set de données à une unité organisationnelle, ce dernier sera disponible dans Saisie de données (sous-Service) pour les unités organisationnelles auxquelles vous l'avez affecté et pour les périodes valides, en fonction du type de période du set de données. Un modèle de saisie de données par défaut s'affichera. Il s'agit simplement d'une liste des éléments de données appartenant à l'ensemble de données ainsi que d'une colonne pour la saisie des valeurs. Si votre ensemble de données contient des éléments de données avec des catégories telles que des groupes d'âge ou de sexe, des colonnes supplémentaires seront automatiquement générées dans le modèle par défaut en fonction des catégories. En plus du modèle de saisie de données basé sur une liste par défaut, il existe deux alternatives supplémentaires: le modèle par section et le modèle personnalisé

##### Modèles par section

Les modèles par section offrent plus de flexibilité lorsqu'il s'agit d'utiliser des formes tabulaires et sont rapides et simple à concevoir. Votre modèle de saisie de données nécessite souvent plusieurs tableaux avec sous-titres, et parfois vous devez désactiver (griser) quelques champs du tableau (ex. certaines catégories ne s'appliquent pas à tous les éléments de données), ces deux fonctions sont prises en charge dans les modèles par section. Après avoir définit un set de données, vous pouvez définir ses sections avec des sous-ensembles d'éléments de données, une en-tête et d'éventuels champs gris dans le tableau de la section. L'ordre des sections dans un set de données peut également être défini. Dans Data Entry, vous pouvez maintenant commencer à utiliser le modèle par Section ( il devrait apparaître automatiquement lorsque des sections sont disponibles pour le set de données sélectionné). Vous pouvez basculer entre modèle par défaut et modèle par section dans en haut à droite de l'écran de saisie. La plupart des modèles de saisie de données tabulaires doivent être possible avec des modèles par section, et plus vous utilisez les modèles par section (ou modèle par défaut) plus cela devient facile. Si ces deux types de modèles ne répondent pas à vos exigences la troisième option est le modèle de saisie de données personnalisé,plus flexible bien qu'il prend plus de temps.

##### Modèles personnalisés

Lorsque le modèle que vous souhaitez concevoir est trop compliqué pour les modèles par défaut ou par section, votre dernière option consiste à utiliser un modèle personnalisé. Cela prend plus de temps, mais vous donne une flexibilité totale en termes de conception. Dans DHIS2, un éditeur HTML intégré (FcK Editor) pour le concepteur de modèle qui permet de concevoir le modèle dans l'interface utilisateur ou de coller directement votre code HTML à l'aide de la fenêtre Source dans l'éditeur. Dans le formulaire personnalisé, vous pouvez insérer du texte statique ou des champs de données (liés à des éléments de données + catégorie) à n'importe quelle position sur le formulaire et vous modèle personnalisé a été ajouté à un set de données, il sera disponible dans la saisie de données et utilisé automatiquement. Vous pouvez revenir aux modèles par défaut ou par sections (s'il en existe) en haut à droite de l'écran de saisie.

### Règles de validation

Une fois que vous avez configuré la partie saisie de données du système et commencé à collecter des données, Il est temps de définir des contrôles de la qualité des données permettant d'améliorer la qualité des données collectées.Vous pouvez ajouter autant de règles de validation que vous le souhaitez. Celles-ci sont composées d'expressions de gauche et de droite qui encore sont composées d'éléments de données, avec un opérateur entre les deux côtés. Les règles typiques consistent à comparer les totaux partiels aux totaux de quelque chose. Ex. si vous avez deux éléments de données "Tests de dépistage du VIH" et "Résultat positif du test de dépistage" vous savez alors que dans le même modèle (pour la même période et la même unité organisationnelle), le nombre total de tests doit toujours être égal ou supérieur au nombre de tests positifs. Ces règles doivent être des règles absolues signifiant qu'elles sont mathématiquement correctes et non pas simplement des hypothèses ou "la plupart du temps correctes". Les règles peuvent être exécutées dans la saisie de données, après avoir rempli chaque modèle, ou dans un processus plus complexe dans plusieurs modèles à la fois, ex. pour toutes les installations du mois précédent. Les résultats des tests listeront toutes les violations et les valeurs détaillées pour chaque côté de l'expression où la violation s'est produite pour faciliter le retour à la saisie des données et corriger les valeurs

### Indicateurs

Les indicateurs représentent la fonctionnalité d'analyse de données la plus puissante de DHIS2. Alors que les éléments de données représentent les données brutes (comptes) collectées, les indicateurs représentent des formules fournissant des taux de couverture, des taux d'incidence, des ratios et d'autres unités d'analyse basées sur une formule. Un indicateur est composé d'un facteur (ex. 1,100, 100, 100 000), d'un numérateur et d'un dénominateur, les deux derniers sont tous deux des expressions basées sur un ou plusieurs éléments de données. Ex. l'indicateur "Assurance BCG \<1 year" est définie par une formule avec un facteur 100, un numérateur ("Les doses BCG données aux enfants de moins de 1") et un dénominateur ("Population cible de moins de 1 an"). L'indicateur "taux d'abandon de DPT1 à DPT3" est une formule de 100% x ("Doses de DPT1 données" - "Doses de DPT3 données") / ("Doses de DPT1 données").

La plupart des modules de rapport dans DHIS2 prennent en charge les éléments de données et les indicateurs et vous pouvez également les combiner dans des rapports personnalisés, mais la différence et la puissance des indicateurs par rapport aux données brutes (valeurs de données éléments de données) réside dans la possibilité de comparer des données entre différentes zones géographiques. (ex. zones très peuplées ou rurales), la population cible pouvant être utilisée comme dénominateur.

Les indicateurs peuvent être ajoutés, modifiés et supprimés à tout moment sans interférer avec les valeurs de données de la base de données.

### Tableaux et rapports

Les rapports standard dans DHIS2 constituent un moyen très flexible de présenter les données collectées. Les données peuvent être agrégées par n'importe quel niveau ou unité d'organisation, par élément de données, par indicateur, ainsi que dans le temps (ex. mensuelle, trimestrielle, annuelle). Les tableaux de rapports sont des sources de données personnalisées pour les rapports standard. Ils peuvent être définis de manière flexible dans l'interface utilisateur, puis accessibles via des concepteurs de rapports externes tels que iReport ou via des rapports HTML personnalisés. Ces conceptions de rapport peuvent ensuite être configurées comme des rapports en un clic facilement accessibles avec des paramètres afin que les utilisateurs puissent exécuter les mêmes rapports, ex. tous les mois lorsque de nouvelles données sont saisies, ainsi que pour les utilisateurs à tous les niveaux, car l'unité organisationnelle peut être sélectionnée au moment de l'exécution du rapport

### GIS

Dans le module GIS intégré, vous pouvez facilement afficher vos données sur des cartes, à la fois sur des polygones(zones) et sous forme de points (établissements médicaux), et soit en tant qu'éléments de données ou en tant qu'indicateurs. En fournissant les coordonnées de vos unités organisationnelles au système, vous pouvez rapidement vous adapter à ce module. Voir la section GIS pour plus de détails pour vous initier

### Diagrammes et tableaux de bord

Un des moyens les plus faciles d'afficher les données de votre indicateur est d'utiliser des graphiques. Un dialogue de diagramme facile à utiliser vous guidera dans la création de divers types de diagrammes avec des données sur les indicateurs, les unités organisationnelles et les périodes de votre choix. Ces graphiques peuvent facilement être ajoutés à l'une des quatre sections de votre tableau de bord et sont facilement disponibles immédiatement après votre connexion. Assurez-vous de définir le module du tableau de bord comme module de démarrage dans les paramètres utilisateur

# Utilisation de l'application de saisie des données

<!--DHIS2-SECTION-ID:data_entry_app-->

## A propos de l'application de saisie de données

<!--DHIS2-SECTION-ID:about_data_entry_app-->

L'application **de saisie de données** est une plateforme ou vous entrez manuellement des données agrégées dans DHIS2. Vous enregistrez les données pour une unité d'organisation, une période donnée, et un ensemble d'éléments (set de données)à la fois. Un set de données correspond généralement à un outil de récupération de données sur papier. Vous configurez le set de données dans l'application de **Maintenance**.

> **Note**
>
> Si un un set de données possède à la fois un modèle par section et un modèle personnalisé, le système affiche le modèle personnalisé durant la saisie de données. L'utilisateur qui saisit la donnée ne peut pas choisir la forme qui lui convient. Dans le cas de saisie de données sur le web, l'ordre de préférence d'affichage est:
>
> 1.  Modèle personnalisé (si il existe)
>
> 2.  Modèle par section(si il existe)
>
> 3.  Modèle par défaut
>
> Les appareils mobiles ne prennent pas en chagre les modèles personnalisés. Dans le cas de la saisie de donnée sur appareil mobile, l'ordre de de préférence d'affichage est :
>
> 1.  Modèle par section(si il existe)
>
> 2.  Modèle par défaut

Quand vous fermez une unité d'organisation, vous ne pourrez plus la modifier dans l'application de **saisie des données**.

## Saisir des données dans un modèle de saisie

<!--DHIS2-SECTION-ID:enter_data_in_data_entry_form-->

![](resources/images/content/user/data_entry/data_entry_overview.png)

1.  Ouvrez l'application de **saisie de données**.

2.  Sélectionnez une unité d'organisation dans l'arborescence à gauche.

3.  Sélectionnez un **jeu de données**.

4.  Sélectionnez une **période**.

    Les périodes disponibles sont contrôlées par le type de période du set de données(fréquence de rapports ). Vous pouvez revenir en arrière ou en avant en cliquant sur **Année précédente** ou **Année suivante**.

    > **Note**
    >
    > Depending on how you've configured the data entry form, you might have to enter additional information before you can open the date entry form. This can for example be a project derived from a category combination.

5.  Saisir des données dans un modèle de saisie.

    - Un champ vert signifie que la valeur a été sauvegardée par le système.

    - Un champ gris signifie que le champ est grisé et que vous ne pouvez pas entrer de valeur. Le curseur passe automatiquement au prochain champ non grisé.

    - Pour passer au champ suivant, appuyez sur la touche Tabulation ou la touche flèche vers le bas.

    - Pour revenir au champ précédent, appuyez simultanément sur les touches Shift+Tabulation ou la touche flèche vers le haut.

    - Si vous entrez une valeur invalide, par exemple un caractère dans un champ qui n'accepte que des valeurs numériques, un message pop-up apparaitra pour expliquer le problème et le champ passera à la couleur jaune (non enregistré) jusqu'à ce que la valeur soit modifiée.

    - Si vous avez défini une fourchette de valeurs pour le champ et que la valeur que vous saisissez n'y est pas comprise, un message pup-up appraitra pour vous indiquer que la valeur n'est pas incluse dans la fourchette. La valeur n'est pas enregistrée jusqu'à ce qu'elle soit modifiée ou que la fourchette soit élargie pour une resaisie de la donnée.

6.  Une fois le modèle complété, cliquez sur **Executer la validation** en haut à droite ou en-dessous du modèle de saisie.

    Toutes les règles de validation qui nécessitent des élements de données du même modèle de saisie (set de données) sont éxécutées contre les nouvelles données. Si les règles de validation sont réspectées, vous verrez le message suivant : **L'écran de données a été validé avec succès**. Dans le cas ou les règles n'ont pas été respéctées, les violations seront présentées sous forme d'une liste.

    ![](resources/images/content/user/dhis2UserManual/Validation_Rule_Result.png)

7.  (Facultatif) Corriger les erreurs de validation.

    > **Note**
    >
    > Zero (0) will delete the value if the data element has been configured to not store zeros.

8.  Une fois les erreurs corrigées et la saisie de données terminée, cliquez sur **Terminé**.

    Le système utilise ces information pour générer des rapports d'avancement pour les arrondissements, les comtés, les provinces ou pour le niveau national.

## Marquer une valeur de donnée pour suivi

<!--DHIS2-SECTION-ID:mark_data_for_followup_in_data_entry_form-->

![](resources/images/content/user/data_entry/data_entry_section_history.png)

Si vous avez des doutes par rapport a une certaine valeur dont vous voulez vous assurer, vous pouvez la conserver dans la système en la marquant pour un suivi. Dans l'application **qualité de données** vous pouvez analyser et corriger toutes les valeurs marquées

1.  Ouvrez l'application de **saisie de données**.

2.  Ouvrez un modèle de saisie existant.

3.  Double-cliquez sur le champ qui contient la valeur que vous souhaitez marquer pour réaliser un suivi.

4.  Appuyez sur l'icone étoile.

## Modifier des valeurs de données dans un modèle de donnée existant

<!--DHIS2-SECTION-ID:edit_data_value_in_completed_form-->

1.  Ouvrez l'application de **saisie de données**.

2.  Ouvrez un modèle de saisie existant.

3.  Cliquez sur **Incomplet**.

4.  Modifiez les valeurs appropriées.

    > **Note**
    >
    > Zero (0) will delete the value if the data element has been configured to not store zeros,

5.  Cliquez sur **terminé**.

## Afficher l'historique d'une valeur de donnée

<!--DHIS2-SECTION-ID:display_data_value_history-->

![](resources/images/content/user/data_entry/data_entry_section_history.png)

Vous pouvez afficher les 12 dernières valeurs enregistrées pour un champ.

1.  Ouvrez l'application de **saisie de données**.

2.  Ouvrez un modèle de saisie existant.

3.  Double-cliquez sur le champ qui contient la valeur dont vous voulez afficher l'historique.

4.  Cliquez sur **historique de données**.

## Affihcer le journal d'audit d'une valeur de donnée

<!--DHIS2-SECTION-ID:display_data_value_audit_trail-->

![](resources/images/content/user/data_entry/data_entry_audit_trail.png)

Un journal d'audit permet d'afficher les valeurs qui ont été saisies avant la valeur actuelle. Il permet également de savoir si la valeur a été modifiée et quel utilisateur a effectué ce changement.

1.  Ouvrez l'application de **saisie de données**.

2.  Ouvrez un modèle de saisie existant.

3.  Double-cliquez sur le champ qui contient la valeur dont vous voulez afficher l'historique.

4.  Cliquez sur **Journal d'audit**.

## Créer une plage de valeurs manuellement

<!--DHIS2-SECTION-ID:change_min_max_range_manually-->

![](resources/images/content/user/data_quality/set_min_max_manually.png)

1.  Dans l'application de **saisie de données**, ouvrez un modèle de saisie.

2.  Double-cliquez sur le champs auquel vous souhaitez affecter une fourchette de valeurs.

3.  Entrez **la limite Mini** et **la limite Maxi**.

4.  Cliquez sur **Sauvegarder**.

    Si les valeurs que vous entrez ensuite ne sont pas incluses dans la fourchette, la case de saisie prendra une couleur orange.

5.  (Facultatif) Saisissez un commentaire pour expliquer la raison de cette différence, par exemple un événement qui aurait pu générer un nombre important de clients.

6.  (Facultatif) Cliquez sur enregistrer le commentaire.

> **Astuce**
>
> Cliquez sur l'icône étoile pour marquer la valeur pour un suivi ultérieur.

## Saisir des données en mode Hors-ligne

<!--DHIS2-SECTION-ID:enter_data_offline-->

L'application **de saisie de données** fonctionne même si vous n'avez pas de connexion internet stable durant la saisie de données. En mode hors-ligne, les données saisies sont enregistrées dans votre ordinateur local. Une fois connecté au réseau, l'application transfère les données vers le serveur. L'utilisation de la bande passante est réduite puisque les modèles de saisie ne sont plus récupéres depuis le serveur pour chaque rendu.

> **Note**
>
> Pour utiliser cette fonctionnalté, vous devez vous connecter au serveur lorsque vous êtes connecté au réseau

- Lorsque vous êtes connecté à Internet, l'application affiche le message suivant en haut du modèle de saisie:

  ![](resources/images/content/user/data_entry/data_entry_online1.png)

- Si votre connexion internet est interrompue lors de la saisie des données, l'application affiche le message suivant:

  ![](resources/images/content/user/data_entry/data_entry_offline1.png)

  Vos données seront stockées localement. Vous pouvez continuer la saisie normalement

- Dès que vous avez saisi les données nécessaires et que l'application detecte que la connexion a été rétablie, vous verrez ce message apparaître:

  ![](resources/images/content/user/data_entry/data_entry_offline_upload.png)

  Cliquez sur **télécharger** pour synchrinoser les données avec le serveur.

- Lorsque les données sont synchronisées avec succès avec le serveur, ce message de confirmation apparaitra:

  ![](resources/images/content/user/data_entry/data_entry_offline_upload_success1.png)

## Activer la saisie de données dans une unité multi-organisation

<!--DHIS2-SECTION-ID:data_entry_multiple_organisation_units-->

![](resources/images/content/user/data_entry/data_entry_multiple_org_unit.png)

Il peut être utile de saisir des données pour plusieurs unités d'organisation dans le même formulaire de saisie, par exemple certains éléments de données dans un formulaire et un nombre important d'unités d'organisation dans l'arborescence. Dans ce cas, la saisie de données multiorganisation peut être activée.

> **Note**
>
> La saisie de données d'unités multiorganisation fonctionne uniquement avec des modèles par section.

1.  Ouvrez les **paramètres système** de l'application.

2.  Sélectionnez **Activer les modèles d'unités multiorganisation**.

3.  Dans l'application **de saisie de données** sélectionnez l'unité d'organisation juste au dessus de l'unité d'organisation dans laquelle vous souhaitez saisir des données dans l'arborescence.

    Les éléments de données apparaitront sous forme de colonnes et les unités d'organisation sous forme de lignes dans le modèle.

    > **Note**
    >
    > The data entry forms should still be assigned to the facilities that you actually enter data for, that is the organisation units now appearing in the form.

## Voir également

<!--DHIS2-SECTION-ID:data_entry_app_see_also-->

- [Control data quality](https://docs.dhis2.org/master/en/user/html/control_data_quality.html)

- [Manage data sets and data entry forms](https://docs.dhis2.org/master/en/user/html/manage_data_set.html)

- [Using the Maintenance app](https://docs.dhis2.org/master/en/user/html/maintenance_app.html)

# Control data quality

<!--DHIS2-SECTION-ID:control_data_quality-->

## A propos des contrôles qualité des données

<!--DHIS2-SECTION-ID:about_data_quality-->

The **Data Quality** app contains tools to validate the accuracy and reliability of the data in the system. You can assess different dimensions of data quality as outlined in the table below:

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Dimension</p></th>
<th><p>Description</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Exactitude</p></td>
<td><p>Les données doivent se situer dans la plage normale des données collectées dans cette infrastructure. Il ne devrait y avoir aucune différence significative en comparaison.</p></td>
</tr>
<tr class="even">
<td><p>Complétude</p></td>
<td><p>Les données pour tous les éléments de données pour toutes les unités d'organisation devraient être soumises.</p></td>
</tr>
<tr class="odd">
<td><p>Cohérence</p></td>
<td><p>Les données doivent être cohérentes avec les données saisies au cours des mois et des années précédents, tout en permettant les modifications liées à la réorganisation, l'augmentation de la charge de travail, ..., et compatibles avec d'autres infrastructures similaires..</p></td>
</tr>
<tr class="even">
<td><p>Ponctualité</p></td>
<td><p>Toutes les données de toutes les unités d'organisation doivent être soumises à la date convenue.</p></td>
</tr>
</tbody>
</table>

Vous pouvez contrôler la qualité des données de différentes manières, par exemple:

- Au moment de la saisie des données, DHIS2 peut examiner les données saisies pour vérifier si elles se situent entre les valeurs maximales et minimales de la plage de valeurs de cet élément de données (basé sur les données précédentes enregistrées).

- En définissant des règles de validation, qui peuvent être exécutées une fois que l'utilisateur a terminé la saisie de données. L'utilisateur peut également vérifier les données saisies pour une période particulière et une unité d'organisation par rapport aux règles de validation et afficher les violations de ces règles.

- En analysant les sets de données, c'est-à-dire, examiner les écarts dans les données.

- Par triangulation de données, c'est-à-dire en comparant les mêmes données ou indicateurs de différentes sources.

## Analyse des règles de validation

<!--DHIS2-SECTION-ID:validation_rule_analysis-->

### A propos de l'analyse des règles de validation

Une règle de validation est basée sur une expression qui définit une relation entre les valeurs d'éléments de données. L'expression forme une condition qui doit affirmer que certains critères logiques sont remplis.

L'expression se compose de:

- Une partie gauche

- Une partie droite

- Un opérateur

Une règle de validation pourrait affirmer que "Les cas suspects de paludisme testés" \>= "Cas de paludisme confirmés".

L'analyse des règles de validation teste les règles de validation par rapport aux données enregistrées dans le système. Les violations de ces règles sont signalées lorsque la condition définie dans l'expression de règle de validation n'est pas remplie, ce qui signifie quand la condition est fausse.

You can configure a validation rule analysis to automatically send out information about validation violations to selected user groups. These messages are called _validation notifications_ and you create them in the **Maintenance** app. Validation notifications are sent via the internal DHIS 2 messaging system.

### Workflow

1.  Dans l'application **Maintenance**, créez des règles de validation et des groupes de règles de validation.

2.  (Facultatif) Dans l'application **Maintenance**, créez des notifications de validation.

3.  Exécutez l'analyse des règles de validation, automatiquement ou manuellement.

    - Dans l'application **Administration des données**, vous planifiez la validation de l'analyse des règles à exécuter automatiquement pour toutes les règles de validation associées à une ou plusieurs notifications de validation. Après que le le système ait exécuté l'analyse, les violations des règles (s'il y en a) s'afficheront dans les notifications de validation envoyées via le système de messagerie interne DHIS2.

    - Dans l'application **Qualité des données**, vous exécutez l'analyse des règles de validation manuellement pour celles qui sont sélectionnées. Après que le processus d'analyse soit terminé, une liste de violations de règles s'affichera.

### Planifiez l'éxécution automatique de l'analyse des règles de validation

> **Note**
>
> Only validation rules that are included in one or several validation notifications will be a part of the validation rule analysis. If there is no corresponding validation notification for a validation rule, no notification will be sent.

> **Note**
>
> While running validation rule analysis automatically, any results not already persisted, will be persisted during this run. Persisted results can currently only be accessed trough the API. Consult the developers guide for more information about how persisted validation rule violations can be accessed.

1.  Vérifiez que vous avez créé toutes les règles de validation, groupes de règles de validation et notifications de validation dont vous avez besoin.

2.  Ouvrez l'application **Administration des données** et cliquez sur **Planification**.

3.  Si la planification est active, cliquez sur **Arrêter**.

4.  Dans la section **Monitoring des données**, sélectionnez **Quotidien**.

5.  Cliquez sur **Démarrer**.

### Exécuter une analyse de règles de validation manuellement

![](resources/images/content/user/data_quality/validation_rule_analysis.png)

1.  Vérifiez que vous avez créé toutes les règles de validation, groupes de règles de validation et notifications de validation dont vous avez besoin.

2.  Ouvrez l'application **Qualité des données** et cliquez sur **Analyse des règle de validation**.

3.  Sélectionnez **Date de début** et une **Date de fin**.

4.  Sélectionnez le **groupe de règles de validation** à inclure dans l'analyse.

    Vous pouvez sélectionner toutes les règles de validation ou un groupe de règles de validation.

5.  (Facultatif) Sélectionnez **Envoyer les notifications** pour déclencher les notifications de validation.

    > **Note**
    >
    > If you want to send out validation notifications, you must first create them in the **Maintenance** app.

6.  (Facultatif) Sélectionnez _Maintenir les nouveaux résultats_ pour conserver tous les résultats de l'analyse.

7.  Sélectionnez une **unité d'organisation mère**.

8.  Cliquez sur **Valider**.

    La durée du processus d'analyse dépend de la quantité de données à analyser. S'il n'y a aucune violation des règles de validation, vous verrez un message disant _La validation a été passée avec succès_. Dans le cas ou il y'a des violations de validation, elles seront présentées dans une liste.

    ![](resources/images/content/user/data_quality/validation_rule_analysis_result.png)

9.  (Facultatif) Cliquez sur l'icône Afficher les détails pour obtenir plus d'informations sur une violation de validation. Dans la fenêtre pop-up, vous trouverez des informations sur les éléments de données inclus dans les règles de validation et leur valeurs de données correspondantes. Vous pouvez utiliser ces informations pour identifier la source de la violation de la règle de validation.

10. (Facultatif) Cliquez sur **Télécharger sous format PDF**, **Télécharger sous format Excel** ou **Télécharger au format CSV** pour télécharger la liste des violations de validation dans les formats PDF, Excel ou CSV.

### Voir également

- [Manage validation rules](https://docs.dhis2.org/master/en/user/html/manage_validation_rule.html)

- [Data Administration app](https://docs.dhis2.org/master/en/user/html/data_admin.html)

## Analyse des aberrations d'écart-type

<!--DHIS2-SECTION-ID:standard_deviation_analysis-->

### A propos de l'analyse des aberrations d'écart-type

The standard deviation outlier analysis identifies values that are numerically distant from the rest of the data, potentially indicating that they are outliers. The analysis is based on the standard normal distribution. DHIS 2 calculates the mean of all values for an organisation unit, data element, category option combination and attribute option combination. Outliers can occur by chance of course, but can potentially indicate a measurement or data entry error.

> **Note**
>
> As indicated above, this data quality analysis is only appropriate for data which is actually normally distributed. Data which has large seasonal variation, or which may be distributed according to other statistical models (e.g. logistical ) may lead values being flagged which actually should be considered valid. It is therefore recommended to confirm first, whether the data actually is normally distributed before running a standard deviation outlier analysis.

### Exécuter une analyse des aberrations d'écart-type

![](resources/images/content/user/data_quality/std_dev_analysis.png)

1.  Ouvrez l'application **Qualité des données** et cliquez sur **Std dev outlier analysis**.

2.  Sélectionnez ** À partir de la date ** et ** À la date **.

3.  Sélectionnez un set(s) de données.

4.  Sélectionnez une **Unité d'organisation mère**.

    Tous les enfants de l'unité d'organisation seront inclus. L'analyse est faite sur des données brutes "sous" l'unité d'organisation parente, pas sur des données agrégées.

5.  Select the number of standard deviations.

    Ceci fait référence au nombre d'écarts-types par rapport à la moyenne autorisés au-dessus duquel les données sont identifiées comme valeurs abérrantes.

6.  Cliquez sur **Démarrer**.

    La durée du processus d'analyse dépend de la quantité des données à analyser. S'il existe des valeurs aberrantes, elles seront présentées dans une liste.

    ![](resources/images/content/user/data_quality/std_dev_analysis_outlier_result.png)

    For each outlier, you will see the data element, organisation unit, period, minimum value, actual value and maximum value. The minimum and maximum values refer to the border values derived from the number of standard deviations selected for the analysis.

> **Astuce**
>
> Cliquez sur l'icône étoile pour marquer une valeur abérrante pour un suivi ultérieur.

## Analyse des valeurs aberrantes minimales et maximales

<!--DHIS2-SECTION-ID:min_max_analysis-->

### A propos de l'analyse des valeurs aberrantes minimales et maximales

You can verify the data quality at the point of data entry by setting a minimun/maximum value range for each data value. You can define the value ranges manually or generate them automatically.

La plage de valeur générée automatiquement ne convient que pour des données normalement distribuées. DHIS2 déterminera la moyenne arithmétique et l'écart-type de toutes les valeurs pour un élément de données, des options de combinaison de catégories, une unité d'organisation et une combinaison d'attributs. Le système calculera ensuite la plage de valeurs maximales et minimales sur la base du **Facteur d'analyse de l'écart-type des données** spécifié dans l'application **Paramètres système**.

Pour les données fortement asymétriques ou nulles (comme c'est souvent le cas pour les données agrégées), les valeurs générées automatiquement par DHIS2 ne peuvent pas fournir une plage de valeur précise. Cela peut mener à de fausses violations de règles, par exemple si vous analysez des valeurs liées à maladies saisonnières.

> **Note**
>
> Les plages de valeurs minimales et maximales sont calculées pour toutes les options de combinaison d'attributs pour pour un élément de données particulier, des options de catégories et une combinaison d'unité d'organisation.

### Workflow

1.  Créer une plage de valeurs minimum et maximum, automatiquement ou manuellement.

    - Dans l'application **Administration des données**, vous pouvez générer des plages de valeur automatiquement

    - In the **Data Entry** app, you may set value ranges manually.

2.  Dans l'application **Qualité des données**, vous pouvez exécuter **L'analyse des valeurs aberrantes mini-maxi**.

### Configurer une analyse des valeurs aberrantes minimum maximum

#### Créer une plage de valeurs minimum maximum automatiquement

![](resources/images/content/user/data_quality/generate_min_max.png)

> **Note**
>
> Les plages de valeurs maximales minimales générées automatiquement peuvent être utiles pour de nombreuses applications, mais il est recommandé de vérifier que les données soient normalement distribuées avant d'utiliser cette fonction.

Vous pouvez générer des plages de valeurs maximales et minimales calculées par le set de données dans **L'application d'administration des données**. Les nouvelles plages de valeurs remplaceront toutes les valeurs que le système a calculé précédemment.

1.  Set the **Data analysis standard deviation (std dev) factor**:

    1.  Ouvrez l'application **Paramètres système**, puis cliquez sur **Général**.

    2.  Dans le champ **Facteur d'analyse des valeurs d'écart-type des données**, entrez une valeur.

        This sets the number of standard deviations to use in the outlier analysis. The default value is 2. Higher values indicate a broader distribution, which may lead to outliers not being flagged correctly by the analysis.

2.  Ouvrez **L'application administration des données** et cliquez sur **Génération des valeurs mini-maxi**.

3.  Sélectionnez un set(s) de données.

4.  Sélectionnez une **unité d'organisation**.

5.  Cliquez sur **Générer**.

    De nouvelles plages de valeurs maximales et minimales pour tous les éléments du set de données sélectionnés pour toutes les unités d'organisation (y compris les descendants) des unités d'organisation sélectionnées sont générés.

#### Create minimum/maximum value range manually

![](resources/images/content/user/data_quality/set_min_max_manually.png)

1.  Dans l'application de **saisie de données**, ouvrez un modèle de saisie.

2.  Double-click the field for which you want to set the minimum/maximum value range.

3.  Enter **Min limit** and **Max limit** in the dialog that appears.

4.  Cliquez sur **Sauvegarder**.

    Si les valeurs que vous entrez ensuite ne sont pas incluses dans la fourchette, la case de saisie prendra une couleur orange.

5.  (Facultatif) Saisissez un commentaire pour expliquer la raison de cette différence, par exemple un événement qui aurait pu générer un nombre important de clients.

6.  (Facultatif) Cliquez sur enregistrer le commentaire.

> **Astuce**
>
> Cliquez sur l'icône étoile pour marquer la valeur pour un suivi ultérieur.

#### Supprimer une plage de valeurs minimum maximum

Vous pouvez supprimer définitivement toutes les plages de valeurs maximales minimales pour des sets de données et unités d'organisation dans l'application **Administration des données**.

1.  Ouvrez **L'application administration des données** et cliquez sur **Génération des valeurs mini-maxi**.

2.  Sélectionnez un set(s) de données.

3.  Select an **Organisation unit**. Note, that the selection cascades to descendant organisation units!

4.  Cliquez sur **Supprimer**.

### Exécuter une analyse de valeurs aberrantes minimales et maximales

![](resources/images/content/user/data_quality/min_max_analysis.png)

1.  Vérifiez que vous avez créé des plages de valeurs maximales minimales.

2.  Ouvrez l'application **Qualité des données** et cliquez sur **Analyse des valeurs aberrantes mini-maxi**.

3.  Sélectionnez ** À partir de la date ** et ** À la date **.

4.  Sélectionnez le ou les sets de données que vous souhaitez inclure dans l'analyse.

5.  Sélectionnez une **Unité d'organisation mère**.

    Tous les enfants de l'unité d'organisation seront inclus. L'analyse est faite sur des données brutes "sous" l'unité d'organisation parente, pas sur des données agrégées.

6.  Cliquez sur **Démarrer**.

    La durée du processus d'analyse dépend de la quantité de données à analyser. S'il existe des violations de validation, elles seront présentées sous forme d'une liste.

    ![](resources/images/content/user/data_quality/min_max_result.png)

7.  (Facultatif) Cliquez sur **Télécharger sous format PDF**, **Télécharger sous format Excel** ou **Télécharger au format CSV** pour télécharger la liste des violations de validation dans les formats PDF, Excel ou CSV.

> **Astuce**
>
> Cliquez sur l'icône étoile pour marquer la valeur pour un suivi ultérieur.

## Analyse de suivi

<!--DHIS2-SECTION-ID:follow_up_analysis-->

### A propos de l'analyse de suivi

L'analyse de suivi crée une liste de toutes les valeurs de données marquées pour suivi ultérieur. Vous pouvez marquer une valeur de données pour suivi ultérieur dans **L'application de saisie de données** et dans la liste de résultats que vous obtenez d'une valeur aberrante d'écart-type ou de l'analyse des valeurs aberrantes minimales et maximales.

### Créer une liste de valeurs de données marquées pour un suivi ultérieur

![](resources/images/content/user/data_quality/follow_up_analysis.png)

1.  Ouvrez l'application **Qualité des données** et cliquez sur **Analyse de suivi**.

2.  Select a data set or multiple data sets.

3.  Select a parent **Organisation unit**.

    La durée du processus d'analyse dépend de la quantité de données à analyser. S'il existe des valeurs de données marquées pour un suivi, elles seront présentées sous forme d'une liste.

4.  Select a **Start Date** and **End Date** which defines the periods which you are interested in looking for values which have been marked for follow up.

5.  Press **Follow up** to generate a list of values which have been marked for follow up.

6.  (Facultatif) Cliquez sur **Télécharger sous format PDF**, **Télécharger sous format Excel** ou **Télécharger au format CSV** pour télécharger la liste des violations de validation dans les formats PDF, Excel ou CSV.

![](resources/images/content/user/data_quality/follow_up_analysis_result.png)

> **Tip**
>
> Click the star icon to remove the follow-up tag from the data value. You can also enter a comment in the field to indicate any additional information regarding the value.

# Using reporting functionality

<!--DHIS2-SECTION-ID:using_reporting-->

## Fonctionnalité de Reporting dans DHIS2

<!--DHIS2-SECTION-ID:using_reporting_intro-->

Le module de reporting dans DHIS2 fournit une gamme d'outils de reporting, et cette section expliquera comment les utiliser pour visualiser et analyser les données. Une autre section explique comment configurer ces divers outils de reporting.

**Rapports standard:** Les rapports standard sont construits avec des tableaux croisés dynamiques, mais leur conception avancée leur confère plus d'ésthétique et de style. Ces rapports peuvent également combiner plusieurs tableaux et graphiques dans le même rapport et peuvent être disponibles sous forme de rapports en-un-clic qui sont très pratiques à utiliser. Ces rapports peuvent être téléchargés sous format PDF, ce qui est avantageux pour l'impression ainsi que le partage en mode hors ligne.

**Rapports de sets de données:** Les rapports de sets de données sont un moyen simple et imprimable d'examiner les modèles de saisie de données avec des données brutes ou agrégées (sur une période ou un emplacement). Le modèle utilisé pour la saisie des données sera également utilisé dans les rapports de sets de données. Cela ne fonctionnera que pour les ensembles de données ayant un modèle de saisie de données personnalisé mis en place.

**Tableau de bord:** Le moyen le plus rapide pour visualiser vos données. Le tableau de bord peut afficher jusqu'à quatre graphiques mis à jour ainsi que des raccourcis vers vos rapports favoris, tables de rapport et vues cartographiques. Chaque utilisateur peut configurer un tableau de bord personnel.

**Visualiseur de données:** Visualisez vos données sous forme de graphiques et tableaux de données. Quel que soit le nombre d'indicateurs et d'éléments de données. Plusieurs types de graphiques sont disponibles; colonnes, colonnes empilées, lignes, zones et diagrammes circulaires. Ces graphiques peuvent être sauvegardés afin d'être facilement récupérés plus tard et peuvent également être épinglés sur votre tableau de bord personnel. Ils peuvent être téléchargés sur votre ordinateur sous forme d'image et de fichiers PDF.

**Rapports de distribution d'unitOrg:** Ces rapports sont générés à partir du set d'informations du groupe d'unités d'organisation et peut afficher quels types (et combien de chaque type) d'établissements de santé sont situés dans une zone donnée (tout niveau hiérarchique). Ces rapports sont automatiquement générés et remontent les informations dans des tableaux et graphiques, et sont téléchrgeables en PDF, Excel et CSV.

**Résumé du taux de reporting:** Ces rapports fournissent un bon aperçu des nombreux établissement ayant soumis leurs données pour set de données et période bien définis. Ici, vous pouvez obtenir les chiffres et les pourcentages indiquant le taux de rapport pour tous ou un seul set de données.

**Tableaux croisés dynamiques basés sur le Web:** L'outil de tableaux croisés dynamiques intégré est un outil basé sur le Web pour afficher les données des indicateurs par unité d'organisation et par période dans un tableau croisé dynamique typique. Il permet également de télécharger de grandes quantités de données en mode hors ligne à des fins d'analyse.

**GIS:** Présentez et analysez vos données à l'aide de cartes thématiques. Vous pouvez voir les éléments de données et les indicateurs, et puisque vos unités d'organisation sont identifiés par des coordonnées, vous explorer la hiérarchie et voir les cartes pour tous les niveaux, des polygones de pays aux infrastructures et établissements. Reportez-vous au chapitre GIS pour plus de détails. Toutes les informations cartographiques sont intégrées à DHIS2, tout ce qui vous reste à faire est d'enregistrer les coordonnées de vos unités d'organisation et les cartes seront disponibles.

## Utilisation des rapports standard

<!--DHIS2-SECTION-ID:using_reporting_standard_reports-->

Vous pouvez accéder aux rapports disponibles via Apps-\>Rapports. Dans le menu rapports dans la barre gauche, cliquez sur Rapport standard. Une liste de tous les rapports prédéfinis apparaîtra dans la fenêtre principale.

![](resources/images/content/user/dhis2UserManual/standard_reports_ke.png)

Vous pouvez exécuter/afficher un rapport en cliquant sur le nom du rapport, puis en sélectionnant "Créer" dans le menu contextuel. S'il y'a des paramètres prédéfinis, vous verrez une fenêtre de paramètres de rapport où vous devez renseigner les valeurs nécessaires pour de l'unité d'org et/ou du mois de reporting, en fonction de ce qui a été défini dans la ou les tables de rapport sous-jacentes. Cliquez sur "Obtenir le rapport" lorsque vous êtes prêt. Le rapport apparaîtra soit directement dans votre navigateur ou sera disponible sous forme de fichier PDF à télécharger, en fonction des paramètres de votre navigateur. Vous pouvez enregistrer le fichier et le conserver localement sur votre ordinateur pour une utilisation ultérieure.

## Utilisation des rapports de sets de données

<!--DHIS2-SECTION-ID:using_reporting_dataset_reports-->

Les rapports de sets de données sont un des vues simple et imprimable de l'écran de saisie de données avec des données brutes ou agrégées. Ils ne sont disponibles que pour les sets de données ayant un modèle de saisie de données personnalisé mis en place contrairement au modèles par défaut et par section.

Vous pouvez accéder aux rapports de sets de données depuis Apps-\>Rapports.

Une fenêtre de critères apparaît dans laquelle vous renseignez les détails de votre rapport:

**Set de données:** Les données que vous souhaitez afficher.

**Période de reporting:** La période réelle pour laquelle vous souhitez récupérer les données. Il peut s'agir de périodes agrégées ou brutes. Cela signifie que vous pouvez demander un rapport trimestriel ou annuel même si l'ensemble des données est collecté mensuellement. Le type de période d'un set de données (fréquence de collecte) est défini dans la maintenance du set de données. Sélectionnez d'abord le type de période (Mensuel, Trimestriel, Annuel, etc.) dans le menu déroulant à côté des boutons Précédent et Suivant, puis sélectionnez l'une des périodes disponibles dans la liste déroulante ci-dessous. Utilisez Précédent et Suivant pour sauter d'un an en arrière ou en avant.

**Utiliser des données pour l'unité sélectionnée uniquement:** Utilisez cette option si vous souhaitez un rapport pour une unité d'org qui a des ramifications (enfants), mais que vous avez besoin des données collectées directement que par cette unité et non par ses enfants. Si vous souhaitez un rapport agrégé typique pour une unité d'org spécifique, ne cochez pas cette option.

**Reporting d'unité d'organisation:** Ici, vous sélectionnez l'unité d'organisation pour laquelle vous souhaitez le rapport. Cela peut s'effectuer à n'importe quel niveau de la hiérarchie, car les données seront agrégées automatiquement jusqu'à ce niveau (si vous ne cochez pas l'option ci-dessus).

Lorsque vous avez fini de rentrer les critères du rapport, cliquez sur "Génénrer". Le rapport apparaîtra sous format HTML et imprimable. Utilisez les fonctions d'impression et d'enregistrement dans le navigateur pour imprimer ou enregistrer le rapport (en tant que fichier HTML). Vous pouvez également exporter le rapport du set de données dans Excel et en formats PDF.

## Utilisation des ressources

<!--DHIS2-SECTION-ID:using_reporting_resources-->

L'outil de ressources vous permet de télécharger les fichiers de votre répertoire local au serveur DHIS et d'ajouter des liens vers d'autres ressources sur Internet via des liens URL. Si le stockage en cloud est configuré pour votre système, les ressources y seront sauvegardées.

Pour créer une nouvelle ressource:

1.  Ouvrez l'application **Rapports** et cliquez sur **Ressource**.

2.  Cliquez sur **AJOUTER**.

3.  Entrez un **Nom**.

4.  Sélectionnez un **Type**: **Télécharger un fichier** ou **URL externe**.

5.  Cliquez sur **Sauvegarder**.

## Utilisation du récapitulatif du taux de génération de rapports

<!--DHIS2-SECTION-ID:using_reporting_reporting_rate_summary-->

Accédez au récapitulatif du taux de génération de rapports à partir du menu Applications-\>Rapports. Les récapitulatif de taux de rapports indiqueront le nombre de sets de données (modèles) ayant été soumis par une unité d'organisation et par période. Il y a deux méthodes disponibles pour calculer les taux de génération de rapports (complétude):

- Basé sur des enregistrements complets des sets données. Un enregistrement complet de set de données se réfère à un utilisateur marquant un modèle de saisie de données en tant que complet, généralement en cliquant sur le bouton complet dans l'écran de saisie, indiquant par la présente au système de considérer que le formulaire est terminé. Il s'agit d'une approche subjective pour calculer la complétude.

- Basé sur un set de données obligatoire: vous pouvez définir un nombre quelconque d'éléments de données comme obligatoires dans un set de données. Cela implique que des valeurs de données doivent être impérativement saisies pour tous les éléments de données marqués obligatoires pour que le set de données soit considéré comme complet. C'est une approche objective du calcul de la complétude.

Le récapitulatif du taux de génération de rapports désignera des mesures spécifiques pour chaque ligne:

- Rapports réels: indique le nombre de sauvegardes terminées de saisies pour le set de données concerné.

- Rapports prévus: indique le nombre prévu de saisies de données terminées. Ce nombre est basé sur le nombre d'unités d'organisation auxquelles le set de données a été affecté (activé pour la saisie de données).

- Pourcentage: Le pourcentage de rapports enregistrés comme complets sur le nombre prévu.

- Rapports à temps: identiques aux rapports réels, uniquement les rapports enregistrés en tant que compléts pendant le nombre maximum de jours après la fin de la période de reporting. Ce nombre de jours qui suit la période de reporting peut être défini pour chaque set de données dans la gestion des sets de données.

- Pourcentage sur le temps: Identique au pourcentage, uniquement les rapports enregistrés en tant que complétes à l'heure utilisée comme numérateur.

Pour exécuter le rapport, vous pouvez suivre les étapes ci-dessous:

- Sélectionnez une unité d'organisation dans l'arborescence.

- Sélectionnez l'une des méthodes de complétude à utiliser pour calculer le les taux de rapport.

  Sélectionnez tout ou un set de données. Tous vont générer un rapport avec toutes les sets de données pour l'unité d'organisation sélectionnée. Un seul set de données générera un rapport complet pour tous les enfants de l'unité d'organisation sélectionnée.

- Sélectionnez un type de période et une période dans la liste des périodes disponibles pour ce type de période. Reculez/avancez d'un an en utilisant les boutons précédent/suivant.

- Le rapport sera alors généré. Modifiez l'un des paramètres ci-dessus et le rapport se mettre à jour automatiquement.

![](resources/images/content/user/dhis2UserManual/completeness_report.png)

## Utilisation des rapports de distribution des unités d'organisation

<!--DHIS2-SECTION-ID:using_reporting_orgunit_distribution_reports-->

Vous pouvez accéder aux rapports de distribution des unités d'organisation depuis le menu à gauche dans Applications-\>Rapports.

Les rapports de distribution d'unités d'org montrent comment les unités d'org sont distribuées sur diverses propriétés comme le type et la titularité, et par zones géographiques.

Le résultat peut être présenté dans un rapport sous forme de tableau ou dans un graphique.

**Exécution d'un rapport:**

Pour générer un rapport, sélectionnez d'abord une unité d'org dans l'arborescence des unités d'org en haut à gauche. Le rapport sera basé sur les unités d'organisations situées sous l'unité d'org sélectionnée. Sélectionnez le groupe d'orgunit que vous souhaitez utiliser, généralement il s'agit des types suivants, la propriété, rural/urbain, mais peuvent également être définis par l'utilisateur. Vous pouvez cliquer sur le bouton Générer un rapport pour obtenir la présentation sous forme de tableau ou un graphique pour le même résultat. Vous pouvez également le télécharger sous un autre format tel que PDF, Excel et CSV.

![](resources/images/content/user/dhis2UserManual/orgunit_report.png)

## Générer des tables d'analyse

<!--DHIS2-SECTION-ID:generate_analytics_tables-->

DHIS2 génère des tables de bases de données que le système utilise ensuite comme base pour diverses fonctions d'analyse. Ces tables sont également utiles si vous écrivez des rapports SQL avancés. Dans l'application **Administration des données**, vous pouvez exécuter la génération de tables immédiatement. Si vous souhaitez planifier leur exécution à intervalles réguliers, vous pouvez paramétrer cela dans l'application **Planificateur**. Cela signifie que vous pouvez actualiser des analyses récentes à la demande et visualiser des tableaux croisés dynamiques à jour sans attendre le traitement de toutes les données des dernières années.

> **Note**
>
> Vous pouvez également générer les tables via l'API Web. Cette tâche est généralement effectuée par un administrateur système.

1.  Ouvrez l'application **Administration des données** et cliquez sur **Tables d'Analyse**.

2.  Sélectionnez les parties du processus d'analyse que vous souhaitez ignorer:

    - **Ignorez la génération des tables de ressources**

    - **Ignorer la génération de données agrégées et de données de complétude**

    - **Ignorez la génération de données d'événement**

    - **Ignorez la génération des données d'inscription**

3.  Sélectionnez **Nombre de dernières années de données à inclure**.

4.  Cliquez sur **Démarrer l'exportation**.

# Reporting functionality in the Beta Reports app

<!--DHIS2-SECTION-ID:using_the_beta_reports_app-->

A new Reports app (Beta) is introduced in release 2.32 and serves as an optional replacement of the original [Reports app](#using_reporting), offering a more intuitive and user-friendly interface. Unlike the previous Reports app, however, it does not support Data Approvals.

## Utilisation des rapports standard

<!--DHIS2-SECTION-ID:standard_reports_in_the_beta_reports_app-->

You access the available reports by navigating to Apps-\>Reports (Beta). In the report menu in the left bar, click Standard Report. A list of all pre-defined reports will appear in the main window.

![](resources/images/content/user/dhis2UserManual/react_reports_app_standard_reports.png)

You run/view a report by clicking on the triple-dot icon of the report and then selecting "Create" from the contextual menu. If there are any pre-defined parameters, you will see a report parameter window where you must fill in the values needed for orgunit and/or reporting month, depending on what has been defined in the underlying report table(s). Click on "Generate Report" when you are ready. The report will either appear directly in your browser or be available as a PDF file for download, depending on your browser settings for handling PDF files. You can save the file and keep it locally on your computer for later use.

## Utilisation des rapports de sets de données

<!--DHIS2-SECTION-ID:dataset_reports_in_the_beta_reports_app-->

Les rapports de sets de données sont un des vues simple et imprimable de l'écran de saisie de données avec des données brutes ou agrégées. Ils ne sont disponibles que pour les sets de données ayant un modèle de saisie de données personnalisé mis en place contrairement au modèles par défaut et par section.

You can access data set reports from Apps-\>Reports (Beta).

Une fenêtre de critères apparaît dans laquelle vous renseignez les détails de votre rapport:

**Set de données:** Les données que vous souhaitez afficher.

**Report period:** The actual period you want data for. This can be aggregated as well as raw periods. This means that you can ask for a quarterly or annual report even though the data set is collected monthly. A data set's period type (collection frequency) is defined in data set maintenance. First select the period type (Monthly, Quarterly, Yearly etc.) in the drop down next to Prev and Next buttons, and then select one of the available periods from the dropdown list below. Use Prev and Next to jump one year back or forward.

**Utiliser des données pour l'unité sélectionnée uniquement:** Utilisez cette option si vous souhaitez un rapport pour une unité d'org qui a des ramifications (enfants), mais que vous avez besoin des données collectées directement que par cette unité et non par ses enfants. Si vous souhaitez un rapport agrégé typique pour une unité d'org spécifique, ne cochez pas cette option.

**Report Organisation unit:** Here you select the orgunit you want the report for. This can be at any level in the hierarchy as the data will be aggregated up to this level automatically (if you do not tick the option above).

Lorsque vous avez fini de rentrer les critères du rapport, cliquez sur "Génénrer". Le rapport apparaîtra sous format HTML et imprimable. Utilisez les fonctions d'impression et d'enregistrement dans le navigateur pour imprimer ou enregistrer le rapport (en tant que fichier HTML). Vous pouvez également exporter le rapport du set de données dans Excel et en formats PDF.

## Utilisation du récapitulatif du taux de génération de rapports

<!--DHIS2-SECTION-ID:reporting_rate_summary_in_the_beta_reports_app-->

Access the reporting rate summary from the Apps-\>Reports (Beta) menu. Reporting rate summaries will show how many datasets (forms) that have been submitted by organisation unit and period.

The reporting rate is calculation is based on complete data set registrations. A complete data set registration refers to a user marking a data entry form as complete, typically by clicking the complete button in the data entry screen, hereby indicating to the system that she considers the form to be complete. This is i.e. a subjective approach to calculating completeness.

Le récapitulatif du taux de génération de rapports désignera des mesures spécifiques pour chaque ligne:

- Rapports réels: indique le nombre de sauvegardes terminées de saisies pour le set de données concerné.

- Rapports prévus: indique le nombre prévu de saisies de données terminées. Ce nombre est basé sur le nombre d'unités d'organisation auxquelles le set de données a été affecté (activé pour la saisie de données).

- Reporting rate: The percentage of reports registered as complete based on the number expected.

- Rapports à temps: identiques aux rapports réels, uniquement les rapports enregistrés en tant que compléts pendant le nombre maximum de jours après la fin de la période de reporting. Ce nombre de jours qui suit la période de reporting peut être défini pour chaque set de données dans la gestion des sets de données.

- Reporting rate on time: Same as percentage, only reports registered as complete on time used as numerator.

Pour exécuter le rapport, vous pouvez suivre les étapes ci-dessous:

- Sélectionnez une unité d'organisation dans l'arborescence.

- Select a data set.

- Select a period type and a period from the list of available periods for that period type.

- The report will then be rendered. Change any of the parameters above and click "Get report" again see the corresponding results.

![](resources/images/content/user/dhis2UserManual/react_reports_app_reporting_rate_summary.png)

## Utilisation des ressources

<!--DHIS2-SECTION-ID:resources_in_the_beta_reports_app-->

L'outil de ressources vous permet de télécharger les fichiers de votre répertoire local au serveur DHIS et d'ajouter des liens vers d'autres ressources sur Internet via des liens URL. Si le stockage en cloud est configuré pour votre système, les ressources y seront sauvegardées.

Pour créer une nouvelle ressource:

1.  Open the **Reports (Beta)** app and click **Resource**.

2.  Cliquez sur **AJOUTER**.

3.  Entrez un **Nom**.

4.  Sélectionnez un **Type**: **Télécharger un fichier** ou **URL externe**.

5.  Cliquez sur **Sauvegarder**.

## Utilisation des rapports de distribution des unités d'organisation

<!--DHIS2-SECTION-ID:orgunit_distribution_reports_in_the_beta_reports_app-->

You can access the Orgunit Distribution reports from the left side menu in the Apps-\>Reports (Beta).

Les rapports de distribution d'unités d'org montrent comment les unités d'org sont distribuées sur diverses propriétés comme le type et la titularité, et par zones géographiques.

Le résultat peut être présenté dans un rapport sous forme de tableau ou dans un graphique.

**Exécution d'un rapport:**

To run a report first select an orgunit in the upper left side orgunit tree. The report will be based on orgunits located under the selected orgunit. The select the orgunit group set that you want to use, typically these are Type, Ownership, Rural/Urban, but can be any user-defined orgunit group set. The you can click on either Get Report to get the table-based presentation or Get chart to get the same result in a chart. You can also download the table-based report as Excel or CSV.

![](resources/images/content/user/dhis2UserManual/react_reports_app_org_unit_dist.png)

# Analyser des données dans des tableaux croisés dynamiques

<!--DHIS2-SECTION-ID:pivot-->

## A propos de l'application de tableaux croisés dynmiques

<!--DHIS2-SECTION-ID:pivot_about-->

Avec l'application **Tableau croisé dynamique**, vous pouvez créer des tableaux croisés dynamiques basés sur des dimensions de données disponibles dans DHIS2. Un tableau croisé dynamique est un outil dynamique pour l'analyse des données qui vous permet de manipuler et d'organiser les données en fonction de leurs dimensions. Exemples de dimensions de données dans DHIS2:

- dimension de données elle-même (par exemple éléments de données, indicateurs et     événements)

- périodes (représentant la période de temps pour les données)

- hiérarchie d'organisation (représentant la localisation géographique     des données)

A partir de ces dimensions, vous pouvez librement sélectionner _éléments de dimension_ à inclure dans le tableau croisé dynamique. Vous pouvez créer des dimensions supplémentaires dans DHIS2 avec la fonctionnalité de set de groupe. Cela permet une agrégation différente des itinéraires, tels que l'agrégation par «partenaire» ou le type d'infrastructure.

Un tableau croisé dynamique peut organiser des dimensions de données sur des _colonnes_, _lignes_ et en tant que _filtres_. Lorsque vous placez une dimension de données sur des colonnes, le tableau croisé dynamique affichera une colonne par élément de dimension. Si vous placez plusieurs dimensions de données par colonnes, le tableau croisé dynamique affiche une colonne pour toutes les combinaisons d'éléments dans les dimensions sélectionnées. Quand vous placez une dimension de données sur les lignes, le tableau croisé dynamique affiche une ligne par dimension de manière similaire. Les dimensions que vous sélectionnez comme filtres ne seront pas incluses dans le tableau croisé dynamique, mais agrégeront et filtreront les données du tableau.

> **Astuce**
>
> - Vous devez sélectionner au moins une dimension sur des colonnes ou des lignes.
>
> - Vous devez inclure au moins une période.
>
> - Les ensembles de groupes d'éléments de données et les taux de reporting ne peuvent pas être visualisés dans même tableau croisé dynamique.
>
> - Un tableau croisé dynamique ne peut contenir plus que le nombre maximal d'enregistrements analytiques spécifiés dans les paramètres système. Le nombre maximum d'enregistrements peut également être limité par la RAM maximale disponible pour votre navigateur. Vous serez averti si votre table dépasse une taille particulière. A partir de ce message d'avertissement, vous pouvez soit annuler la demande ou continuer à construire la table. Envisagez de construire des tables plus petites au lieu d'une table unique qui affiche touts vos éléments de données et indicateurs ensemble.
>
> - L'application **Tableau croisé dynamique** prend en charge l'exploration et la création de périodes et des unités d'organisation. Cela signifie que vous pouvez par exemple explorer des périodes annuelles aux trimestres, mois et semaines à l'intérieur d'un tableau croisé dynamique. Vous pouvez également passer de l'unité d'organisation globale vers les pays, les provinces et les infrastructures.

## Créer un tableau croisé dynamique

<!--DHIS2-SECTION-ID:pivot_create-->

1.  Ouvrez l'application **Tableau croisé dynamique**.

2.  Dans le menu de gauche, sélectionnez les éléments de dimension que vous souhaitez analyser, par exemple, des éléments de données ou des indicateurs.

3.  Cliquez sur **Mise en page** et organisez les dimensions des données sous forme de colonnes, de lignes et filtres.

    Vous pouvez conserver la sélection par défaut si vous le souhaitez.

4.  Cliquez sur **Mettre à jour**.

Dans cet exemple, les indicateurs sont répertoriés sous forme de colonnes et les périodes sous forme de lignes.

![](resources/images/content/user/pivot_table/basic_pivot.png)

### Sélectionner les éléments de dimension

Le menu de gauche répertorie les sections de toutes les dimensions de données disponibles. Dans chaque section, vous pouvez sélectionner un nombre quelconque d'éléments de dimension. Par exemple, vous pouvez ouvrir la section des éléments de données et sélectionner autant d'éléments de données de la liste des disponible que vous souhaitez. Vous pouvez sélectionner un article en le marquant et en cliquant sur la flèche dans l'en-tête de la section ou tout simplement en double-cliquant sur l'élément. Avant de pouvoir utiliser une dimension de données dans votre tableau croisé dynamique, vous devez au moins sélectionner un élément de dimension. Si vous arrangez une dimension sous forme de colonnes ou de lignes mais ne sélectionnez aucun élément de dimension, la dimension sera ignorée.

Vous devez choisir au moins un type de dimension de données pour créer un tableau croisé dynamique. Les types disponibles sont décrits dans ce tableau:

<table>
<caption>Types de dimension de données</caption>
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead>
<tr class="header">
<th>Types de dimension de données</th>
<th>Définition</th>
<th>Exemples</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Indicateurs</td>
<td>Un indicateur est une formule de calcul basée sur des éléments de données.</td>
<td>Couverture de la vaccination dans un arrondissement spécifique.</td>
</tr>
<tr class="even">
<td>Eléments de données</td>
<td>Représente le phénomène pour lequel des données ont été capturées.</td>
<td>Nombre de cas de paludisme; nombre de doses de BCG administrées.</td>
</tr>
<tr class="odd">
<td>Sets de données</td>
<td>Une collection d'éléments de données regroupés pour la collecte de données. Vous pouvez sélectionner:
<ul>
<li><p><strong>Taux de reporting</strong>: le pourcentage de rapports réels par rapport au nombre de rapports prévus</p></li>
<li><p><strong>Taux de reporting à temps</strong>: les taux de rapport basés sur les soumissions de modèles à temps. Une soumission dans les délais doit avoir lieu dans un délai de quelques jours à compter de la période de reporting.</p></li>
<li><p><strong>Rapports réels</strong>: le nombre réel de rapports</p></li>
<li><p><strong>Rapports réels à temps</strong>: le nombre réels de raports basés sur les soumissions de modèles à temps. Une soumission dans les délais doit avoir lieu dans un délai de quelques jours à compter de la période de reporting.</p></li>
<li><p><strong>Expected reports</strong>: le nombre de rapports prévus en fonction des unités organisationnelles auxquelles l'ensemble des données et la fréquence de rapport ont été attribués.</p></li>
</ul></td>
<td>Taux de reporting pour les formulaires de vaccination et de morbidité.</td>
</tr>
<tr class="even">
<td>Éléments de données d'événements</td>
<td>Un élément de données qui fait partie d'un programme représentant des événements qui ont été capturés.</td>
<td>Poids et taille moyens des enfants dans un programme de nutrition.</td>
</tr>
<tr class="odd">
<td>Indicateurs du programme</td>
<td>Une formule calculée basée sur des éléments de données dans un programme représentant des événements.</td>
<td>Indice de masse corporelle moyen pour les enfants participant à un programme de nutrition.</td>
</tr>
</tbody>
</table>

Vous pouvez combiner ces dimensions pour afficher, par exemple, des données agrégées avec des taux de reporting ou des éléments de données d'événement avec les indicateurs du programme, tous dans les mêmes tableaux croisés dynamiques. Pour la dimension "élément de données", vous pouvez également sélectionner "Totaux" et "Détails", qui vous permettront de voir différentes options de combinaison de catégories sur le même tableau croisé dynamique.

Pour la dimension période, vous pouvez choisir d'utiliser des périodes fixes ou périodes relatives. "Janvier 2012" est un exemple de période fixe. Pour sélectionner des périodes fixes commencez par sélectionner un type de période à partir de la liste des types de période. Vous pouvez ensuite sélectionner des périodes dans la liste des périodes disponibles.

Les périodes relatives sont des périodes relatives à la date du jour. Des exemples de périodes relatives sont "Le mois dernier", "Les 12 derniers mois", "Les 5 dernières années". Vous pouvez sélectionner des périodes relatives en cochant les cases correspondantes. Le principal avantage de l'utilisation des périodes relatives est que lorsque vous enregistrez un tableau croisé dynamique en favori, il se mettra à jour avec les dernières données au fil du temps sans avoir besoin de le mettre à jour constamment.

Pour la dimension unité d'organisation, vous pouvez sélectionner un nombre quelconque d'unités d'organisation de la hiérarchie. Pour sélectionner toutes les unités d'organisation sous une unité d'organisation parente spécifique, cliquez avec le bouton droit de la souris et sélectionnez "Sélectionner tous les enfants". Pour sélectionner manuellement plusieurs unités d'organisation, maintenez la touche **Ctrl** enfoncée tout en cliquant sur les unités d'organisation. Vous pouvez cocher "Unité d'organisation", "Sous-unités d'utilisateur" ou "Sous-unités d'utilisateur x2" afin d'insérer dynamiquement la ou les unités d'organisation associées à votre compte d'utilisateur. Ceci est utile lorsque vous enregistrez un tableau croisé dynamique en favori et souhaitez le partager avec d'autres utilisateurs, de manière à ce que les unités d'organisation liées avec le compte de l'autre utilisateur soient utilisées lors de l'affichage du favori.

![](resources/images/content/user/pivot_table/period_dimension.png)

Les dimensions dynamiques peuvent être constituées d'ensembles de groupes d'unités d'organisation, ensembles d'éléments de données, ou ensembles de groupes d'options de catégorie qui ont été configurés avec le type de "Désagrégation". Une fois que les ensembles de groupe ont été configurés, ils seront disponibles dans les tableaux croisés dynamiques, et pourront être utilisés comme dimension d'analyse supplémentaire, par exemple pour analyser des données agrégées par type d'unité d'organisation ou de partenaire d'exécution. Les dimensions dynamiques fonctionnent de la même manière que les dimensions fixes.

> **Astuce**
>
> Certaines dimensions dynamiques peuvent contenir de nombreux éléments. Cela peut causer des problèmes avec certains navigateurs en raison de la longueur de l'URL lorsque plusieurs membres de dimensions sont sélectionnés. Une case à cocher "Tous" spéciale est disponible pour les dimensions dynamiques, ce qui vous permet d'inclure tous les éléments de dimension disponibles dans votre tableau croisé dynamique, sans spécifier chaque membre de dimension.

### Modifier la disposition du tableau croisé dynamique

Après avoir sélectionné les dimensions des données, il est temps d'organiser votre tableau croisé dynamique. Cliquez sur "Mise en page" dans le menu du haut pour ouvrir l'écran de mise en page. Dans cet écran vous pouvez positionner vos dimensions de données sous forme de colonnes, de lignes ou de filtres en cliquant et en faisant glisser les dimensions de la liste des dimensions vers les listes respectives de colonnes, de lignes et de filtres. Vous pouvez définir un nombre quelconque de dimensions dans l'une des listes. Par exemple, vous pouvez cliquer sur "Unités d'organisation" et la faire glisser dans la liste des lignes afin de positionner. la dimension de l'unité d'organisation sous forme de lignes dans la table. Notez que les indicateurs, les éléments de données et les taux de reporting des ensembles de données font partie de la dimension de "donnée" commune et seront affichés ensemble dans le tableau croisé dynamique. Par exemple, après avoir sélectionné des indicateurs et des éléments de données dans le menu de gauche, vous pouvez faire glisser "Unité d'organisation" de la liste des dimensions disponibles vers la liste des dimensions de la ligne afin de les disposer en lignes dans le tableau croisé dynamique.

![](resources/images/content/user/pivot_table/table_layout.png)

Après avoir configuré votre tableau croisé dynamique, vous pouvez cliquer sur "Mettre à jour" pour restituer le rendu de votre tableau croisé dynamique, ou cliquez sur "Masquer" pour masquer l'écran de mise en page sans qu'aucune changement ne prenne effet. Dans notre exemple, nous avons sélectionné à la fois la période et dimension de l'unité d'organisation sous forme de lignes, le tableau croisé dynamique générera toutes les combinaisons d'éléments dans ces dimensions et produira un tableau comme ceci:

![](resources/images/content/user/pivot_table/pivot_rows.png)

## Modifier l'affichage de votre tableau croisé dynamique

<!--DHIS2-SECTION-ID:pivot_change_display-->

1.  Ouvrez l'application **Tableau croisé dynamique**.

2.  Créez un nouveau tableau croisé dynamique ou ouvrez un favori.

3.  Cliquez sur **Options**.

4.  Définissez les options selon vos besoins.

    <table>
    <caption>Pivot table options</caption>
    <colgroup>
    <col style="width: 21%" />
    <col style="width: 35%" />
    <col style="width: 42%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th><p>Option</p></th>
    <th><p>Description</p></th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td><p><strong>Data</strong></p></td>
    <td><p><strong>Show column totals</strong></p>
    <p><strong>Show row totals</strong></p></td>
    <td><p>Displays total values in the table for each row and column, as well as a total for all values in the table.</p></td>
    </tr>
    <tr class="even">
    <td></td>
    <td><p><strong>Show column sub-totals</strong></p>
    <p><strong>Show row sub-totals</strong></p></td>
    <td><p>Displays subtotals in the table for each dimension.</p>
    <p>If you only select one dimension, subtotals will be hidden for those columns or rows. This is because the values will be equal to the subtotals.</p></td>
    </tr>
    <tr class="odd">
    <td></td>
    <td><p><strong>Show dimension labels</strong></p></td>
    <td><p>Shows the dimension names as part of the pivot tables.</p></td>
    </tr>
    <tr class="even">
    <td></td>
    <td><p><strong>Hide empty rows</strong></p></td>
    <td><p>Hides empty rows from the table. This is useful when you look at large tables where a big part of the dimension items don't have data in order to keep the table more readable.</p></td>
    </tr>
    <tr class="odd">
    <td></td>
    <td><p><strong>Hide empty columns</strong></p></td>
    <td><p>Hides empty columns from the table. This is useful when you look at large tables where a big part of the dimension items don't have data in order to keep the table more readable.</p></td>
    </tr>
    <tr class="even">
    <td></td>
    <td><p><strong>Skip rounding</strong></p></td>
    <td><p>Skips the rounding of data values, offering the full precision of data values. Can be useful for finance data where the full dollar amount is required.</p></td>
    </tr>
    <tr class="odd">
    <td></td>
    <td><p><strong>Aggregation type</strong></p></td>
    <td><p>The default aggregation operator can be over-ridden here, by selecting a different aggregation operator. Some of the aggregation types are <strong>Count</strong>, <strong>Min</strong> and <strong>Max</strong>.</p></td>
    </tr>
    <tr class="even">
    <td></td>
    <td><p><strong>Number type</strong></p></td>
    <td><p>Sets the type of value you want to display in the pivot table: <strong>Value</strong>, <strong>Percentage of row</strong> or <strong>Percentage of column</strong>.</p>
    <p>The options <strong>Percentage of row</strong> and<strong>Percentage of column</strong> mean that you'll display values as percentages of row total or percentage of column total instead of the aggregated value. This is useful when you want to see the contribution of data elements, categories or organisation units to the total value.</p></td>
    </tr>
    <tr class="odd">
    <td></td>
    <td><p><strong>Measure criteria</strong></p></td>
    <td><p>Allows for the data to be filtered on the server side.</p>
    <p>You can instruct the system to return only records where the aggregated data value is equal, greater than, greater or equal, less than or less or equal to certain values.</p>
    <p>If both parts of the filter are used, it's possible to filter out a range of data records.</p></td>
    </tr>
    <tr class="even">
    <td><p><strong>Events</strong></p></td>
    <td><p><strong>Include only completed events</strong></p></td>
    <td><p>Includes only completed events in the aggregation process. This is useful for example to exclude partial events in indicator calculations.</p></td>
    </tr>
    <tr class="odd">
    <td><p><strong>Organisation units</strong></p></td>
    <td><p><strong>Show hierarchy</strong></p></td>
    <td><p>Shows the name of all ancestors for organisation units, for example &quot;Sierra Leone / Bombali / Tamabaka / Sanya CHP&quot; for Sanya CHP.</p>
    <p>The organisation units are then sorted alphabetically which will order the organisation units according to the hierarchy.</p>
    <p>When you download a pivot table with organisation units as rows and you've selected <strong>Show hierarchy</strong>, each organisation unit level is rendered as a separate column. This is useful for example when you create Excel pivot tables on a local computer.</p></td>
    </tr>
    <tr class="even">
    <td><p><strong>Legend</strong></p></td>
    <td><p><strong>Apply legend</strong></p></td>
    <td><p>Applies a legend to the values. This mean that you can apply a colour to the values.</p>
    <p>Select <strong>By data item</strong> to color the table cells individually according to each data element or indicator.</p>
    <p>You configure legends in the <strong>Maintenance</strong> app.</p></td>
    </tr>
    <tr class="odd">
    <td></td>
    <td><p><strong>Style</strong></p></td>
    <td><p>Colors the text or background of cells in pivot tables based on the selected legend.</p>
    <p>You can use this option for scorecards to identify high and low values at a glance.</p></td>
    </tr>
    <tr class="even">
    <td><p><strong>Style</strong></p></td>
    <td><p><strong>Display density</strong></p></td>
    <td><p>Controls the size of the cells in the table. You can set it to <strong>Comfortable</strong>, <strong>Normal</strong> or <strong>Compact</strong>.</p>
    <p><strong>Compact</strong> is useful when you want to fit large tables into the browser screen.</p></td>
    </tr>
    <tr class="odd">
    <td></td>
    <td><p><strong>Font size</strong></p></td>
    <td><p>Controls the size of the table text font. You can set it to <strong>Large</strong>, <strong>Normal</strong> or <strong>Small</strong>.</p></td>
    </tr>
    <tr class="even">
    <td></td>
    <td><p><strong>Digit group separator</strong></p></td>
    <td><p>Controls which character to separate groups of digits or &quot;thousands&quot;. You can set it to <strong>Comma</strong>, <strong>Space</strong> or <strong>None</strong>.</p></td>
    </tr>
    <tr class="odd">
    <td><p><strong>General</strong></p></td>
    <td><p><strong>Table title</strong></p></td>
    <td><p>Type a title here to display it above the table.</p></td>
    </tr>
    <tr class="even">
    <td><p><strong>Parameters (for standard reports only)</strong></p></td>
    <td><blockquote>
    <p><strong>Note</strong></p>
    <p>You create standard reports in the <strong>Reports</strong> app.</p>
    <p>In the <strong>Pivot Table</strong> app you set which parameters the system should prompt the user for.</p>
    </blockquote></td>
    </tr>
    <tr class="odd">
    <td></td>
    <td><p><strong>Reporting period</strong></p></td>
    <td><p>Controls whether to ask user to enter a report period.</p></td>
    </tr>
    <tr class="even">
    <td></td>
    <td><p><strong>Organisation unit</strong></p></td>
    <td><p>Controls whether to ask user to enter an organisation unit.</p></td>
    </tr>
    <tr class="odd">
    <td></td>
    <td><p><strong>Parent organisation unit</strong></p></td>
    <td><p>Controls whether to ask user to enter a parent organisation unit.</p></td>
    </tr>
    <tr class="even">
    <td></td>
    <td><p><strong>Include regression</strong></p></td>
    <td><p>Includes a column with regression values to the pivot table.</p></td>
    </tr>
    <tr class="odd">
    <td></td>
    <td><p><strong>Include cumulative</strong></p></td>
    <td><p>Includes a column with cumulative values to the pivot table.</p></td>
    </tr>
    <tr class="even">
    <td></td>
    <td><p><strong>Sort order</strong></p></td>
    <td><p>Controls the sort order of the values.</p></td>
    </tr>
    <tr class="odd">
    <td></td>
    <td><p><strong>Top limit</strong></p></td>
    <td><p>Controls the maximum number of rows to include in the pivot table.</p></td>
    </tr>
    </tbody>
    </table>

5.  Cliquez sur **Mettre à jour**.

## Gérer les favoris

La sauvegarde de vos graphiques ou tableaux croisés dynamiques dans les favoris facilite leur recherche plus tard. Vous pouvez également choisir de les partager avec d'autres utilisateurs en tant qu'interprétation ou les afficher sur le tableau de bord.

Vous pouvez visualisez les détails et interprétations de vos favoris dans les applications **Tableau croisé dynamique**, **Visualiseur de données**, **Visualiseur d'événement**, **Rapports d'evénements**. Utilisez le menu **Favoris** pour gérer vos favoris.

### Ouvrir un favori

1.  Cliquez sur **Favoris** \> **Ouvrir**.

2.  Entrez le nom d'un favori dans le champ de recherche ou cliquez sur **Précédent**. et **Suivant** pour afficher les favoris.

3.  Cliquez sur le nom du favori que vous souhaitez ouvrir.

### Sauvegarder un favori

1.  Cliquez sur **Favoris** \> **Sauvegarder**.

2.  Enter a **Name** and a **Description** for your favorite. The description field supports a rich text format, see the interpretations section for more details.

3.  Cliquez sur **Sauvegarder**.

### Renommer un favori

1.  Cliquez sur **Favoris** \> **Renommer**.

2.  Entrez le nouveau nom que vous souhaitez donner à votre favori.

3.  Cliquez sur **Mettre à jour**.

### Ecrire une interprétation d'un favori

Une interprétation est un lien vers une ressource avec une description des données à une période donnée. Cette information est visible dans l'application **Tableau de bord**. Pour créer une interprétation, vous devez d'abord créer un favori. Si vous avez partagé votre favori avec d'autres personnes, votre interprétation sera visible pour ces personnes.

1.  Cliquez sur **Favoris** \> **Ecrire une interprétation**.

2.  Dans le champ de texte, tapez un commentaire, une question ou une interprétation. Vous pouvez également mentionner d'autres utilisateurs avec '@nomd'utilisateur'. Commencez par taper '@' suivi par les premières lettres du nom d'utilisateur ou du nom réel et une barre de mention affichera les utilisateurs disponibles. Les utilisateurs mentionnés recevront un message DHIS2 en interne à propos de  l'interprétation ou le commentaire. Vous pouvez voir l'interprétation dans l'application **Tableau de bord**.

    It is possible to format the text with **bold**, _italic_ by using the Markdown style markers \* and \_ for **bold** and _italic_ respectively. Keyboard shortcuts are also available: Ctrl/Cmd + B and Ctrl/Cmd + I. A limited set of smilies is supported and can be used by typing one of the following character combinations: :) :-) :( :-( :+1 :-1. URLs are automatically detected and converted into a clickable link.

3.  Recherchez un groupe d'utilisateurs avec lequel vous souhaitez partager votre favori, puis cliquez sur l'icône **+**.

4.  Modifiez les paramètres de partage pour les groupes d'utilisateurs que vous souhaitez modifier.

    - **Lecture et écriture**: Tout le monde peut consulter et éditer l'objet.

    - **Lecture uniquement**: tout le monde peut consulter l'objet.

    - **Aucun**: le public n'aura pas accès à l'objet. Ce Ce paramètre ne s'applique qu'à **Accès public**.

5.  Cliquez sur **Partager**.

### S'abonner à un favori

Lorsque vous vous abonnez à un favori, vous recevez des messages internes chaque fois qu'un autre utilisateur aime/crée/met à jour une interprétation ou crée/met à jour un commentaire d'interprétation de ce favori.

1.  Ouvrez un favori.

2.  Cliquez **\>\>\>** en haut à droite de l'espace de travail.

3.  Cliquez sur l'icône en cloche en haut à droite pour vous abonner à ce favori.

### Créer un lien vers un favori

1.  Cliquez sur **Favoris** \> **Créer un lien**.

2.  Sélectionnez une des options suivantes:

    - **Ouvrir dans cette application**: Vous obtenez un lien URL pour le favori que vous souhaitez partager avec d'autres utilisateurs via email ou chat.

    - **Ouvrir dans un navigateur web api**: vous obtenez un lien URL de la ressource API. Il s'agit d'une ressource HTML par défaut, mais vous pouvez changer l'extension du fichier à ".json" ou ".csv".

### Supprimer un favori

1.  Cliquez sur **Favoris** \> **Supprimer**.

2.  Cliquez sur **OK**.

### Afficher les interprétations basées sur des périodes relatives

Pour afficher les interprétations pour des périodes relatives, par exemple des interprétations de l'année dernière:

1.  Ouvrez un favori avec des interprétations.

2.  Cliquez **\>\>\>** en haut à droite de l'espace de travail.

3.  Cliquez sur une interprétation. Votre graphique affiche les données et la date relative en fonction de la date de création de l'interprétation. Pour voir d'autres interprétations, cliquez dessus.

## Télécharger des données depuis un tableau croisé dynamique

<!--DHIS2-SECTION-ID:pivot_download_data-->

### Download table layout data format

Pour télécharger les données depuis le tableau croisé dynamique actuel:

1.  Cliquez sur **Télécharger**.

2.  Sous **Disposition du tableau**, cliquez sur le format que vous souhaitez télécharger: Microsoft Excel, CSV ou HTML.

    La table de données aura une colonne par dimension et contiendra des noms d'éléments de dimension.

    > **Tip**
    >
    > When you download a pivot table with organisation units as rows and you've selected **Show hierarchy** in **Table options**, each organisation unit level is rendered as a separate column. This is useful for example when you create Excel pivot tables on a local computer.

> **Astuce**
>
> Vous pouvez créer un tableau croisé dynamique dans Microsoft Excel à partir du fichier Excel téléchargé.

### Download plain data source format

Vous pouvez télécharger des données dans le tableau croisé dynamique actuel sous format JSON, XML, Excel, et CSV en tant que formats de données simples avec différents schémas d'identification (ID, Code et Nom). Le document de données utilise des identifiants des éléments de dimension et s'ouvre dans une nouvelle fenêtre du navigateur pour afficher l'URL de la requête à l'API Web dans la barre d'adresse. Ceci est utile pour les développeurs d'applications et d'autres modules clients basés sur DHIS2 Web API ou pour ceux qui ont besoin d'une source de données du plan, par exemple pour l'importation pour des fins statistiques.

Pour télécharger les formats standard de source de données:

1.  Cliquez sur **Télécharger**.

2.  Sous **Source de données standard**, cliquez sur le format que vous souhaitez télécharger.

    <table>
    <caption>Available formats</caption>
    <colgroup>
    <col style="width: 18%" />
    <col style="width: 33%" />
    <col style="width: 47%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th><p>Format</p></th>
    <th><p>Action</p></th>
    <th><p>Description</p></th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td><p>JSON</p></td>
    <td><p>Click <strong>JSON</strong></p></td>
    <td><p>Downloads JSON format based on ID property.</p>
    <p>You can also download JSON format based on <strong>Code</strong> or <strong>Name</strong> property.</p></td>
    </tr>
    <tr class="even">
    <td><p>XML</p></td>
    <td><p>Click <strong>XML</strong></p></td>
    <td><p>Downloads XML format based on ID property.</p>
    <p>You can also download XML format based on <strong>Code</strong> or <strong>Name</strong> property.</p></td>
    </tr>
    <tr class="odd">
    <td><p>Microsoft Excel</p></td>
    <td><p>Click <strong>Microsoft Excel</strong></p></td>
    <td><p>Downloads XML format based on ID property.</p>
    <p>You can also download Microsoft Excel format based on <strong>Code</strong> or <strong>Name</strong> property.</p></td>
    </tr>
    <tr class="even">
    <td><p>CSV</p></td>
    <td>Click <strong>CSV</strong></td>
    <td><p>Downloads CSV format based on ID property.</p>
    <p>You can also download CSV format based on <strong>Code</strong> or <strong>Name</strong> property.</p></td>
    </tr>
    <tr class="odd">
    <td><p>JRXML</p></td>
    <td><p>Put the cursor on <strong>Advanced</strong> and click <strong>JRXML</strong></p></td>
    <td><p>Produces a template of a Jasper Report which can be further customized based on your exact needs and used as the basis for a standard report in DHIS2.</p></td>
    </tr>
    <tr class="even">
    <td><p>Raw data SQL</p></td>
    <td><p>Put the cursor on <strong>Advanced</strong> and click <strong>Raw data SQL</strong></p></td>
    <td><p>Provides the actual SQL statement used to generate the pivot table. You can use it as a data source in a Jasper report, or as the basis for an SQL view.</p></td>
    </tr>
    </tbody>
    </table>

### Download a CSV format without rendering data in the web browser

Vous pouvez télécharger des données au format CSV directement sans passer par le navigateur web. Cela aide à réduire les contraintes dans les paramètres système qui ont été définis en ce qui concerne le nombre maximal d'enregistrements analytiques. Cela vous permet de télécharger des lots de données beaucoup plus volumineux que ceux que vous pouvez utiliser pour une analyse hors ligne ultérieure.

Pour télécharger des données au format CSV sans les rendre au préalable sur le Web navigateur:

1.  Cliquez sur la flèche à côté de **Mettre à jour**.

    ![](resources/images/content/user/pivot_table/data_dump.png)

2.  Cliquez sur **CSV** pour télécharger le format basé sur la propriété ID.

    Le fichier est téléchargé sur votre ordinateur.

    > **Tip**
    >
    > You can also download CSV format based on **Code** or **Name** property.

## Intégrer un tableau croisé dynamique dans une page Web externe

<!--DHIS2-SECTION-ID:pivot_embed-->

Certaines ressources liées à l'analyse dans DHIS2, telles que les tableaux croisés dynamiques, les graphiques et les cartes, peuvent être intégrés à n'importe quelle page Web à l'aide d'un plug-in. Vous trouverez plus d'informations sur les plug-ins dans le chapitre API Web du _Manuel du développeur DHIS2_.

Pour générer un fragment HTML que vous pouvez utiliser pour afficher le tableau croisé dynamique dans une page web externe:

1.  Cliquez sur **Intégrer**.

2.  Cliquez sur **Sélectionner** pour mettre en évidence le fragment HTML.

## Visualiser les données d'un tableau croisé dynamique sous forme de graphique ou de carte

<!--DHIS2-SECTION-ID:pivot_integration-->

Lorsque vous avez créé un tableau croisé dynamique, vous pouvez basculer entre cette visualisation, les graphique et les cartes.

### Ouvrir un tableau croisé dynamique sous forme de graphique

1.  Cliquez sur **Graphique** \> **Ouvrir ce tableau sous forme de graphique**.

    Votre tableau croisé dynamique actuel s'ouvre sous forme de graphique.

![](resources/images/content/user/pivot_table/pivot_integration.png)

### Ouvrir une sélection de tableau croisé dynamique sous forme de graphique

Si vous souhaitez visualiser une petite partie de votre tableau croisé dynamique sous forme de graphique, vous pouvez cliquer directement sur une valeur dans la table au lieu d'ouvrir l'ensemble du tableau.

1.  Dans le tableau croisé dynamique, cliquez sur une valeur.


    ![](resources/images/content/user/pivot_table/pivot_integration_table.png)

2.  Pour vérifier la sélection, maintenez le curseur de la souris sur **Ouvrir la sélection en tant que graphique** Les en-têtes de dimension en surbrillance dans le tableau indiquent quelles données seront visualisées sous forme de graphique.

3.  Cliquez sur **Ouvrir la sélection en tant que graphique**.

### Ouvrir un tableau croisé dynamique sous forme de carte

1.  Cliquez sur **Graphique** \> **Ouvrir ce tableau sous forme de carte**.

    Votre tableau croisé dynamique actuel s'ouvre sous forme de carte.

### Ouvrir une sélection de tableau croisé dynamique sous forme de carte

1.  Dans le tableau croisé dynamique, cliquez sur une valeur.

    Un menu s'affiche.

2.  Cliquez sur **Ouvrir la sélection en tant que carte**.

    Votre séléction s'ouvre sous forme de carte.

# Using the Data Visualizer app

<!--DHIS2-SECTION-ID:data_visualizer-->

## Creating and editing visualizations

When you open the data-visualizer app from the dhis2 menu, you are presented with a blank slate and you can start creating your visualization right away.

![](resources/images/content/user/data-visualizer/data-visualizer-new.png)

Select the desired visualization type from the selector in the upper left corner:

![](resources/images/content/user/data-visualizer/data-visualizer-visualization-type.png)

From the dimension menu on the left you can select the dimension you want to show in your visualization, including data, period, organisation units and dynamic dimensions.

![](resources/images/content/user/data-visualizer/data-visualizer-dimensions.png)

You can also change the selections by clicking on the chips in the layout area.

![](resources/images/content/user/data-visualizer/data-visualizer-layout-area.png)

## Adding more axes

When combining data with different measurement scales you will get a more meaningful visualization by having more than a single axis. For "column", "bar" and "line" charts you can do so by clicking "Manage axes" in the series dimension's context menu.

![](resources/images/content/user/data-visualizer/data-visualizer-axis-management-menu-option.png)

In the axis management dialog you can assign data items to the two axes.

![](resources/images/content/user/data-visualizer/data-visualizer-axis-management-dialog.png)

## Viewing visualization interpretations

When viewing a visualization, you can expand the interpretations on the right side by clicking on the Interpretations button in the upper right corner. The visualization description will also be shown. The description suppots rich text format.

To view the visualization according to the date of a particular interpretation, click on the interpretation or its "View" button. This will regenerate the visualization with the relevant date, which is indicated next to the visualization title.

![](resources/images/content/user/data-visualizer/data-visualizer-view-interpretation.png)

Clicking on "Back to all interpretations" or the "Exit View" button inside the interpretations panel will clear the interpretation and regenerate the visualization with the current date.

## See visualization as map

Sometimes it can be useful to see how visualization would look like on map. To achieve this you can select "Open as Map" visualization type after you build your visualization.

![](resources/images/content/user/data-visualizer/data-visualizer-open-as-map.png)

# Utilisation de l'application Maps

<!--DHIS2-SECTION-ID:using_maps-->

## A propos de l'application Maps

<!--DHIS2-SECTION-ID:about_maps-->

L'application Maps est introduite dans la version 2.29 et sert de remplacement DE l'application GIS en offrant une interface plus intuitive et conviviale.

With the Maps app you can overlay multiple layers and choose among different base maps. You can create thematic maps of areas and points, view facilities based on classifications, and visualize catchment areas for each facility. You can add labels to areas and points, and search and filter using various criteria. You can move points and set locations on the fly. Maps can be saved as favorites and shared with other users and groups, or downloaded as an image.

> **Note**
>
> Pour utiliser des légendes prédéfinies dans l'application **Maps**, vous devez les créer. Tout d'abord dans l'application de **Maintenance**.

![](resources/images/content/user/maps/maps_main.png)

- Le panneau **calques** situé à gauche de l'espace de travail affiche un aperçu des couches cartographiques pour la carte actuelle:

  - As layers are added, using the **(+) Add layer** button, they are arranged and managed in this panel.

  - La **carte de référence** est toujours affichée dans le panneau. La carte de référence est OSM Light et est sélectionnée par défaut. OpenStreetMap Detaild, Google Streets et Google Hybrid sont également disponibles. Vous pouvez utiliser ces cartes en arrière-plans. Passez d'une carte à une autre en séléctionnant l'image souhaitée.

  - Le petit bouton fléche situé à droite du panneau des calques, au niveau de en haut, permet de masquer ou d'afficher le panneau.

<!-- end list -->

- The **File** button near the top left allows you to open and save maps:

  - Nouveau

    will clear any existing map layers to create a new map.

  - Ouvrir

    will display a dialog box with a list of existing maps where they be opened, renamed, shared and deleted. _The title of the current map is displayed in the header bar above the File button._

  - Sauvegarder

    will save any changes to the current map.

  - Enregistrer sous

    will save the current map with a new name.

  - Rename

    allows you to change the name and/or description of the current map.

  - Translate

    allows you to translate the name and/or description of the current map.

  - Share

    will open a dialog where the current map can be shared with everyone or a group of users.

  - Obtenir le lien

    will provide a direct link to the current map.

  - Delete

    deletes the current map.

<!-- end list -->

- The **Download** button next to the File button allows you to download the current map as a PNG image.

<!-- end list -->

- The **Interpretations** button at top right opens an interpretations panel on the right side of the workspace. The button is only clickable if the map is saved.

  - **Map details** shows information about the current map.

  - **Interpretations** allows you to view, add, edit and share interpretations about the current map.

<!-- end list -->

- Les boutons **+** et **-** sur la carte vous permettent d'effectuer des zooms avant et arrière de la carte respectivement. La molette de la souris peut également être utilisée pour modifier le zoom.

- **Zoom sur le contenu** (symbole de la loupe délimitée) ajuste automatiquement le niveau de zoom et la position centrale de la carte pour mettre en avant les données sur votre carte.

- **Rechercher** (symbole de la loupe) permet de rechercher et de sauter à un endroit sur la carte.

- Le bouton **règle** vous permet de calculer la distance entre deux endroits sur la carte.

- Pour afficher des informations sur un événement, cliquez simplement dessus.

- Faites un clic droit sur la carte pour afficher la longitude et la latitude de cet emplacement.

**Carte de référence**

Les calques de la carte de référence sont représentées par des calques _cartes_ dans le panneau comme:

![](resources/images/content/user/maps/maps_basemap_card.png)

En haut de la carte de référence, de gauche à droite, se trouvent:

- Le titre de la carte de référence sélectionnée

- Un symbole de flèche pour réduire et développer la carte de référence

Au milieu de la carte de fond de référence figure la liste des cartes de référence disponibles. la carte de référence actuelle est mise en surbrillance.

En bas de la carte de référence se trouvent:

- Un symbole d'oeil pour basculer la visibilité du calque

- Un curseur pour modifier la transparence du calque

## Créer une nouvelle carte

<!--DHIS2-SECTION-ID:using_maps_create_map-->

1.  Dans le menu **Applications**, cliquez sur **Cartes**. La fenêtre **DHIS2 Maps** s'ouvre

2.  Cliquez sur le bouton (+) Ajouter un calque en haut à gauche. Le dialogue de sélection de calque apparaît

    ![](resources/images/content/user/maps/maps_layer_selection.png)

3.  Sélectionnez un calque à ajouter à la carte actuelle. Les options possibles sont:

    - [Thématique](#using_maps_thematic_layer)

    - [Événements](#using_maps_event_layer)

    - [Tracked entities](#using_maps_tracked_entity_layer)

    - [Infrastructure](#using_maps_facility_layer)

    - [Frontières](#using_maps_boundary_layer)

    En outre, il existe plusieurs calques fournis par Google Earth et autres services:

    - Densité de population

    - élévation

    - Température

    - Précipitation

    - Couverture terrestre

    - Lumières nocturnes

    _Labels overlay_ is an [external layer](#using_maps_external_map_layers) defined in the Maintenance app.

## Gérer les calques thématiques

<!--DHIS2-SECTION-ID:using_maps_thematic_layer-->

_Les calques thématiques_ représentent la variation spatiale des distributions géographiques. Sélectionnez votre combinaison indicateur/élément de données, période et niveau de l'unité d'organisation. Si votre base de données contient des coordonnées et des valeurs de données agrégées pour ces unités d'organisation, elles apparaîtront sur la carte.

> **Note**
>
> You must generate the DHIS2 analytics tables to have aggregated data values available.

![](resources/images/content/user/maps/maps_thematic_mapping.png)

Les calques thématiques sont représentés par des calques _ cartes _ dans le panneau des calques, par exemple

En haut de la carte thématique, de gauche à droite, vous trouverez:

- un champ de saisie permettant de faire glisser et de réorganiser les calques avec la souris

- Le titre et la période associés au calque

- Un symbole de flèche pour réduire et développer la carte thématique

Au centre de la carte thématique se trouve une légende indiquant les plages de valeurs affichées sur le calque.

En bas de la carte thématique, de gauche à droite, se trouvent:

- Un bouton d'édition (crayon) pour ouvrir la boîte de dialogue de configuration du calque

- Un symbole d'oeil pour basculer la visibilité du calque

- Un curseur pour modifier la transparence du calque

- A more actions (three dots) button with additional options:

  - Un bouton **tableau de données** pour afficher ou masquer le tableau de données associé au calque

  - **Download data** allows you to download the data for this layer in GeoJSON format for use in other mapping software

  - **Edit layer** is the same as edit button above

  - **Remove layer** will remove this layer from the current map.

### Créer un calque thématique

To create an event layer, choose **Thematic** on the **Add layer** selection. This opens the Events layer configuration dialog.

1.  Dans l'onglet **DATA**:

    ![](resources/images/content/user/maps/maps_thematic_layer_dialog_DATA.png)

    - Sélectionnez un type de données puis sélectionnez respectivement le groupe et l'élément cible. Les champs disponibles dépendent du type d'article sélectionné.

    - Sélectionnez une valeur dans le champ **Type d'agrégation** pour les valeurs de données à afficher sur la carte. Par défaut, "Par élément de données" est sélectionné. Les valeurs alternatives sont: Nombre; Moyenne; Somme; Norme déviation; Variance; Min; Max. Voir également [Aggregation operators](https://dhis2.github.io/dhis2-docs/master/en/user/html/ch10s05.html#d0e8082).

2.  Dans l'onglet **PÉRIODE**

    ![](resources/images/content/user/maps/maps_thematic_layer_dialog_PERIOD.png)

    - select the time span over which the thematic data is mapped. You can select either a relative or a fixed period.

      - Période relative

        In the **Period type** field select **Relative**, then select one of the relative periods, for example **Last year** or **Last 12 months**, in the **Period** field. If you select a relative period covering mutiple years/months/weeks/days the layer can be displayed as

        - Single (aggregate)

          Show aggregate values for the relative period selected (default).

        - Timeline

          Includes a timeline allowing you to step through the periods. Only one timeline layer can be added to the same map.

        - Split map views

          Show multiple maps allowing you to compare different periods side by side. Supported for relative periods with 12 items or below. Can not be combined with other layer types.

      - Période fixe

        Dans le champ **Type de période**, sélectionnez la durée de la période, puis sélectionnez la cible dans le champ **Période**.

      - Start/end dates

        In the **Period type** field select **Start/end dates** and fill in a start date and an end date.

3.  Dans l'onglet **Unités d'Org.**:

    ![](resources/images/content/user/maps/maps_thematic_layer_dialog_ORG_UNITS.png)

    - Sélectionnez les unités d'organisation que vous souhaitez inclure dans la couche. Il est possible de sélectionner :

      - One or more specific organisation units, organisation unit levels in the hierarchy, organisation unit groups, or

      - An niveau relatif dans la hiérarchie des unités d'organisation, par rapport à l'utilisateur. En sélectionnant une **unité d'organisation d'un utilisateur**, les données cartographiques apparaîtront différemment pour les utilisateurs à différents niveaux dans la hiérarchie de l'unité d'organisation.

4.  Dans l'onglet **FILTRE**:

    ![](resources/images/content/user/maps/maps_thematic_layer_dialog_FILTER.png)

    - Cliquez sur AJOUTER UN FILTRE et sélectionnez un élément de données disponible pour ajouter un nouveau filtre à l'ensemble de données.

      - Select a data dimension from the drop down box. You can reduce the number of dimensions shown by using the search field. Click on the name to select a dimension.

      - When a dimension is selected you get a second drop down with dimension items. Check the items you want to include in the filter.

      Multiple filters may be added. Click the trash button on the right of the filter to remove it.

<!--DHIS2-SECTION-ID:using_maps_thematic_layer_style-->

5.  Dans l'onglet **STYLE**:

    ![](resources/images/content/user/maps/maps_thematic_layer_dialog_STYLE.png)

    - Sélectionnez la légende **Automatique** ou **Prédéfinie**.

      - Les types de légendes automatiques signifient que l'application va créer une légende en fonction de votre méthode, nombre de classes, les couleurs légères et profondes que vous sélectionnez. La méthode fait désigne la taille des classes de légende. Configurez :

        - Intervalles égaux

          la plage de chaque intervalle sera **(la plus haute valeur de données - la plus basse valeur de données / nombre de classes)**

        - Nombres égaux

          le créateur de la légende va tenter de répartir les unités d'organisation uniformément.

      - Si vous avez des infrastructures dans votre couche thématique, vous pouvez définir le rayon pour les valeurs minimales et maximales en modifiant les valeurs dans les cases **Taille basse** et **Taille haute** respectivement.

6.  Cliquez sur **AJOUTER UNE COUCHE**.

### Modifier une couche thématique

1.  Dans le panneau des couches, cliquez sur l'icône Édition (crayon) sur la carte de la couche thématique.

2.  Modify the setting on any of the tabs as desired.

3.  Cliquez sur **METTRE À JOUR LA COUCHE**.

### Filtrer les valeurs dans une couche thématique

Les couches thématiques ont une option **tableau de données** qui peut être activée ou désactivée à partir de la carte de couche thématique.

![](resources/images/content/user/maps/maps_thematic_layer_data_table.png)

La table de données affiche les données qui forment la couche thématique

- en cliquant sur un titre, le tableau sera trié en fonction de cette colonne tout en donnant la possibilité de basculer entre un classement ascendant et descendant.

- entrer du texte ou des expressions dans les champs de filtre situé sous les titres appliquera ces filtres aux données et l'affichage s'ajustera selon le filtre. Les filtres sont appliqués comme suit :

  - NOM

    filtrer par noms contenant ce texte

  - VALEUR

    filtrer les valeurs par des nombres et/ou des plages de valeurs données, par exemple : 2,\>3&\<8

  - LÉGENDE

    filtrer par légendes contenant ce texte

  - INTERVALLE

    filtrer par plages contenant ce texte

  - NIVEAU

    filtrez le niveau par nombres et/ou plages de valeurs, par exemple : 2,\>3&\<8

  - PARENT

    filtrer par noms de parent contenant ce texte

  - Identifiant

    filtrer par Identifiants contenant ce texte

  - TYPE

    filtrer par types d'affichage SIG contenant ce texte

  - COULEUR

    filtrer par noms de couleurs contenant ce texte

> **Note**
>
> Les filtres des tableaux de données sont temporaires et ne sont pas enregistrés avec les couches de la carte en tant que favori.

### Rechercher une unité d'organisation

Le champ de filtre NOM dans le tableau de données constitue un moyen efficace de rechercher des unités d'organisation individuelles.

### Naviguer entre les hiérarchies d'organisation

Lorsqu'il y a des unités d'organisation visibles sur la carte, vous pouvez facilement naviguer de haut en bas dans la hiérarchie sans utiliser l'interface utilisateur niveau/parent.

1.  Faites un clique droit sur l'une des unités d'organisation.

2.  Sélectionnez **Accéder au niveau supérieur** ou **Accéder au niveau inférieur**.

    L'option d'exploration est désactivée si vous vous trouvez au niveau le plus bas ou s'il n'y a pas de coordonnées disponibles au niveau inférieur. De même, l'option d'exploration en amont est désactivée à partir du niveau le plus élevé.

### Supprimer une couche thématique

Pour effacer toutes les données d'une couche thématique :

1.  In the layer card to the left, click the _more actions_ (three dots) icon and then on **Remove layer**.

    La couche est supprimée de la carte actuelle.

## Gérer les couches d'évènements

<!--DHIS2-SECTION-ID:using_maps_event_layer-->

The event layer displays the geographical location of events registered in the DHIS2 tracker. Provided that events have associated point or polygon coordinates, you can use this layer to drill down from the aggregated data displayed in the thematic layers to the underlying individual events or cases.

Vous pouvez également afficher des évènements agrégés sur le site ou au niveau de la frontière. Vous faites cela à travers une couche thématique en utilisant des éléments de données d'évènements. Ceci est utile lorsque vous n’avez que les coordonnées de l’unité d'organisation sous laquelle sont enregistrés les événements.

![](resources/images/content/user/maps/maps_event_layer.png)

Les couches d'évènements sont représentées par des couches _cartes_ dans le panneau des couches, par exemple :

En haut de la carte d'évènement, de gauche à droite, se trouvent :

- un champ de saisie permettant de faire glisser et de réorganiser les couches avec la souris

- Le titre et la période associés à la couche

- Un symbole de flèche pour réduire et développer la carte d'évènement

Au centre de la carte d'évènement se trouve une légende indiquant le style de la couche.

En bas de la carte d'évènement, de gauche à droite, se trouvent :

- Un bouton d'édition (crayon) pour ouvrir la boîte de dialogue de configuration de la couche

- Un symbole d'oeil pour basculer la visibilité de la couche

- Un curseur pour modifier la transparence de la couche

- A more actions (three dots) button with additional options:

  - **Download data** allows you to download the data for this layer in GeoJSON format for use in other mapping software

  - **Edit layer** is the same as edit button above

  - **Remove layer** will remove this layer from the current map.

### Créer une couche d'évènements

<!--DHIS2-SECTION-ID:maps_create_event_layer-->

To create an event layer, choose **Events** on the **Add layer** selection. This opens the Events layer configuration dialog.

1.  Dans l'onglet **DONNÉES**:

    ![](resources/images/content/user/maps/maps_event_layer_dialog_DATA.png)

    - Sélectionnez un programme, puis sélectionnez une étape du programme. **L'étape** n'est affiché qu'après la sélection d'un programme.

      S'il y a seulement une étape disponible pour le programme, celle-ci est automatiquement sélectionnée.

    - Sélectionnez une valeur dans le champ **Coordonnées** pour les positions indiquées sur la carte. Par défaut, "localisation de l'évènement" est sélectionné. En fonction des éléments de données ou des attributs appartenant à un programme, d'autres coordonnées telles que "Position du ménage" sont disponibles.

2.  Dans l'onglet **PÉRIODE**

    ![](resources/images/content/user/maps/maps_event_layer_dialog_PERIOD.png)

    - sélectionnez la période pendant laquelle les événements ont eu lieu. Vous pouvez sélectionner une période fixe ou une période relative.

      - Période fixe

        Dans le champ **Période**, sélectionnez **Dates de début /de fin** et remplissez une date de début et une date de fin.

      - Période relative

        Dans le champ **Période**, sélectionnez l'une des périodes relatives, par exemple **Ce mois** ou **L'année dernière**.

3.  Dans l'onglet **Unités d'Org.**:

    ![](resources/images/content/user/maps/maps_event_layer_dialog_ORG_UNITS.png)

    - Sélectionnez les unités d'organisation que vous souhaitez inclure dans la couche. Il est possible de sélectionner :

      - Une ou plusieurs unités d'organisation spécifiques, ou

      - An niveau relatif dans la hiérarchie des unités d'organisation, par rapport à l'utilisateur. En sélectionnant une **unité d'organisation d'un utilisateur**, les données cartographiques apparaîtront différemment pour les utilisateurs à différents niveaux dans la hiérarchie de l'unité d'organisation.

4.  Dans l'onglet **FILTRE**:

    ![](resources/images/content/user/maps/maps_event_layer_dialog_FILTER.png)

    - Cliquez sur AJOUTER UN FILTRE et sélectionnez un élément de données disponible pour ajouter un nouveau filtre à l'ensemble de données.

      - Pour les données de type _ensemble d'options_, vous pouvez sélectionner les options de la liste déroulante en utilisant la flèche vers le bas ou en commençant à saisir directement dans la case pour filtrer les options.

      - For data item of type _number_, you can select operators like equal, not equal, greater than or less than.

      - For data item of type _boolean_ (yes/no), you can check the box if the condition should be valid or true.

      - Pour les données de type _texte_, vous aurez deux choix : **Contient** implique que la requête correspond à toutes les valeurs qui contiennent la valeur de votre recherche, et **Est exact** implique que seules les valeurs qui sont complètement identiques à la valeur de votre requête seront renvoyées.

      Multiple filters may be added. Click the trash button on the right of the filter to remove it.

5.  Dans l'onglet **STYLE**:

    ![](resources/images/content/user/maps/maps_event_layer_dialog_STYLE.png)

    - Select **Group events** to group nearby events (cluster), or **View all events** to display events individually.

    - Select a **color** for the event or cluster points.

    - Select the **radius** (between 1 and 20) for the events.

    - Select **Show buffer** to display visual buffer around each event. The radius of the buffer can be modified here. This option is only available if you select **View all events** above.

    - Select a **Style by data element** to colorise the events according to a data value. The options varies for different data types:

      - **Option sets**: Select a color for each option in an option set. You can set default colors for an option in the Maintenance app.

      - **Numbers**: You can style a numeric data element in [the same way as thematic layers](#using_maps_thematic_layer_style) using automatic or predefined legends.

      - **Booleans**: Select a color for true/yes and another for false/no.

6.  Cliquez sur **AJOUTER UNE COUCHE**.

### Modifier une couche d'évènements

1.  Dans le panneau de couches, cliquez sur l'icône d'édition (crayon) de la couche de l'évènement.

2.  Modifiez les paramètres des onglets DATA, PÉRIODE, FILTRE, UNITÉ D'ORG et STYLE. comme vous le souhaitez.

3.  Cliquez sur **METTRE À JOUR LA COUCHE**.

### Modifier les informations dans les fenêtres pop-up de l'évènement

Pour les évènements dans une carte à grappes, vous pouvez modifier les informations affichées dans la fenêtre pop-up de l'évènement.

![](resources/images/content/user/maps/maps_eventlayer_eventinfopopup.png)

1.  Ouvrez l'application **Programmes / Attributs**.

2.  Cliquez sur **Programme**.

3.  Cliquez sur le programme que vous souhaitez modifier et sélectionnez **Afficher les étapes du programme**.

4.  Cliquez sur le nom de l’étape du programme et sélectionnez **Modifier**.

5.  Faites défiler jusqu'à la section **Éléments de données sélectionnés**.

6.  Pour chaque élément de données que vous souhaitez afficher dans la fenêtre pop-up, sélectionnez **Afficher dans les rapports**.

7.  Cliquez sur **Mettre à jour**.

### Download raw event layer data

The raw data for event layers can be downloaded in GeoJSON format for more advanced geo-analytics and processing in desktop GIS software such as [QGIS](https://www.qgis.org/). The downloaded data includes all individual events as GeoJSON features, including attributes for each data element selected for **Display in reports**.

![](resources/images/content/user/maps/maps_data_download_dialog.png)

- In the layer card to the left, click the _more actions_ (three dots) icon and then on **Download data**

- Select the **ID format** to use as the key for Data Element values in the downloaded GeoJSON file. There are three options available:

  - **ID** - Use the unique ID of the data element
  - **Name** - Use the human-friendly name of the data element (translated)
  - **Code** - Use the code of the data element

- Select whether or not to **Use human-readable keys** for other Event attributes, such as Program Stage, Latitude, Longitude, Event Data, and Organization Unit ID, Name, and Code. When this option is **not** selected these values will be the computer-friendly ID instead of the human-readable (and translated) name.

- Click the **DOWNLOAD** button to generate and download a GeoJSON file. The data will be requested from the DHIS2 server and processed by the maps application. This operation may take several minutes to complete.

- Once the GeoJSON file has been downloaded it can be imported into most standard GIS software applications.

> Note that the downloaded data does not include style information as it is not natively supported by the GeoJSON format. Styles can optionally be recreated in external GIS applications using the attributes of each feature.

### Effacer une couche d'évènements

Pour effacer toutes les données de la couche d'un événement d'une carte :

1.  In the layer card to the left, click the _more actions_ (three dots) icon and then on **Remove layer**.

    La couche est supprimée de la carte actuelle.

## Manage tracked entity layers

<!--DHIS2-SECTION-ID:using_maps_tracked_entity_layer-->

The tracked entity layer displays the geographical location of tracked entities registered in the DHIS2. Provided that tracked entities have associated point or polygon coordinates, you can explore these on a map.

![](resources/images/content/user/maps/maps_tracked_entity_layer.png)

Tracked entity layers are represented by layer cards in the layer panel such as:

Along the top of the tracked entity card from left to right are:

- A grab field to allow dragging and re-ordering layers with the mouse.

- The title and period associated with the layer.

- An arrow symbol to collapse and expand the tracked entity card.

In the middle of the tracked entity card is a legend indicating the styling of the layer.

Along the bottom of the tracked entity card from left to right are:

- Un bouton d'édition (crayon) pour ouvrir la boîte de dialogue de configuration de la couche

- Un symbole d'oeil pour basculer la visibilité de la couche

- Un curseur pour modifier la transparence de la couche

- A more actions (three dots) button with additional options:

  - **Edit layer** is the same as edit button above

  - **Remove layer** will remove this layer from the current map.

### Create a tracked entity layer

<!--DHIS2-SECTION-ID:maps_create_tracked_enity_layer-->

To create an tracked entity layer, choose **Tracked entities** on the **Add layer** selection. This opens the Tracked entity layer configuration dialog.

1.  Dans l'onglet **DONNÉES**:

    ![](resources/images/content/user/maps/maps_tracked_entity_layer_dialog_DATA.png)

    - Select the **Tracked Entity Type** you want to show on the map.

    - Select a **Program** where the tracked entities belong.

    - Set the **Program status** to be **Active** or **Completed**.

    - Set the **Follow up** status of the tracked entity for the given program.

2.  In the **Relationships** tab

    ![](resources/images/content/user/maps/maps_tracked_entity_layer_dialog_RELATIONSHIPS.png)

    > **Caution**
    >
    > Displaying tracked entity relationships in Maps is an experimental feature

    - If a Tracked Entity Type with has been selected, you can select the **Display Tracked Entity relationships** checkbox

    - Once checked, you can select the type of relationship to display on the map from the dropdown list. Only relationships FROM the selected Tracked Entity type are available.

3.  Dans l'onglet **PÉRIODE**

    ![](resources/images/content/user/maps/maps_tracked_entity_layer_dialog_PERIOD.png)

    - If no program is selected, you can set start and end dates when the tracked entities were last updated.

    - If a program is selected, you can set start and end dates for the program period.

4.  Dans l'onglet **Unités d'Org.**:

    ![](resources/images/content/user/maps/maps_tracked_entity_layer_dialog_ORG_UNITS.png)

    - Select the organisation units you want to include in the layer. You have 3 selection modes:

      - **Selected only**: Include tracked entities belonging to selected org units only.

      - **Selected and below**: Included tracked entities in and right below selected org units.

      - **Selected and all below**: Included tracked entities in and all below selected org units.

5.  Dans l'onglet **STYLE**:

    ![](resources/images/content/user/maps/maps_tracked_entity_layer_dialog_STYLE.png)

    - Select a **color** for the tracked entities points and polygons.

    - Select the **point size** (radius between 1 and 20) for the points.

    - Select **Show buffer** to display visual buffer around each tracked entity. The buffer distance in meters can be modified here.

    - If a relationship type has been selected on the relationships tab you can select **color**, **point size**, and **line color** for relationships and related tracked entities instances

6.  Click **ADD/UPDATE LAYER**.

### Modify a tracked entity layer

1.  In the layer panel, click the edit (pencil) icon on the tracked entity layer card.

2.  Modify the setting on the DATA, PERIOD, ORG UNIT and STYLE tabs as desired.

3.  Cliquez sur **METTRE À JOUR LA COUCHE**.

### Clear a tracked entity layer

To clear a tracked entity layer from a map:

1.  In the layer card to the left, click the _more actions_ (three dots) icon and then on **Remove layer**.

    La couche est supprimée de la carte actuelle.

## Gérer les couches d'infrastructures

<!--DHIS2-SECTION-ID:using_maps_facility_layer-->

La couche d'infrastrctures affiche des icônes représentant les types d'établissements. Les polygones n'apparaissent pas sur la carte, assurez-vous donc de sélectionner un niveau de l'unité d'organisation incluant des intrastructures.

_Un polygone est une zone fermée sur une carte représentant un pays, un quartier ou un parc._

![](resources/images/content/user/maps/maps_facility_layer.png)

Les couches d'infrastructures sont représentées par des _cartes_ de couche comme par exemple :

En haut de la carte des infrastructures, de gauche à droite, se trouvent :

- un champ de saisie permettant de faire glisser et de réorganiser les couches avec la souris

- Le titre **Infrastructures**

- Un symbole d'oeil pour basculer la visibilité de la couche

- Un symbole de flèche pour réduire et agrandir la carte des infrastructures

Au centre de la carte des infrastructures se trouve une légende indiquant la représentation de l'ensemble de groupes.

En bas de la carte des infrastructures, de gauche à droite, se trouvent :

- Un bouton d'édition (crayon) pour ouvrir la boîte de dialogue de configuration de la couche

- Un curseur pour modifier la transparence de la couche

- A more actions (three dots) button with additional options:

  - Un bouton **tableau de données** pour afficher ou masquer le tableau de données associé à la couche

  - **Download data** allows you to download the data for this layer in GeoJSON format for use in other mapping software

  - **Edit layer** is the same as edit button above

  - **Remove layer** will remove this layer from the current map.

### Créer une couche d'infrastructures

Pour créer une couche d'infrastructures, choisissez **Infrastructures** dans **Ajouter une couche**. La boîte de dialogue de configuration de la couche de l'infrastructure s'ouvre.

1.  Dans l'onglet **ENSEMBLE DE GROUPES**:

    ![](resources/images/content/user/maps/maps_facility_layer_dialog_GROUPSET.png)

    - Sélectionnez un **ensemble de groupes** dans la liste des ensembles de groupes d'unités d'organisation définis pour votre instance de DHIS2.

2.  Dans l'onglet **UNITÉS D'ORGANISATION**

    ![](resources/images/content/user/maps/maps_facility_layer_dialog_ORG_UNITS.png)

    - sélectionnez le(s) niveau(x) et/ou le(s) groupe(s) de l'unité d'organisation dans la liste de sélection sur le côté droit.

    - Sélectionnez les unités d'organisation que vous souhaitez inclure dans la couche. Il est possible de sélectionner :

      - Une ou plusieurs unités d'organisation spécifiques, ou

      - An niveau relatif dans la hiérarchie des unités d'organisation, par rapport à l'utilisateur. En sélectionnant une **unité d'organisation d'un utilisateur**, les données cartographiques apparaîtront différemment pour les utilisateurs à différents niveaux dans la hiérarchie de l'unité d'organisation.

3.  Dans l'onglet **STYLE**:

    ![](resources/images/content/user/maps/maps_facility_layer_dialog_STYLE.png)

    - sélectionnez le style que vous souhaitez appliquer aux infrastructures

      - Afficher les étiquettes

        Permet d'afficher les marques sur la couche. La taille de police, le poids et la couleur peuvent être modifiés ici.

      - Afficher le buffer

        Permet d'afficher un buffer visuel sur la couche autour de chaque infrastructure. Le rayon du buffer peut être modifié ici.

4.  Cliquez sur **AJOUTER UNE COUCHE**.

### Créer ou modifier une couche d'infrastructures

1.  Dans le panneau des couches, cliquez sur l'icône Édition (crayon) de couche de la carte de l'infrastructure

2.  Modifiez les paramètres dans les onglets ENSEMBLE DE GROUPES, UNITÉS D'ORGANISATION et STYLE.

3.  Cliquez sur **METTRE À JOUR LA COUCHE**.

### Filtrer les valeurs dans une couche d'infrastructures

Les couches d'infrastructures ont une option **table de données** qui peut être activée ou désactivée depuis la couche de la carte de l'infrastructure.

![](resources/images/content/user/maps/maps_facility_layer_data_table.png)

La table de données affiche les données qui composent la couche de l'infrastructure.

- en cliquant sur un titre, le tableau sera trié en fonction de cette colonne tout en donnant la possibilité de basculer entre un classement ascendant et descendant.

- entrer du texte ou des expressions dans les champs de filtre situé sous les titres appliquera ces filtres aux données et l'affichage s'ajustera selon le filtre. Les filtres sont appliqués comme suit :

  - NOM

    filtrer par noms contenant ce texte

  - Identifiant

    filtrer par Identifiants contenant ce texte

  - TYPE

    filtrer par types d'affichage SIG contenant ce texte

> **Note**
>
> Les filtres des tableaux de données sont temporaires et ne sont pas enregistrés avec les couches de la carte en tant que favori.

### Rechercher une infrastructure

Le champ filtre de NOMS dans le tableau de données constitue un moyen efficace de rechercher des infrastructures individuellement.

### Supprimer une couche d'infrastructures

Pour effacer toutes les données d'une couche d'infrastructures :

1.  In the layer card to the left, click the _more actions_ (three dots) icon and then on **Remove layer**.

    La couche est supprimée de la carte actuelle.

### Gérer les infrastructures dans une couche

Vous pouvez avoir des infrastructures dans les couches **Infrastructure**, **Frontière** et **Thématique**

#### Relocaliser une infrastructure

1.  Faites un clique droit sur une infrastructure et cliquez sur **Relocaliser**.

2.  Placez le curseur dans le nouvel emplacement.

    Les nouvelles coordonnées sont stockées de façon permanente. Cette action ne peut pas être annulée.

#### Permuter la longitude et la latitude d'une infrastructure

1.  Faites un clique droit sur une infrastructure et cliquez sur **Permuter la longitude/latitude**.

    Ceci est utile au cas où un utilisateur inverserait les coordonnées de latitude et de longitude lors de la création de l'unité d'organisation.

#### Afficher les informations de l'infrastructure

Vous pouvez afficher les informations sur l'unité d'organisation définies par l'administrateur comme suit :

<table>
<caption>View organisation unit information</caption>
<colgroup>
<col style="width: 40%" />
<col style="width: 59%" />
</colgroup>
<thead>
<tr class="header">
<th>Function</th>
<th>Action</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>View information for the current period</p></td>
<td><ol type="1">
<li><p>Click a facility.</p></li>
</ol></td>
</tr>
<tr class="even">
<td><p>View information for a selected period</p></td>
<td><ol type="1">
<li><p>Right-click a facility and click <strong>Show information</strong>.</p></li>
<li><p>In the <strong>Infrastructural data</strong> section, select a period.</p></li>
</ol>
<blockquote>
<p><strong>Note</strong></p>
<p>You configure the displayed infrastructural data in the <strong>System Settings</strong> app.</p>
</blockquote></td>
</tr>
</tbody>
</table>

## Gérer les calques frontières

<!--DHIS2-SECTION-ID:using_maps_boundary_layer-->

La couche frontière affiche les bordures et les emplacements de votre unité d'organisation. Cette couche est particulièrement utile si vous êtes hors ligne et n'avez pas accès aux cartes d'arrière-plan.

![](resources/images/content/user/maps/maps_bound_layers.png)

Les couches frontières sont représentées par des _cartes_ de couche dans le panneau de couches, par exemple :

En haut de la carte frontière, de gauche à droite, se trouvent :

- un champ de saisie permettant de faire glisser et de réorganiser les couches avec la souris

- Le titre **Frontières**

- Un symbole de flèche pour réduire et agrandir la carte frontière

Au bas de la carte frontière, de gauche à droite, se trouvent :

- Un bouton d'édition (crayon) pour ouvrir la boîte de dialogue de configuration de la couche

- Un symbole d'oeil pour basculer la visibilité de la couche

- Un curseur pour modifier la transparence de la couche

- A more actions (three dots) button with additional options:

  - Un bouton **tableau de données** pour afficher ou masquer le tableau de données associé à la couche

  - **Download data** allows you to download the data for this layer in GeoJSON format for use in other mapping software

  - **Edit layer** is the same as edit button above

  - **Remove layer** will remove this layer from the current map.

### Créer une couche frontière

Pour créer une couche frontière, choisissez **Frontières** dans la selection **Ajouter une couche**. La boîte de dialogue de configuration de la couche frontière s'ouvre.

1.  Dans l'onglet **UNITÉS D'ORGANISATION**

    ![](resources/images/content/user/maps/maps_boundary_layer_dialog_ORG_UNITS.png)

    - sélectionnez le(s) niveau(x) et/ou le(s) groupe(s) de l'unité d'organisation dans la liste de sélection sur le côté droit.

    - Sélectionnez les unités d'organisation que vous souhaitez inclure dans la couche. Il est possible de sélectionner :

      - Une ou plusieurs unités d'organisation spécifiques, ou

      - An niveau relatif dans la hiérarchie des unités d'organisation, par rapport à l'utilisateur. En sélectionnant une **unité d'organisation d'un utilisateur**, les données cartographiques apparaîtront différemment pour les utilisateurs à différents niveaux dans la hiérarchie de l'unité d'organisation.

2.  Dans l'onglet **STYLE**:

    ![](resources/images/content/user/maps/maps_boundary_layer_dialog_STYLE.png)

    - sélectionnez le style que vous souhaitez appliquer aux frontières.

      - Afficher les étiquettes

        Permet d'afficher les étiquettes sur la couche. La taille de la police et le poids peuvent être modifiés ici.

      - Rayon de point

        Définit le rayon de base lorsque des éléments de type point, tels que les installations, sont présentés sur la couche frontière.

3.  Cliquez sur **AJOUTER UNE COUCHE**.

### Modifier une couche frontière

1.  Dans le panneau de couche, cliquez sur l'icône Édition (crayon) située sur la carte de la couche frontière.

2.  Modifiez les paramètres des onglets UNITÉS D'ORGANISATION et STYLE à votre convenance.

3.  Cliquez sur **METTRE À JOUR LA COUCHE**.

### Filtrer les valeurs dans une couche frontière

Les couches frontières ont une option **table de données** qui peut être activée ou désactivée depuis la carte de la couche frontière.

![](resources/images/content/user/maps/maps_bound_layer_data_table.png)

Le tableau de données affiche les données qui forment la couche frontière

- en cliquant sur un titre, le tableau sera trié en fonction de cette colonne tout en donnant la possibilité de basculer entre un classement ascendant et descendant.

- entrer du texte ou des expressions dans les champs de filtre situé sous les titres appliquera ces filtres aux données et l'affichage s'ajustera selon le filtre. Les filtres sont appliqués comme suit :

  - NOM

    filtrer par noms contenant ce texte

  - NIVEAU

    filtrez le niveau par nombres et/ou plages de valeurs, par exemple : 2,\>3&\<8

  - PARENT

    filtrer par noms de parent contenant ce texte

  - Identifiant

    filtrer par Identifiants contenant ce texte

  - TYPE

    filtrer par types d'affichage SIG contenant ce texte

> **Note**
>
> Les filtres des tableaux de données sont temporaires et ne sont pas enregistrés avec les couches de la carte en tant que favori.

### Rechercher une unité d'organisation

Le champ de filtre NOM dans le tableau de données constitue un moyen efficace de recherche des unités d'organisation individuelles affichées dans la couche frontière.

### Naviguer entre les hiérarchies d'organisation

Vous pouvez modifier la cible de la couche frontière dans la hiérarchie sans utiliser l'interface utilisateur de niveau / parent.

1.  Faites un clique droit sur l'une des frontières.

2.  Sélectionnez **Accéder au niveau supérieur** ou **Accéder au niveau inférieur**.

    L'option d'exploration est désactivée si vous vous trouvez au niveau le plus bas. De même, l'option d'exploration en amont est désactivée à partir du niveau le plus élevé.

### Supprimer une couche frontière

Pour effacer toutes les données d'une couche frontière :

1.  In the layer card to the left, click the _more actions_ (three dots) icon and then on **Remove layer**.

    La couche est supprimée de la carte actuelle.

## Gérer une couche Earth Engine

<!--DHIS2-SECTION-ID:using_maps_gee-->

![](resources/images/content/user/maps/maps_earth_eng_layer.png)

La couche Google Earth Engine vous permet d'afficher des images satellites et des ensembles de données géospatiales du vaste catalogue de Google. Ces couches sont utiles lorsqu'elles sont combinées avec des couches thématiques et d'événements pour améliorer l'analyse. Les couches compatibles sont les suivantes :

- L'estimation de la densité de population avec les totaux nationaux ajustés pour correspondre aux estimations de la Division de la population des Nations Unies. Population dans des cellules de grille de 100 x 100 m (à partir de 2010).

- Elevation above sea-level. You can adjust the min and max values so it better represents the terrain in your region.

- Température : la température de surface des terres recueillie par satellite. Des points blancs apparaîtront dans les zones avec une couverture nuageuse persistante.

- Les précipitations recueillies par les stations satellites et météorologiques au sol. Les valeurs sont en millimètres sur des périodes de 5 jours. Ces valeurs sont mises à jour tous les mois, au cours de la 3ème semaine du mois suivant.

- Couverture terrestre : 17 types de couverture terrestre distincts collectés à partir de satellites.

- Lumières nocturnes : lumières des villes et autres sites représentant un éclairage persistant, y compris les torchères (à partir de 2013).

### Créer une couche Earth Engine

Pour créer une couche Earth Engine, choisissez la couche souhaités dans la liste **Ajouter une couche**. Cela ouvre la boîte de dialogue de configuration de couche.

1.  Dans l'onglet **STYLE**

    ![](resources/images/content/user/maps/maps_ee_layer_dialog_POPULATION.png)

    - Modifier les paramètres spécifiques au type de couche.

    - Ajustez la plage, les étapes et les couleurs de la légende comme vous le souhaitez.

2.  Cliquez sur **AJOUTER UNE COUCHE**.

## Ajouter des couches de carte externes

<!--DHIS2-SECTION-ID:using_maps_external_map_layers-->

Les couches de carte externes sont représentées comme suit :

- Cartes de référence

  Celles-ci sont disponibles dans la carte **carte de référence** dans le panneau des couches et sont sélectionnéss au même titre que n'importe quelle autre carte de référence.

- Les superpositions

  Celles-ci sont disponibles dans la sélection **Ajouter une couche**. Contrairement aux cartes de référence, les superpositions peuvent être placées au-dessus ou au-dessous de toute autre couche de superposition.

Les couches superposées sont représentées par des _cartes_ de couches supplémentaires dans le panneau des couches comme suit :

En haut de la carte superposée, de gauche à droite, vous trouverez :

- un champ de saisie permettant de faire glisser et de réorganiser les couches avec la souris

- le titre de la couche de carte externe

- Un symbole de flèche pour réduire et agrandir la carte de superposition

En bas de la carte de superposition, de gauche à droite, se trouvent :

- Un curseur pour modifier la transparence de la couche

- Une icône de suppression (corbeille) pour supprimer la couche de la carte actuelle.

Voici quelques exemples de couches externes :

![](resources/images/content/user/maps/maps_black_basemap_and_nighttime_lights.png)

![](resources/images/content/user/maps/maps_terrain_imagery.png)

![](resources/images/content/user/maps/maps_aerial_imagery.png)

## File menu

<!--DHIS2-SECTION-ID:using_maps_file_menu-->

Use the **File menu** to manage your maps. Several menu items will be disabled until you open or save a map.

Saving your maps makes it easy to restore them later. It also gives you the opportunity to share them with other users as an interpretation or put it on the dashboard. You can save all types of layer configurations as a favorite.

### Créer une nouvelle carte

Click **File** \> **New**.

NB\! This will clear the current map layers you have without saving.

### Open a new map

1.  Click **File** \> **Open**. A dialog box opens with a list of maps.

2.  Find the favorite you want to open. You can either use \< and \> or the search field to find a saved map. The list is filtered on every character that you enter. You can filter the list by selecting **Show all**, **Created by me** or **Created by others**.

3.  Click the name of the map you want to open.

### Save a map

When you have created a map it is convenient to save it for later use:

1.  Click **File** \> **Save**.

2.  Enter a **Name** (required) and a **Description** (optional) the first time you save a map.

3.  Cliquez sur **SAUVEGARDER**.

### Save a copy of a map

1.  Click **File** \> **Save as...**

2.  Enter a **Name** (required) and a **Description** (optional) for the map.

3.  Cliquez sur **SAUVEGARDER**.

### Rename a map

1.  Click **File** \> **Rename**.

2.  Enter a new **Name** and/or **Description** for your map.

3.  Click **RENAME**. The map is updated.

### Translate a map

1.  Click **File** \> **Translate**.

2.  Select the **Locale** (language) your translation.

3.  Enter a translated **Name** and **Description**. The original text will show below the field.

4.  Cliquez sur **SAUVEGARDER**.

### Modify sharing settings for a map

After you have created a map and saved it, you can share the map with everyone or a user group. To modify the sharing settings:

1.  Click **File** \> **Share**. The sharing settings dialog opens.

2.  Dans la zone de texte, recherchez le nom de l'utilisateur ou du groupe d'utilisateurs avec lequel vous souhaitez partager votre favori et sélectionnez-le.

    L'utilisateur ou le groupe choisi est ajouté à la liste des destinataires.

    Répétez cette étape pour ajouter plus de groupes d'utilisateurs.

3.  Si vous souhaitez autoriser l'accès externe, cochez la case correspondante.

4.  Pour chaque groupe d'utilisateurs, choisissez un paramètre d'accès. Les options possibles sont les suivantes :

    - Aucun (uniquement pour les groupes par défaut, car ils ne peuvent pas être supprimés)

    - Lecture seule

    - Lecture et écriture

5.  Cliquez sur **FERMER** pour fermer la boîte de dialogue.

### Get the link to a map

1.  Click **File** \> **Get link**. A link dialog opens.

2.  Copy the link.

### Delete a map

1.  Click **File** \> **Delete**. A confirmation dialog is displayed.

2.  Click **DELETE** to confirm that you want to delete the favorite. Your map is deleted and the layers are cleared from the view.

## Map interpretations

<!--DHIS2-SECTION-ID:mapsInterpretation-->

An interpretation is a description of a map at a given period. This information is visible in the **Dashboard app**. Click **Interpretations** in the top right of the workspace to open the interpretations panel. The button is only clickable if the map is saved.

![](resources/images/content/user/maps/maps_interpretations_panel.png)

### Afficher les interprétations basées sur des périodes relatives

Pour afficher les interprétations pour des périodes relatives, par exemple des interprétations de l'année dernière :

1.  Ouvrez un favori avec des interprétations.

2.  Click **Interpretations** in the top right of the workspace to open the interpretations panel.

3.  Click an interpretation. Your map displays the data and the date based on when the interpretation was created. To view other interpretations, click them.

### Write interpretation for a map

To create an interpretation, you first need to create a map and save it. If you've shared your map with other people, the interpretation you write is visible to those people.

1.  Ouvrez un favori avec des interprétations.

2.  Click **Interpretations** in the top right of the workspace to open the interpretations panel.

3.  A text field will appear with a placeholder "Write an interpretation" for users that have read access to the favorite.

4.  In the text field, type a comment, question or interpretation. You can also mention other users with '@username'. Start by typing '@' plus the first letters of the username or real name and a mentioning bar will display the available users. Mentioned users will receive an internal DHIS2 message with the interpretation or comment. You can see the interpretation in the **Dashboard app**.

5.  Click **SAVE** if you want your interpretation to have the same sharing settings as the map.

    Click **SAVE & SHARE** if you want to change the sharing settings (see below) for your interpretation.

### Change sharing settings for an interpretation

1.  Click an interpretation (see how to view an interpretation above).

2.  Click **Share** below the interpretation. The sharing settings dialog opens.

3.  Search for and add a users and user groups that you want to share your map with.

4.  Change sharing settings for the users you want to modify:

    - **Lecture et écriture** : Tout le monde peut consulter et éditer l'objet.

    - **Lecture uniquement** : tout le monde peut consulter l'objet.

    - **No access**: The public won't have access to the object. This setting is only applicable to Public access.

5.  Click **CLOSE** when sharing settings are updated.

## Enregistrer une carte en tant qu'image

<!--DHIS2-SECTION-ID:using_maps_image_export-->

You can download your map as an image by clicking on the Download button in the top menu

![](resources/images/content/user/maps/maps_download.png)

Map download is not supported in Internet Explorer or Safari, we recommend to use Google Chrome or Firefox.

1.  Select if you want to include the map name or not. This option is only available if the map is saved.

2.  Select if you want to include the map legend. You can position the legend in one of the 4 corners of your map.

3.  Click **Download** to download your map.

## Rechercher un emplacement

<!--DHIS2-SECTION-ID:using_maps_search-->

La fonction de recherche d'emplacement vous permet de rechercher presque n'importe quel lieu ou adresse. Cette fonction est utile pour localiser par exemple des sites, structures sanitaires, villages ou villes sur la carte.

![](resources/images/content/user/maps/maps_place_search.png)

1.  Sur le côté droit de la fenêtre Cartes, cliquez sur l'icône loupe.

2.  Saisissez l'emplacement que vous recherchez.

    Une liste des emplacements correspondants apparaît au fur et à mesure que vous saisissez.

3.  Dans la liste proposée, sélectionnez un emplacement. Une épingle indique l'emplacement sur la carte.

## Mesurer des distances et des surfaces sur une carte

<!--DHIS2-SECTION-ID:using_maps_measure_distance-->

1.  Dans le coin supérieur gauche de la carte, placez le curseur sur le bouton **Mesurer distances et surfaces** icône (règle) et cliquez sur **Créer une nouvelle mesure**.

2.  Ajouter des points à la carte.

3.  Cliquez sur **Terminer la mesure**.

![](resources/images/content/user/maps/maps_measure_distance.png)

## Obtenir la latitude et la longitude d'un emplacement

<!--DHIS2-SECTION-ID:using_maps_latitude_longitude-->

Faites un clique droit sur un point de la carte et sélectionnez **Afficher la longitude/latitude**. Les valeurs s'affichent dans une fenêtre pop-up.

## Voir également

- [Gérer les légendes](https://docs.dhis2.org/master/en/user/html/manage_legend.html)

# Gérer les tableaux de bord

<!--DHIS2-SECTION-ID:dashboard-->

## À propos des tableaux de bord

Les tableaux de bord ont pour but d'allouer un accès rapide à différents outils d'analyse (cartes, graphiques, rapports, tableaux, etc.) à l'utilisateur. Les tableaux de bord peuvent également être partagés avec des groupes d'utilisateurs.

Un utilisateur ou un administrateur peut créer un tableau de bord appelé "Soins prénatals" qui pourrait contenir toutes les informations ralatives aux soins prénatals. Ce tableau de bord pourrait être partagé avec le groupe d'utilisateurs appelé "contrôle ANC", qui peut concerner tous les utilisateurs du programme de contrôle ANC. Tous les utilisateurs au sein de ce groupe seraient alors en mesure de visualiser le même tableau de bord.

## Tableau de bord et barre de contrôle

<!--DHIS2-SECTION-ID:dashboards_setup-->

Les tableaux de bord se composent d'un titre, d'une description et d'un nombre quelconque d'éléments. Les éléments constituant le tableau bord peuvent être de différents types, dont des graphiques, cartes, rapports, tableaux, ressources, messages et éléments de texte. Au dessus du tableau de bord se trouve la barre de contrôle, qui affiche tous vos tableaux de bord disponibles, comprenant un champ de recherche dans le tableau de bord et un bouton **+** pour créer un nouveau tableau de bord.

The dashboard has two modes: view and edit/create. When you first log in to DHIS2, your most recently used dashboard will be displayed in view mode, if you are on the same computer as you were previously. If you are using a different computer, then the first starred dashboard will be displayed. If there are no starred dashboards, then the first dashboard (alphabetically) will be displayed. Starred dashboards always show first in the dashboard list.

La capture d'écran ci-dessous montre un tableau de bord appelé "Soins prénatals", qui a été alimenté de graphiques et de cartes.

![](resources/images/content/user/dashboard/dashboard-view-mode.png)

### Effectuer une recherche dans la liste de tableaux de bord

Il est possible de rechercher un tableau de bord spécifique en utilisant le champ de recherche dans le menu déroulant en haut à gauche de la barre de contrôle intitulé « Rechercher un tableau de bord ». La recherche est insensible à la casse. Au fur et à mesure que vous saisissez, la liste des tableaux de bord se rétrécie jusqu'à ceux qui correspondent à votre recherche.

### Personnaliser la taille de la barre de contrôle

Vous pouvez définir une taille spécifique de la barre de contrôle des tableaux de bord en cliquant dessus et en faisant glisser le bord inférieur. Lorsque vous relachez la souris, la nouvelle taille sera définie. En cliquant sur **AFFICHER PLUS** la barre de contrôle s'étendra à sa hauteur maximale (10 "rangées"). En cliquant sur **AFFICHER MOINS**, la taille sera réinitialisée à celle que vous avez personnalisée.

## Créer un tableau de bord

Pour créer un nouveau tableau de bord, cliquez sur le bouton vert **+** situé au coin gauche de la barre de contrôle pour passer en mode création. Ajouter un titre dans le champ de titre, et éventuellement une description dans le champ description.

![](resources/images/content/user/dashboard/dashboard-add-new.png)

**Créer un mode :**

![](resources/images/content/user/dashboard/dashboard-create-mode.png)

### Ajouter des éléments au tableau de bord

Ajoutez des éléments au tableau de bord en effectuant une recherche à partir du sélecteur d’élément dans la partie supérieure droite de la zone du tableau de bord. Les éléments disponibles sont entre autres :

- Tableaux croisés dynamiques

- Graphiques

- Cartes

- Rapports d'évènements

- Graphiques d'évènements

- Rapports

- Ressources

- Applications

- Adresses électroniques

- Zones de texte

- Espaceur

La liste des éléments de la liste déroulante affiche initialement les 5 premiers disponibles dans chaque catégorie, en fonction du texte de recherche que vous avez entré. Les courriers électroniques, les zones de texte et les éléments d'espacement se trouvent également dans la liste déroulante. Pour afficher plus d'éléments, cliquez sur **VOIR PLUS**, et la liste pour ce type sera étendue à 15 éléments. Si vous ne trouvez toujours pas l'élément qu'il vous faut, essayez de saisir un texte de recherche plus spécifique.

![](resources/images/content/user/dashboard/dashboard-item-selector.png)

Une fois que vous avez sélectionné un élément, il sera ajouté en haut à gauche du tableau de bord. Les éléments ajoutés peuvent être déplacés à l'aide de la souris en en cliquant sur l'élément et en le faisant glisser vers l'emplacement souhaité. Il est également possible de modifier la taille d'un élément avec la souris en faisant un clique droit sur la poignée de glissement dans le coin inférieur droit de l'élément et en glissant la souris jusqu'à la taille souhaitée.

### Eléments d'espacement

Le tableau de bord est configuré avec le paramètre "anti-gravité" pour le positionnement des éléments. Cela signifie que les élément "monteront" vers le haut jusqu'à ce qu'ils atteignenet un autre élément. Afin de forcer un espace vertical vide entre deux éléments (comme une rangée vide), vous pouvez ajouter des éléments d'espacement au tableau de bord. Ils ne sont visibles qu'en mode édition/création. En mode affichage, ils ne sont pas visibles, mais occupent l’espace défini.

**Elément d'espacement en mode édition/création:**

![](resources/images/content/user/dashboard/dashboard-spacer-edit-mode.png)

**Spacer en mode visualisation **

![](resources/images/content/user/dashboard/dashboard-spacer-view-mode.png)

## Supprimer des éléments

Supprimer des éléments en cliquant sur la corbeille rouge en haut à droite de chaque élément. Sachez qu’en raison du paramètre "anti-gravité" dans le tableau de bord, lorsque vous supprimez un élément, les éléments positionnés en dessous "montent" vers le haut.

## Sauvegarder le tableau de bord

Lors de la création ou de la modification d'un tableau de bord, les modifications ne sont enregistrées que si vous cliquez sur le bouton **ENREGISTRER LES MODIFICATIONS** dans la barre de modification du tableau de bord en haut de la page. Si vous ne souhaitez pas enregistrer vos modifications, cliquez sur le bouton **QUITTER SANS ENREGISTRER** en haut à droite. Vous serez alors renvoyé en mode affichage avec le tableau de bord que vous consultiez précédemment.

## Éditer un tableau de bord existant

Si vous disposez des droits d'accès pour modifier le tableau de bord actif, vous trouverez un bouton **Modifier** à droite du titre du tableau de bord en mode affichage. Cliquez sur ce bouton pour entrer en mode édition.

![](resources/images/content/user/dashboard/dashboard-title-bar.png)

Reportez-vous à la section ci-dessus sur la création de tableaux de bord pour plus d'informations sur la création et suppression des éléments du tableau de bord.

![](resources/images/content/user/dashboard/dashboard-edit-mode.png)

### Traduire le titre et la description du tableau de bord

Vous pouvez ajouter des traductions du titre et de la description du tableau de bord en Mode édition. La boîte de dialogue fournit une liste des langues de traduction, et affiche le titre original du tableau de bord sous le champ de saisie du nom.

![](resources/images/content/user/dashboard/dashboard-translation-dialog.png)

1.  Cliquez sur le bouton **TRADUIRE** situé au-dessus du tableau de bord.

2.  Sélectionnez la langue vers laquelle vous souhaitez traduire.

3.  Ajoutez le titre et/ou la description et cliquez sur **SAUVEGARDER**.

## Supprimer un tableau de bord

Si vous disposez des droits d'accès pour supprimer un tableau de bord, il y aura un Bouton **SUPPRIMER** situé au-dessus du tableau de bord, en mode édition. La boîte de dialogue de confirmation s’affichera pour confirmer que vous souhaitez supprimer le tableau de bord.

## Afficher un tableau de bord

When in view mode, you can toggle showing the description, star a dashboard, apply filters, and share the dashboard with other users and groups.

Pour afficher la description, cliquez sur le bouton **i** situé à droite du titre.

![](resources/images/content/user/dashboard/dashboard-title-bar.png)

### Tableaux de bord marqués

Vos tableaux de bord marqués sont répertoriés en premier dans la liste des tableaux de bord. Pour marquer un tableau de bord, cliquez sur le bouton étoile à droite du titre. Lorsque l’étoile est «coloriée», cela signifie que le tableau de bord a été marqué. Le marquage d'un tableau de bord ne s'applique qu'à vous, et non aux autres utilisateurs.

### Filtrer un tableau de bord

Multiple filters can be applied to a dashboard for changing the data displayed in the various dashboard items. The filters are applied to each dashboard item in the same way: each added filter overrides the original value for that dimension in the original chart, table or map (visualization). It is possible to filter on Organisation Units, Periods and other dynamic dimensions depending on the DHIS2 instance.

To add a filter, click on the **Add Filter** button and choose the dimension:

![Adding a filter](resources/images/content/user/dashboard/dashboard-filters.png)

A dialog opens where the filter selection can be made.

![Org Unit filter selection](resources/images/content/user/dashboard/dashboard-orgunit-filter-dialog.png)

Click on **Confirm** in the dialog to apply the filter to the current dashboard.

Filters are not stored, so when switching to a different dashboard they are lost. Filter badges appear above the dashboard items to indicate that what is shown in the dashboard items is not the original visualization, but a manipulated one where the filters override the stored dimensions' values.

![Current filters displayed as badges above the dashboard](resources/images/content/user/dashboard/dashboard-filter-badges.png)

Filter badges can be clicked for opening the filter selection dialogs thus allowing for filter editing. A filter can be removed by clicking on the **Remove** button in the badge. Whenever a filter is added, edited or removed, the dashboard items reload to show the updated data. Filter badges are always visible at the top of the page when scrolling the dashboard content.

## Éléments de tableau de bord montrant les graphiques, tableaux croisés dynamiques et cartes

### Basculer entre les visualisations

Les éléments du tableau de bord montrant les graphiques, les tableaux croisés dynamiques et les cartes peuvent être basculés entre ces visualisations. Cliquez sur les boutons en haut à droite de chaque élément pour basculer entre les visualisations.

![](resources/images/content/user/dashboard/dashboard-pluginitem-buttons.png)

## Interprétations

You can write interpretations for the chart, pivot table, map, event report, and event chart items. Click on the interpretations button ![](resources/images/content/user/dashboard/dashboard-interpretations-button.png), and the item will be expanded vertically underneath to show the interpretations and replies. You can like an interpretation, reply to an interpretation, and add your own interpretation. You can edit, share or delete your own interpretations and replies, and if you have moderator access, you can delete others’ interpretations.

It is possible to format the description field, and interpretations with **bold**, _italic_ by using the Markdown style markers \* and \_ for **bold** and _italic_ respectively. The text field for writing new interpretations has a toolbar for adding rich text. Keyboard shortcuts are also available: Ctrl/Cmd + B and Ctrl/Cmd + I. A limited set of smilies is supported and can be used by typing one of the following character combinations: :) :-) :( :-( :+1 :-1. URLs are automatically detected and converted into a clickable link.

Interpretations are sorted in descending order by date, with the most recent shown on top. Interpretation replies are sorted in ascending order by date, with the oldest shown on top.

![](resources/images/content/user/dashboard/dashboard-interpretations.png)

## Partager un tableau de bord

<!--DHIS2-SECTION-ID:dashboard_sharing-->

Pour partager un tableau de bord avec des groupes d’utilisateurs, cliquez sur le bouton **PARTAGER** à droite du titre du tableau de bord pour afficher les paramètres de partage du tableau de bord. Pour partager le tableau de bord avec des utilisateurs ou groupes d’utilisateurs spécifiques, saisissez leurs noms dans le champ de saisie pour les identifier dans les paramètres de partage du tableau de bord.

![](resources/images/content/user/dashboard/dashboard-sharing-dialog.png)

Tous les tableaux de bord ont deux groupes de partage définis par défaut.

- Accès externe (sans login)

  Cette option, lorsqu'elle est sélectionnée, permet d'accéder au tableau de bord en tant que ressource externe. Ceci est utile lorsque vous créez un portail Web externe, mais souhaitez avoir des données d'un tableau de bord que vous avez créé en interne dans DHIS2. Par défaut, cette option n'est pas sélectionnée.

- Accès public (avec login)

  Cette option permet de rendre disponible le tableau de bord sélectionné à tous les utilisateurs au sein de votre instance DHIS2. Cela peut aussi être masqué de la vue du public en sélectionnant l'option "Aucun", qui est l'option par défaut pour les nouveaux tableaux de bord.

Les groupes d’utilisateurs qui ont été ajoutés manuellement peuvent se voir attribuer deux types d'autorisations dans le tableau de bord :

- Lecture seule

  Fournit au groupe d'utilisateurs des droits de visualisation uniquement sur le tableau de bord.

- Lecture et écriture

  Permet aux groupes d'utilisateurs de modifier le tableau de bord en plus de le visualiser. L’édition permet de modifier la mise en page, de redimensionner et de supprimer des éléments, renommer/supprimer le tableau de bord, etc.

Vous pouvez fournir aux utilisateurs l'URL du tableau de bord, ce qui leur pemet de naviguer directement dans le tableau de bord. Pour obtenir l'URL du tableau de bord, il suffit d''y accéder en mode visualisation et de copier l'URL du navigateur. Par exemple, l'URL du tableau de bord des soins anténatals dans play.dhis2.org/demo est:

https://play.dhis2.org/demo/dhis-web-dashboard/\#/nghVC4wtyzi

# Messagerie

<!--DHIS2-SECTION-ID:messages-->

<!--DHIS2-SECTION-ID:dashboard_messages-->

## À propos des messages et des commentaires

![](resources/images/content/user/messaging/view_inbox.png)

Dans DHIS2, vous pouvez envoyer des messages et des commentaires aux utilisateurs, à des groupes d'utilisateurs et aux unités d'organisation. Lorsque vous envoyez un commentaire, il est routé vers un groupe d'utilisateurs particulier appelé groupe de destinataires. Si vous êtes membre de ce groupe d'utilisateurs, vous avez alors accès aux outils de gestion des commentaires. Vous pouvez, par exemple, définir le statut d'un nouveau commentaire à "En attente" pendant que vous attendez d'avoir plus d'informations.

En plus des messages entre utilisateurs et des commentaires, en fonction de votre configuration, le système vous enverra également des messages génériques. Ces messages peuvent être déclenchés par différents événements, y compris les échecs et défaillances de tâches en arrière-plan et la validation des résultats d'analyse. Les outils de gestion des commentaires sont également disponibles pour les résultats de validation et la priorité sera attribuée à l'importance de la règle de validation violée.

Pour aller à l'application, cliquez sur **l'icône du message dans l'en-tête** ou recherchez l'application **Messagerie** dans le champ de recherche des applications.

> **Note**
>
> Les messages et les commentaires ne sont pas envoyés aux adresses électroniques des utilisateurs, ils n'apparaissent que dans DHIS2.
>
> Avec 2.30, nous avons introduit une nouvelle application de messagerie qui offre une expérience de messagerie plus étoffée. Plus précisément:
>
> - Basculez entre la vue liste et la vue compacte en cliquant sur l'icône située dans le coin supérieur droit.
>
> - La vue en liste est simpliste et donne une bonne vue d'ensemble de tous les messages. Elle est particulièrement adaptée aux commentaires et messages de validation.
> - La vue compacte est un moyen moderne de voir les messages, l’utilisateur ayant plus d’informations dans une seule vue. Il est donc plus facile de visionner et de répondre à plusieurs messages.
>
> La première capture d'écran de cette section affiche la vue liste, tandis que la capture d'écran de la section **Lire un message** affiche la vue compacte.
>
> - Un nouveau champ de recherche est ajouté pour permettre à l'utilisateur de rechercher des messages. La recherche fonctionne par filtration des messages sur différents attributs; sujet, texte et expéditeurs. Cela signifie que vous pouvez affiner la liste de conversation en entrant un mot de recherche.
>
> - Une fonctionnalité d'actualisation automatique est ajoutée afin que l'application récupère les nouveaux messages à un intervalle défini, toutes les 5 minutes. Cette fonctionnalité est désactivée par défaut.
>
> - Pour chaque conversation, vous pouvez ajouter des participants à la conversation. Ceci est très utile si vous souhaitez participer à cette conversation ou si quelqu'un doit également voir les informations. Il n'est pas possible de supprimer des participants d'une conversation.

## Créer un message

![](resources/images/content/user/messaging/create_private_message.png)

1.  Cliquez sur **Composer**.

2.  Définissez à qui vous souhaitez envoyer le message. Vous pouvez envoyer un message aux unités d'organisation, aux utilisateurs ainsi qu'à des groupes d'utilisateurs.

    - Dans le champ **À**, vous pouvez rechercher des unités d'organisation, des utilisateurs et des groupes d'utilisateurs et sélectionner les destinataires souhaités.

3.  Saisissez un objet et le corps du message.

4.  Cliquez sur **Envoyer**.

## Lire un message

![](resources/images/content/user/messaging/read_message.png)

1.  Sélectionnez le type de message approprié à gauche.

2.  Cliquez sur un message.

    Si le message fait partie d'une conversation, vous verrez tous les messages de cette conversation.

## Créer un commentaire

1.  Suivez les étapes pour créer un message, en sélectionnant uniquement **Commentaire** au lieu de saisir les destinataires.

2.  Le message sera créé en tant que commentaire et apparaîtra dans le dossier **Tickets** de tous les utilisateurs spécifiés.

## Pièces jointes.

Avec 2.31, nous avons ajouté les pièces jointes aux messages. Lors de la création ou de la réponse dans une conversation, vous avez la possibilité d'ajouter des pièces jointes. Il n’existe actuellement aucune limitation quant au type ou à la taille du fichier.

## Gérer les commentaires et validations

> **Note**
>
> Vous ne verrez que les commentaires et aurez accès aux outils de traitement  si vous êtes membre du groupe d'utilisateurs autorisés à gérer les commentaires.
>
> Avec la nouvelle application, vous gérez les outils  pour les tickets et les messages de validation via le menu d'icônes qui apparaît lors de la visualisation d'un message ou de la vérification des messages dans la liste de conversations.

### Tous les messages sont sélectionnés.

![Tous les messages sont séléctionnés](resources/images/content/user/messaging/view_validation_select_all.png)

### Tous les messages sont sélectionnés et le sélecteur de choix étendu est sélectionné

![Tous les messages sont sélectionnés et le sélecteur de choix étendu est sélectionné](resources/images/content/user/messaging/view_validation_select_all_icon_menu.png)

Vous recevrez des commentaires dans votre dossier **Tickets** et des messages de validation dans votre dossier **Validation**. Pour les commentaires et les messages de validation, vous disposez des options suivantes, en plus de celles des messages:

<table style="width:100%;">
<caption>Outils de gestion des commentaires</caption>
<colgroup>
<col width="23%" />
<col width="76%" />
</colgroup>
<thead>
<tr class="header">
<th>Fonction</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Priorité</strong></p></td>
<td><p>Vous pouvez marquer un commentaire avec différentes priorités: <strong>neutre</strong>, <strong>Faible</strong>, <strong>Moyenne</strong> ou <strong>Élevée</strong>.</p>
<p>Définir la priorité facilite la distinction du commentaire que vous devez résoudre en premier et ceux pouvant attendre.</p></td>
</tr>
<tr class="even">
<td><p><strong>Statut</strong></p></td>
<td><p>Tous les commentaires reçoivent le statut <strong>Ouvert</strong> à la création.</p>
<p>Pour garder une traçabilité des commentaires existants, vous pouvez définir le statut sur <strong>En attente</strong>, <strong>non valide</strong> ou <strong>Résolu</strong>.</p>
<p>Vous pouvez filtrer les commentaires dans votre boîte de réception en fonction de leur statut. Ceci facilite le basculement entre les commentaires et les messages normaux.</p></td>
</tr>
<tr class="odd">
<td><p><strong>Attribué à</strong></p></td>
<td><p>Vous pouvez affecter un commentaire à n'importe quel membre du groupe d'utilisateurs autorisé à les gérer.</p>
<p></p>
<p><strong>-</strong> Aucun signifie que vous n'avez affecté aucun utilisateur au commentaire.</p></td>
</tr>
<tr class="even">
<td><p><strong>Réponse interne</strong></p></td>
<td><p>Lorsque vous travaillez au sein d'une équipe de traitement des commentaires, vous pouvez en discuter avant de répondre à l'expéditeur. Vous pouvez conserver cette discussion dans la même conversation que le commentaire lui-même.</p>
<p>Pour envoyer une réponse dans le groupe d'utilisateurs de traitement des commentaires, cliquez sur <strong>Réponse interne</strong>.</p></td>
</tr>
</tbody>
</table>

## Configurer la fonction commentaire

Pour configurer la fonction commentaire, vous devez :

1.  Créez un groupe d'utilisateurs (par exemple, "Destinataires du commentaire") qui contient tous les utilisateurs qui devraient le recevoir.

2.  Ouvrez l'application **Paramètres système** et cliquez sur **Général** \> **destinataires** et sélectionnez le groupe d'utilisateurs créé lors de l'étape précédente.

# Définir les préférences du compte d'utilisateur

<!--DHIS2-SECTION-ID:user_account_preferences-->

Dans **Paramètres de l'utilisateur**, vous pouvez modifier la langue d'affichage de DHIS2 et la langue de la base de données. La langue de la base de données est la traduction du contenu des métadonnées, tels que des éléments de données et des indicateurs. Vous pouvez également choisir un style d'affichage et activez ou désactivez la réception des SMS et e-mails. Si vous le souhaitez, vous pouvez utiliser un nom abrégé, tel que "Joe" dans les modules d'analyse, au lieu d'utiliser votre nom complet.

Dans **Profil de l'utilisateur**, vous pouvez ajouter des informations personnelles à votre profil comme votre adresse électronique, votre numéro de téléphone mobile, votre date de naissance, votre photo de profil et plus. Lorsque vous envoyez des messages, la personne qui les reçoit pouvant voir ces détails de votre profil. Vous pouvez également fournir des noms de compte pour divers services de messagerie directes, qui seront utilisés par le système.

Dans **Paramètres du compte**, vous pouvez réinitialiser votre mot de passe et configurer l'authentification à 2 facteurs. La configuration de l'authentification à 2 facteurs requiert le téléchargement de l'application Google Authenticator sur votre appareil mobile.

Dans la section **Voir le profil complet**, vous trouverez un résumé des détails de votre profil. Cette section comprend quelques champs que vous ne pouvez pas modifier vous-même, tels que les rôles d'utilisateur et les unités d'organisation d'utilisateur.

Dans la section **A propos de DHIS2**, vous trouverez une liste détaillée sur l'instance DHIS2.
