---
title: Guide de l'utilisateur final de DHIS 2
---

<!--DHIS2-SECTION-ID:index-->

# À propos de ce guide

<!--DHIS2-SECTION-ID:about_this_guide_-->

La documentation de DHIS2 est le fruit d'un effort collectif et a été développée non seulement par l'équipe de développement mais aussi par les utilisateurs. Même si ce guide cherche à être complet, il se peut que des fonctionnalités aient été omises ou nécessitent encore une documentation approfondie. Cette section explique certaines des conventions utilisées dans le document.

DHIS2 est une application web. Dans la plupart des cas, des captures d'écran ont été incluses pour une meilleure compréhension. Des raccourcis vers diverses fonctionnalités telles que **Élément de donnée** \> **Groupe d'éléments de donnée** sont affichés. Le symbole "\>" indique que vous devez cliquer sur **Élément de donnée** et ensuite sur **Groupe d'éléments de donnée**.

Différents styles de texte ont été utilisés pour mettre en avant des parties importantes ou des types particuliers de texte comme par exemple le code source. Chaque convention est alors expliquée ci-dessous :

> **Note**
>
> Une note contient des informations complémentaires à considérer ou une référence vers des informations supplémentaires qui peuvent être utiles.

> **Astuce**
>
> Une astuce peut être un conseil utile. Elle peut montrer par exemple de comment effectuer une tâche de manière beaucoup plus efficiente

> **Important**
>
> Les informations importantes ne doivent pas être ignorées. Il indique souvent quelque chose que l'application requiert.

> **Attention**
>
> Les instructions contenues dans cette section doivent être respectées pour éviter des résultats inattendus lors de l'analyse, dans la performance ou dans le fonctionnement

> **Avertissement**
>
> L'information dans cette section doit être lue attentivement. Leur non respect peut mener à des pertes définitives de données ou à des problèmes de stabilité dans le système.

    Les programmes contiennent le plus souvent des codes informatiques.
    Ces codes sont affichés sur un fond ombré et avec une police distincte.

`Les commandes sont affichées en gras et représentent une commande à exécuter sur le système d'exploitation ou dans la base de données.`

Les liens vers des sites externes ou références croisées sont affichés en bleu et soulignés comme [ceci.](http://www.dhis2.org).

Les références bibliographiques sont affichées entre crochets comme ce Store2007. La liste complète des références peut être trouvée dans la bibliographie fournie à la fin du présent document.

# À propos du serveur démo, du DHIS Live et de la conception de base de données

<!--DHIS2-SECTION-ID:moare_about_dhis2_server_database-->

## Utilisation du serveur démo de DHIS2

L'équipe DHIS2 gère un serveur démo dont l'adresse est <https://play.dhis2.org/demo>. C'est le moyen le plus simple pour essayer DHIS2. Il suffit d'ouvrir le lien dans votre navigateur et vous connecter  en utilisant : nom dutilisateur/pseudo = admin et le mot de passe = district.

> **Note**
>
> Toutes les modifications effectuées sur ce serveur sont supprimées chaque soir. Ne sauvegardez aucun travail important sur ce serveur. Il est exclusivement conçu pour des fins de démonstration\!

## Utiliser le DHIS2 Live

<!--DHIS2-SECTION-ID:mod2_1-->

### Démarrer avec le forfait DHIS2 Live

DHIS2 Live est le moyen le plus simple d'utiliser DHIS2 sur votre ordinateur local. DHIS2 Live est un exécutable comportant des démos. Il suffit de télécharger l'application sur ce [lien](http://www.dhis2.org/downloads). Une fois le fichier téléchargé, vous pouvez simplement double-cliquer sur le fichier téléchargé, et commencer donc l'utilisation de DHIS2.

#### Les conditions d'utilisation de DHIS2 Live

Assurez-vous que vous disposez d'une version actualisée de JAVA Runtime sur votre ordinateur. Selon votre système d'exploitation, il existe différentes méthodes d'installation de JAVA. Pour plus de détails sur l'installation de JAVA, vous pouvez vous référer a [siteweb](http://java.sun.com/javase/downloads/index.jsp).

#### Commencer avec une base de données vièrge

DHIS2 Live est doté d'une base de données de démonstration semblable à celle sur la [démo en ligne](http://apps.dhis2.org/demo/) (basée sur l'indice HMIS national de la Sierra Léone), et si vous souhaitez commencer avec un système/base de données vierge et construire votre propre système vous devez donc suivre les étapes suivantes :

1\) Arrêtez DHIS2 Live s'il est en cours d'exécution. Faites un clic droit sur l'icône dans la barre des tâches et sélectionnez Quitter. La barre des tâches est le symbole vert en bas à droite de votre écran(sur Windows) qui devrait afficher 'Serveur DHIS2 en cours d'exécution' quand vous pointez votre curseur sur l'icône.

2\) Ouvrez le dossier dans lequel DHIS2 Live est installé et localisez le dossier nommé "conf".

3\) Dans conf/ ouvrez le fichier nommé 'hibernate.properties' dans un éditeur de texte, (notepad ou similaires) et exécutez les modifications suivantes : localisez l'adresse 'jdbc:h2:./database/dhis2' et remplacez 'dhis2' par un nom que vous souhaitez attribuer à votre base de données. (e.g. dhis2_test).

4\) Enregistrez et fermez le fichier hibernate.properties.

5\) Démarrez DHIS2 Live en double-cliquant sur le fichier dhis2-live.exe dans le dossier d'installation de DHIS2 Live ou en utilisant un raccourci sur le bureau ou un lien de menu que pouvez éventuellement configurer.

6\) Attendez que l'écran de connexion s'affiche sur la fenêtre de votre navigateur, puis connectez-vous avec les identifiants : 
Nom d'utilisatuer : admin et Mot de passe : district

7\) Vous verrez maintenant un système DHIS2 complètement vierge et vous devriez commencer par ajouter vos utilisateurs, votre hiérarchie organisationnelle, vos éléments de données, vos jeux de données, etc. Veuillez vous référer aux autres sections du manuel d'utilisateur pour de plus amples informations sur la manière de procéder. 

### Télécharger et installer la version serveur

La dernière version stable de la version serveur peut être téléchargée à partir de ce [siteweb](http://stable.dhis2.org/). Pour plus d'informations sur son installation, veuillez vous reporter au chapitre Installation dans le manuel d'implémentation.

## Se connecter à DHIS2

<!--DHIS2-SECTION-ID:mod2_2-->

Que vous ayez installé la version serveur de la version bureau de Live ou non, vous devrez utiliser un navigateur web pour vous connecter à l'application. DHIS2 est compatible avec les versions récentes de navigateurs. Cependant, vous devez vous assurer que Java Script est activé.

Pour vous connecter à l'application, allez à l'adresse <http://localhost:8080/dhis> si vous utilisez DHIS2 Live, ou remplacez `localhost` par le nom ou l'adresse IP du serveur dans lequel la version serveur est installée.

Dès que vous démarrez DHIS2, en-ligne ou hors-ligne, l'écran qui s'affiche vous invite à entrer votre nom d'utilisateur et mot de passe. Après avoir entré les informations nécessaires, cliquez sur le bouton se connecter pour vous connecter à l'application. Le nom d'utilisateur et mot de passe par défaut sont respectivement 'admin' et 'district'. Il est recommandé de les modifier dès votre première connexion.

![](resources/images/content/user/getting_started/login.png)

Vous pouvez sélectionner la langue dans laquelle vous souhaitez utiliser DHIS2 à partir de la boîte de dialogue "Changer de langue" en bas de l'écran. Il faut toutefois noter que certaines langues ne sont pas disponibles.

Si vous avez oublié votre mot de passe, vous pouvez cliquer sur le lien "Mot de passe oublié". Vous devez avoir prélablement entré votre adresse électronique sur DHIS2 et le serveur doit être correctement configuré pour envoyer des emails.

Si vous souhaitez créer votre propre compte (ce que le serveur administrateur permet), cliquez simplement sur "Créer un compte" et suivez les instructions.

Une fois connecté à DHIS2, reportez-vous aux sections spécifiques de ce manuel pour savoir les différentes fonctionnalités disponibles.

## Se déconnecter de DHIS2

<!--DHIS2-SECTION-ID:mod2_4-->

Cliquez simplement sur Profil puis sur "Se déconnecter" en haut à droite dans le menu DHIS2.

## Brève introduction sur la conception d'une base de données DHIS2

<!--DHIS2-SECTION-ID:database_design-->

DHIS2 offre un ensemble puissant de divers outils pour la collecte, la validation, le reporting et l'analyse de données, mais le contenu de la base de données, c.àd. ce qu'il faut collecter, par qui et sous quel format, dépendra du contexte d'utilisation. Cependant, pour utiliser DHIS2, vous devez d'abord créer des métadonées. Les métadonnées, ou données sur les données, décrivent ce qui doit être collecté (éléments de données et catégories), où cela doit être collecté (unités d'organisation) et à quelle fréquence il doit être collecté (périodes). Ces métadonnées doivent être créées dans la base de données DHIS2 pour qu'elles puissent être utilisées. Cela peut se faire à partir de l'interface de l'utilisateur et ne nécessite pas de programmation ni de compétences techniques approfondies, mais requiert une bonne connaissance des processus à partir desquels vous souhaitez collecter des données.

Cette section est une introduction brève et rapide sur la conception d'une base de données DHIS2.  Elle explique également les différentes étapes nécessaires à la préparation d'un nouveau système DHIS2 prêt à être utilisé. Les spécifcités de chaque étape sont epxliquées dans différents autres chapitres, et les meilleures pratiques en matière de choix de conception sont expliquées dans le manuel d'implémentation. Les étapes à suivre sont donc les suivantes :

1\. Configurez une hiérarchie organisationnelle

2\. Définissez les éléments de données

3\. Définissez les jeux de données ainsi que les modèles de saisie de données

4\. Définissez les règles de validation

5\. Définissez les indicateurs

6\. Définir les tableaux de rapports et concevoir les rapports

7\. Configurer le module GIS

8\. Concevez des graphiques et personnalisez le tableau de bord

### La hiérarchie organisationnelle

La hiérarchie organisationnelle définit l'organisation à l'aide de l'aplication DHIS2, des structures sanitaires, zones administratives et autres zones géographiques utilisées dans la collecte et l'analyse de données. Cette dimension de données est définie comme hiérarchie avec une unité mère (ex. Ministère de la santé) et un nombre quelconque de niveaux et de noeuds en-dessous. Chaque noeud dans cette hiérarchie est appelé unité d'organisation dans DHIS2.

La conception de cette hiérarchie détérmine les unités géographiques d'analyse disponibles à l'utilisateur puisque les données sont collectées et agrégées dans cette structure. Il ne peut y avoir qu'une seule hiérarchie d'organisation à la fois, il faut donc faire attention à sa structure. Des hiérachies supplémentaires (ex. regroupements administratifs parallèles comme les "Propriétaires d'installations") peuvent être modélisées à l'aide de regroupements organisationnels et d'ensembles de regroupements, mais la hiérarchie organisationnelle représente le principal moyen d'agrégation de données sur la dimension géographique. Les hiérarchies organisationnelles nationales typiques dans le domaine de la santé publique ont 4-6 niveaux, mais peuvent prendre en charge n'importe quel nombre de niveaux. La hiérarchie est constituée de relations parent-enfant, ex. Un pays ou une unité MoH (la racine) peut avoir par exemple 8 unités parents (provinces), et chaque province ( au niveau 2) peut avoir 10-15 arrondissements en tant qu'enfant. Normalement, les structures sanitaires sont localisées dans les niveaux les plus bas, mais elles peuvent également être placées à des niveaux plus élevés comme par exemple, les hopitaux nationaux ou provinciaux. Les arborescences asymétriques sont donc également supportées (ex. un noeud feuille peut être placé au niveau 2 alors que la plupart des noeuds feuilles sont au niveau 5).

Il existe généralement une hiérarchie géographique définie par le système de santé. Exemple : où se situent les bureaux administratifs (ex. Ministère de la santé, province, arrondissement) ? Cependant, mais il existe souvent d'autres limites administratives dans le pays qui peuvent être ajoutées ou pas, selon la façon dont elles pourront influencer l'analyse des données. En concevant la hiérarchie, le nombre d'enfants de toute unité organisationnelle peut indiquer l'utilité de la structure. Par exemple, avoir une relation 1-1 ou plus entre deux niveaux n'est pas très utile car les valeurs seront les mêmes pour le niveau enfant et le niveau parent. D'autre part, un très grand nombre d'enfants dans le milieu de la hiérarchie (ex. 50 arrondissements dans la même province) peut nécessiter l'ajout d'un niveau supplémentaire pour augmenter l'utilité de l'analyse des données. Au niveau le plus bas, les établissements médicaux auront souvent un grand nombre d'enfants (10-60), mais pour les autres niveaux plus haut dans la hiérarchie, il est recommandé d'avoir environ 5-20 enfants. Trop peu ou trop d'enfants pourraient indiquer qu'un niveau doit être supprimé ou ajouté.

Notez qu'il est facile et pratique d'apporter des modifications aux niveaux supérieurs de la hiérarchie dans des étapes ultérieures. Le seul problème reste la modification des unités organisationnelles responsables de la collecte de données (les nœuds feuilles), ex. la dissociation ou l'association de structures sanitaires. L'agrégation dans la hiérarchie s'effectue à tout moment en fonction de la hiérarchie actuelle et reflète toujours les modifications les plus récentes apportées à la structure organisationnelle. Reportez-vous au chapitre sur les unités d'organisation pour apprendre à créer des unités d'organisation et construire la hiérarchie.

### Éléments de données

L'élément de donnée est peut-être l'élément le plus important d'une base de données DHIS2. Il représente la dimension "QUOI" en expliquent ce qui est collecté ou analysé. Dans certains contextes, il s'agit d'un indicateur, mais dans DHIS2, nous appelons cette unité de collecte et d'analyse un _élément de données_. L'élément de donnée représente souvent le décompte de quelque chose, et son nom décrit ce qui est compté, ex. "Doses de BCG administrées" ou "Cas de Paludisme". Lorsque les données sont collectées, validées, analysées, rapportées ou présentées, ce sont les éléments de données ou expressions fondées sur ces éléments de données qui décrivent le QUOI de ces données. De cette manière, les éléments de données deviennent important pour tous les aspects du système et décident non seulement de la manière dont les données sont collectées, mais aussi et surtout, la manière dont les valeurs de données sont représentées dans la base de données, ce qui conditionne la manière dont les données peuvent être analysées et présentées.

Il est possible d'ajouter plus de détails à cette dimension "QUOI" à travers la dimension de désagrégation appelée catégories d'éléments de données. Certaines catégories communes sont l'âge et le sexe, mais l'utilisateur peut ajouter n'importe quelle catégorie et les lier à des éléments de données spécifiques. La combinaison du nom d'un élément de données et de la catégorie qui lui est attribuée définit la plus petite unité de collecte et d'analyse disponible dans le système, et décrit donc les données brutes de la base de données. Des agrégations peuvent être effectuées lorsque vous zoomez en arrière sur cette dimension, mais aucune autre exploration n'est possible. la conception des éléments de données et des catégories définit donc le détail de l'analyse disponible au système (sur la dimension QUOI). Les modifications d'éléments de données et de catégories apportées ultérieurement dans le processus peuvent être compliquées car elles changeront la signification des valeurs de données déjà stockées dans la base de données (s'il en existe). Cette étape est donc l'une des plus décisives et prudentes du processus de conception de bases de données.

L'une des meilleures méthodes de conception d'éléments de données consiste à les considérer comme une unité d'analyse de données et non seulement comme un champ dans le formulaire de collecte de données. Chaque élément de données vit indépendamment dans la base de données, complètement détaché du modèle de collecte. Les rapports et autres résultats sont basés sur des éléments de données et des expressions/formules composées d'éléments de données et non sur les modèles de collecte de données. Les besoins en analyse de données devraient donc guider le processus, et non les modèles de collecte de données. Une règle simple est que le nom de l'élément de données doit être autonome et pouvoir décrire la valeur de données même en dehors du contexte de son modèle de collecte. Par exemple, un nom d'élément de données tel que "références totales" parait logique lorsque vous le regardez soit sous l'angle de modèle "RCH" ou de modèle "OPD" , mais le nom tout seul ne décrit pas uniquement les phénomènes (qui sont ces référés ?), et devrait plutôt être appelé "Références totale de Maternité" ou "Références totales de OPD". Deux éléments de données différents avec des significations différentes, bien que le champ du modèle de saisie indique uniquement "Références totales" puisque l'utilisateur du modèle saura toujours d'où viennent ces références. Dans une base de données ou un référentiel d'éléments de données, ce contexte n'est plus valide et les noms des éléments de données deviennent donc importants dans la description des données.

Les propriétés communes des éléments de données peuvent être modélisées à partir de ce qu'on appelle des groupes d'éléments de données. Ces groupes sont complètement flexibles car leurs noms et la composition de leurs membres sont définis par l'utilisateur. Les groupes sont utiles non seulement pour parcourir et présenter des données connexes, mais il peuvent également être utilisés pour agréger des éléments de données. Les groupes sont faiblement couplés aux éléments de données et ne sont pas directement liés aux valeurs de données, ce qui signifie qu'ils peuvent être modifiés et ajoutés à tout moment sans interférer avec les données brutes.

### Ensemble de données et modèles de saisie de données

Toute la saisie de données dans DHIS2 est organisée à l'aide d'ensembles de données. Un ensemble de données est une collection d'éléments de données regroupés pour la collecte de données. Dans le cas d'installations distribuées, ils définissent également des blocs de données destinés à l'exportation et à l'importation entre des instances de DHIS2 (ex. d'une installation locale d'un bureau d'arrondissement vers un serveur national). Les ensembles de données ne sont pas directement liés aux valeurs de données, mais uniquement par le biais de leurs éléments de données et de leurs fréquences. De ce fait, un ensemble de données peut être modifié, supprimé ou ajouté à tout moment sans affecter les données brutes déjà stockées dans le système, même si ces modifications vont évidement affecter la façon dont les nouvelles données seront collectées.

Un ensemble de données a un type de période, qui contrôle la fréquence de collecte des données, qui peut être quotidienne, hebdomadaire, mensuelle, trimestrielle, semestrielle ou annuelle. Les éléments de données à inclure dans l'ensemble de données et le type de période sont définis par l'utilisateur, ainsi qu'un nom, un nom abrégé et un code.

Pour utiliser un ensemble de données dans la collecte des données pour le compte d'une unité d'organisation spécifique, cette dernière doit être affectée à l'ensemble de données. Ce mécanisme détermine quelles unités d'organisation peuvent utiliser quels ensemble de données et définit simultanément les valeurs cibles pour la complétude des données (exemple : combien de structures sanitaires sont censées soumettre des données RCH tous les mois ?).

Un élément de donnée peut appartenir à plusieurs ensembles de données, mais cela nécessite une réflexion approfondie, car il peut entraîner un chevauchement et une inconstance des données collectées si les ensembles de données ont par exemple des fréquences différentes et sont utilisés par les mêmes unités d'organisation.

#### Modèles de saisie de données

Une fois que vous avez affecté un ensemble de données à une unité d'organisation, cet ensemble de données sera disponible dans Saisie de données (sous Service) pour les unités d'organisation auxquelles vous l'avez affecté et pour les périodes valides, en fonction du type de période de l'ensemble des données. Un formulaire de saisie de données par défaut s'affichera. Il s'agit tout simplement d'une liste des éléments de données appartenant à l'ensemble de données ainsi que d'une colonne pour la saisie des valeurs. Si votre ensemble de données contient des éléments de données avec des catégories telles que des groupes d'âge ou de sexe, des colonnes supplémentaires seront automatiquement générées dans le formulaire par défaut en fonction des catégories. En plus du formulaire de saisie de données basé sur une liste par défaut, il existe deux alternatives supplémentaires : le formulaire par section et le formulaire personnalisé.

##### Formulaires par section

Les formulaires par section offrent plus de flexibilité lorsqu'il s'agit d'utiliser des formes tabulaires et sont rapides et simple à concevoir. Votre formulaire de saisie de données nécessite souvent plusieurs tableaux avec sous-titres, et vous devez parfois désactiver (griser) quelques champs du tableau (Exemple : certaines catégories ne s'appliquent pas à tous les éléments de données). Ces deux fonctions sont prises en charge dans les formulaires par section. Après avoir défini un ensemble de données, vous pouvez définir ses sections avec des sous-ensembles d'éléments de données, une en-tête et d'éventuels champs gris dans le tableau de la section. L'ordre des sections dans un ensemble de données peut également être défini. Dans Saisie de Données, vous pouvez maintenant commencer à utiliser le formulaire par Section ( il devrait apparaître automatiquement lorsque des sections sont disponibles pour l'ensemble de données sélectionné). Vous pouvez basculer entre le formulaire par défaut et le formulaire par section dans dans le coin supérieur droit de l'écran de saisie. La plupart des formulaires de saisie de données tabulaires doivent être possible avec des modèles par section, et plus vous utilisez les formulaires par section (ou formulaires par défaut) plus cela devient facile. Si ces deux types de formulaires ne répondent pas à vos exigences, la troisième option est le formulaire de saisie de données personnalisé, plus flexible même s'il prend plus de temps.

##### Formulaires personnalisés

Lorsque le formulaire que vous souhaitez concevoir est trop compliqué pour les formulaires par défaut ou par section, votre dernière option reste l'utilisation d'un formulaire personnalisé. Cela prend plus de temps, mais vous donne une flexibilité totale en termes de conception. DHIS2 dispose d'un éditeur HTML intégré (FcK Editor) pour le concepteur de formuaire qui permet de concevoir le formulaire dans l'IU (interface utilisateur) ou de coller directement votre code HTML à l'aide de la fenêtre Source dans l'éditeur. Dans le formulaire personnalisé, vous pouvez insérer un texte statique ou des champs de données (liés à des éléments de données + la catégorie) à n'importe quelle position sur le formulaire et vous êtes totalement libre de concevoir la mise en page du formulaire. Une fois qu'un formulaire personalisé a été ajouté à un ensemble de données, il sera disponible dans la saisie de données et pourra être utilisé automatiquement. Vous pouvez revenir aux formulaires par défaut ou par sections (s'il en existe) dans le coin supérieur droit de l'écran de saisie.

### Règles de validation

Une fois que vous avez configuré la partie relative à la saisie de données du système et commencé à collecter des données, il est donc temps de définir des règles de contrôle de la qualité des données permettant d'améliorer la qualité des données collectées. Vous pouvez ajouter autant de règles de validation que vous le souhaitez. Celles-ci sont composées d'expressions de gauche et de droite qui, elle aussi, sont composées d'éléments de données, avec un opérateur entre les deux côtés. Les règles typiques consistent à comparer les totaux partiels aux totaux de quelque chose. Si vous avez par exemple deux éléments de données "Tests de dépistage du VIH" et "Résultat positif du test de dépistage", vous savez alors que dans le même formulaire (pour la même période et la même unité organisationnelle), le nombre total de tests doit toujours être égal ou supérieur au nombre de tests positifs. Ces règles doivent être des règles absolues, ce qui signifie qu'elles sont mathématiquement correctes et non pas simplement des hypothèses ou sont "la plupart du temps correctes". Les règles peuvent être exécutées dans la saisie de données, après le remplissage de chaque formulaire, ou dans un processus plus complexe dans plusieurs formulaires à la fois. Exemple : pour toutes les structures sanitaires du mois précédent, les résultats des tests listeront toutes les violations et les valeurs détaillées pour chaque côté de l'expression où la violation s'est produite pour faciliter le retour à la saisie des données et corriger les valeurs.

### Indicateurs

Les indicateurs représentent peut-être la plus puissante fonctionnalité d'analyse de données de DHIS2. Alors que les éléments de données représentent les données brutes (comptes) collectées, les indicateurs représentent des formules fournissant des taux de couverture, des taux d'incidence, des ratios et d'autres unités d'analyse basées sur une formule. Un indicateur est composé d'un facteur (Exemple : 1,100, 100, 100 000), d'un numérateur et d'un dénominateur. Les deux derniers sont tous deux des expressions basées sur un ou plusieurs éléments de données. Exemple : l'indicateur "Couverture du BCG \<1 an" est défini par une formule avec un facteur 100, un numérateur ("Les doses BCG administrées aux enfants de moins de 1") et un dénominateur ("Population cible de moins de 1 an"). L'indicateur "taux d'abandon de DPT1 à DPT3" est une formule de 100% x ("Doses de DPT1 administrées" - "Doses de DPT3 administrées") / ("Doses de DPT1 administrées").

La plupart des modules de rapport dans DHIS2 prennent en charge les éléments de données et les indicateurs et vous pouvez également les combiner dans des rapports personnalisés, mais la différence et la puissance des indicateurs par rapport aux données brutes (valeurs de données de l'élément de donnée) réside dans la possibilité de comparer des données entre différentes zones géographiques. (Exemple : zones très peuplées ou rurales), la population cible pouvant être utilisée comme dénominateur.

Les indicateurs peuvent être ajoutés, modifiés et supprimés à tout moment sans interférer avec les valeurs de données contenues dans la base de données.

### Tableaux et rapports

Les rapports standards dans DHIS2 constituent un moyen très flexible de présenter les données collectées. Les données peuvent être agrégées par n'importe quel niveau ou unité d'organisation, par élément de donnée, par indicateur, ainsi que dans le temps (mensuellement, trimestriellement, annuellement). Les tableaux de rapports représentent des sources de données personnalisées pour les rapports standards. Ils peuvent être définis de manière flexible dans l'interface utilisateur, puis accessibles via des concepteurs de rapports externes tels que iReport ou via des rapports HTML personnalisés. Ces conceptions de rapport peuvent ensuite être configurées comme des rapports facilement accessibles en un clic avec des paramètres afin que les utilisateurs puissent exécuter les mêmes rapports comme par exemple, tous les mois, lorsque de nouvelles données sont saisies. Elles peuvent également répondre aux besoins des utilisateurs à tous les niveaux, puisque l'unité d'organisation peut être sélectionnée au moment de l'exécution du rapport.

### SIG

Dans le module SIG intégré, vous pouvez facilement afficher vos données sur des cartes, à la fois sur des polygones (zones) et sous forme de points (structures sanitaires), et soit en tant qu'éléments de données ou en tant qu'indicateurs. En fournissant les coordonnées de vos unités d'organisation au système, vous pouvez rapidement vous adapter à ce module. Voir la Section SIG pour plus de détails sur la façon de vous y prendre.

### Diagrammes et tableaux de bord

Un des moyens les plus faciles d'afficher les données de votre indicateur est d'utiliser des graphiques. Un dialogue de diagramme facile à utiliser vous guidera dans la création de divers types de diagrammes avec des données sur les indicateurs, les unités d'organisation et les périodes de votre choix. Ces graphiques peuvent facilement être ajoutés à l'une des quatre sections de votre tableau de bord et sont facilement disponibles immédiatement après votre connexion. Assurez-vous de définir le module du tableau de bord comme module de démarrage dans les paramètres utilisateur.

# Utilisation de l'application de saisie des données

<!--DHIS2-SECTION-ID:data_entry_app-->

## À propos de l'application de saisie de données

<!--DHIS2-SECTION-ID:about_data_entry_app-->

L'application **de saisie de données** est une plateforme où vous saisissez manuellement des données agrégées dans DHIS2. Vous enregistrez à la fois les données pour une unité d'organisation, une période donnée, et un ensemble d'éléments de donnée (ensemble de données). Un ensemble de données correspond généralement à un outil de collecte de données sur papier. Les ensemble de données sont configurés dans l'application de **Maintenance**.

> **Note**
>
> Si un ensemble de données possède à la fois un formulaire par section et un formulaire personnalisé, le système affiche le formulaire personnalisé durant la saisie de données. L'utilisateur qui saisit les données n'a pas la possibilité de choisir le formulaire qui lui convient. Dans le cas de saisie de données sur le web, l'ordre de préférence d'affichage est :
>
> 1.  Formulaire personnalisé (s'il existe)
>
> 2.  Formulaire par section (s'il existe)
>
> 3.  Formulaire par défaut
>
> Les appareils mobiles ne prennent pas en charge les formulaires personnalisés. Dans le cas de la saisie de données sur appareil mobile, l'ordre de de préférence d'affichage est :
>
> 1.  Formulaire par section (s'il existe)
>
> 2.  Formulaire par défaut

Lorsque vous fermez une unité d'organisation, vous ne pourrez plus la modifier dans l'application de **saisie des données**.

## Saisir des données dans un modèle de saisie

<!--DHIS2-SECTION-ID:enter_data_in_data_entry_form-->

![](resources/images/content/user/data_entry/data_entry_overview.png)

1.  Ouvrez l'application de **saisie de données**.

2.  Sélectionnez une unité d'organisation dans l'arborescence à gauche.

3.  Sélectionnez un **ensemble de données**.

4.  Sélectionnez une **période**.

    Les périodes disponibles sont contrôlées par le type de période défini dans l'ensemble de données (fréquence de rapports). Vous pouvez revenir en arrière ou aller en avant en cliquant sur **Année précédente** ou **Année suivante**.

    > **Note**
    >
    > Depending on how you've configured the data entry form, you might have to enter additional information before you can open the date entry form. This can for example be a project derived from a category combination.

5.  Saisir des données dans un formulaire de saisie.

    - Un champ vert signifie que la valeur a été sauvegardée par le système.

    - Un champ gris signifie que le champ est grisé et que vous ne pouvez pas entrer de valeur. Le curseur passe automatiquement au prochain champ non grisé.

    - Pour passer au champ suivant, appuyez sur la touche de Tabulation ou la touche Flèche vers le bas.

    - Pour revenir au champ précédent, appuyez simultanément sur les touches Shift+Tabulation ou la touche Flèche vers le haut.

    - Si vous entrez une valeur invalide, par exemple un caractère dans un champ qui n'accepte que des valeurs numériques, un message pop-up apparaitra pour expliquer le problème et le champ passera à la couleur jaune (non enregistré) jusqu'à ce que la valeur soit modifiée.

    - Si vous avez défini une fourchette de valeurs pour le champ et que la valeur que vous saisissez n'y est pas comprise, un message pop-up apparaitra pour vous indiquer que la valeur n'est pas incluse dans la fourchette. La valeur n'est pas enregistrée jusqu'à ce qu'elle soit modifiée ou que la fourchette soit élargie pour une resaisie de la donnée.

6.  Une fois le formulaire rempli, cliquez sur **Executer la validation** en haut à droite ou en-dessous du modèle de saisie.

    Toutes les règles de validation qui nécessitent des élements de données du même modèle de saisie (ensemble de données) sont éxécutées contre les nouvelles données. Si les règles de validation sont réspectées, vous verrez le message suivant : **_L'écran de données a été validé avec succès_**. Dans le cas où les règles n'ont pas été respéctées, les violations seront présentées sous forme d'une liste.

    ![](resources/images/content/user/dhis2UserManual/Validation_Rule_Result.png)

7.  (Facultatif) Corriger les erreurs de validation.

    > **Note**
    >
    > Zero (0) will delete the value if the data element has been configured to not store zeros.

8.  Une fois les erreurs corrigées et la saisie de données terminée, cliquez sur **Terminé**.

    Le système utilise ces informations pour générer des rapports d'avancement pour les arrondissements, les comtés, les provinces ou pour le niveau national.

## Marquer une valeur de donnée pour suivi

<!--DHIS2-SECTION-ID:mark_data_for_followup_in_data_entry_form-->

![](resources/images/content/user/data_entry/data_entry_section_history.png)

Si vous avez des doutes par rapport à une valeur dont vous voulez vous assurer, vous pouvez la conserver dans le système en la marquant pour un suivi. Dans l'application **qualité de données**, vous pouvez analyser et corriger toutes les valeurs marquées.

1.  Ouvrez l'application de **saisie de données**.

2.  Ouvrez un formulaire de saisie existant.

3.  Double-cliquez sur le champ qui contient la valeur que vous souhaitez marquer pour réaliser un suivi.

4.  Appuyez sur l'icone étoile.

## Modifier des valeurs de données dans un formulaire de donnée existant

<!--DHIS2-SECTION-ID:edit_data_value_in_completed_form-->

1.  Ouvrez l'application de **saisie de données**.

2.  Ouvrez un formulaire de saisie existant.

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

1.  Ouvrez l'application **saisie de données**.

2.  Ouvrez un formulaire de saisie existant.

3.  Double-cliquez sur le champ qui contient la valeur dont vous voulez afficher l'historique.

4.  Cliquez sur **historique de données**.

## Afficher le journal d'audit d'une valeur de donnée

<!--DHIS2-SECTION-ID:display_data_value_audit_trail-->

![](resources/images/content/user/data_entry/data_entry_audit_trail.png)

Un journal d'audit permet d'afficher les valeurs qui ont été saisies avant la valeur actuelle. Il permet également de savoir si la valeur a été modifiée et quel utilisateur a effectué ce changement.

1.  Ouvrez l'application de **saisie de données**.

2.  Ouvrez un formulaire de saisie existant.

3.  Double-cliquez sur le champ contenant la valeur dont vous voulez afficher l'historique.

4.  Cliquez sur **Journal d'audit**.

## Créer manuellement une plage de valeurs minimum-maximum

<!--DHIS2-SECTION-ID:change_min_max_range_manually-->

![](resources/images/content/user/data_quality/set_min_max_manually.png)

1.  Dans l'application de **saisie de données**, ouvrez un formulaire de saisie.

2.  Double-cliquez sur le champs auquel vous souhaitez affecter une plage de valeurs.

3.  Entrez **la limite Mini** et **la limite Maxi**.

4.  Cliquez sur **Sauvegarder**.

    Si les valeurs que vous entrez ensuite ne sont pas incluses dans la nouvelle plage de valeurs, la case de saisie prendra une couleur orange.

5.  (Facultatif) Saisissez un commentaire pour expliquer la raison de cette différence. Il peut s'agir par exemple d'un événement qui aurait pu générer un nombre important de clients.

6.  (Facultatif) Cliquez sur **enregistrer le commentaire**.

> **Astuce**
>
> Cliquez sur l'icône étoile pour marquer la valeur en vue d'un suivi ultérieur.

## Saisir des données en mode Hors-ligne

<!--DHIS2-SECTION-ID:enter_data_offline-->

L'application **de saisie de données** fonctionne même si avez une connexion internet instable lors de la saisie de données. En mode hors-ligne, les données saisies sont enregistrées dans votre ordinateur local. Une fois connecté au réseau, l'application transfère les données vers le serveur. L'utilisation de la bande passante est réduite puisque les formulaires de saisie ne sont plus récupérés depuis le serveur pour chaque rendu.

> **Note**
>
> Pour utiliser cette fonctionnalité, vous devez vous connecter au serveur lorsque vous êtes connecté au réseau.

- Lorsque vous êtes connecté à l'internet, l'application affiche le message suivant en haut du formulaire de saisie :

  ![](resources/images/content/user/data_entry/data_entry_online1.png)

- Si votre connexion internet est interrompue lors de la saisie des données, l'application affiche le message suivant :

  ![](resources/images/content/user/data_entry/data_entry_offline1.png)

  Vos données seront stockées localement. Vous pouvez donc continuer la saisie normalement.

- Dès que vous avez saisi les données nécessaires et que l'application détecte le rétablissement de la connexion, vous verrez ce message apparaître :

  ![](resources/images/content/user/data_entry/data_entry_offline_upload.png)

  Cliquez sur **télécharger** pour synchroniser les données avec le serveur.

- Lorsque vous avez réussi à synchroniser les données avec le serveur, vous verrez ce message de confirmation apparaître :

  ![](resources/images/content/user/data_entry/data_entry_offline_upload_success1.png)

## Activer la saisie de données dans une unité multi-organisation

<!--DHIS2-SECTION-ID:data_entry_multiple_organisation_units-->

![](resources/images/content/user/data_entry/data_entry_multiple_org_unit.png)

Il peut être utile de saisir des données pour plusieurs unités d'organisation dans le même formulaire de saisie, par exemple s'il y a peu d'éléments de données dans un formulaire et un nombre important d'unités d'organisation dans l'arborescence. Dans ce cas, la saisie de données dans plusieurs unités d'organisation peut être activée.

> **Note**
>
> La saisie de données pour plusieurs unités d'organisation à la fois, fonctionne seulement avec les formulaires à section.

1.  Ouvrez l'application **paramètres système**.

2.  Sélectionnez **Activer les formulaires de plusieurs unités d'organisation**.

3.  Dans l'application **saisie de données**, sélectionnez l'unité d'organisation juste au dessus de l'unité d'organisation dans laquelle vous souhaitez saisir des données dans l'arborescence.

    Les éléments de données apparaitront sous forme de colonnes et les unités d'organisation sous forme de lignes dans le formulaire.

    > **Note**
    >
    > The data entry forms should still be assigned to the facilities that you actually enter data for, that is the organisation units now appearing in the form.

## Voir également

<!--DHIS2-SECTION-ID:data_entry_app_see_also-->

- [Contrôler la qualité des données](https://docs.dhis2.org/master/en/user/html/control_data_quality.html)

- [Gérer les ensembles de données et les formulaires de saisie de données](https://docs.dhis2.org/master/en/user/html/manage_data_set.html)

- [Utiliser l'application Maintenance](https://docs.dhis2.org/master/en/user/html/maintenance_app.html)

# Contrôler la qualité des données

<!--DHIS2-SECTION-ID:control_data_quality-->

## À propos des contrôles qualité des données

<!--DHIS2-SECTION-ID:about_data_quality-->

L'application **Qualité des données** contient des outils destinés à valider l'exactitude et la fiabilité des données dans le système. Vous pouvez contrôler la qualité des données à l'aide des règles de validation des contrôles statistiques variés. La qualité des données dispose de dimensions différentes :

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
<td><p>Les données doivent se situer dans la plage normale des données collectées dans cette structure sanitaire. Il ne devrait y avoir aucune différence significative lorsqu'elles sont comparées avec des éléments de connexes.</p></td>
</tr>
<tr class="even">
<td><p>Complétude</p></td>
<td><p>Les données de tous les éléments de données de toutes les unités d'organisation devraient être soumises.</p></td>
</tr>
<tr class="odd">
<td><p>Cohérence</p></td>
<td><p>Les données doivent être cohérentes avec les données saisies au cours des mois et des années précédents, tout en permettant les modifications liées à la réorganisation, l'augmentation de la charge de travail, ..., et compatibles avec d'autres structures sanitaires similaires..</p></td>
</tr>
<tr class="even">
<td><p>Ponctualité</p></td>
<td><p>Toutes les données de toutes les unités d'organisation doivent être soumises à la date convenue.</p></td>
</tr>
</tbody>
</table>

Vous pouvez contrôler la qualité des données de différentes manières. Par exemple :

- Au moment de la saisie des données, DHIS2 peut examiner les données saisies pour vérifier si elles se situent entre les valeurs maximales et minimales de la plage de valeurs de cet élément de données (basé sur les données précédentes enregistrées).

- En définissant des règles de validation, qui peuvent être exécutées une fois que l'utilisateur a terminé la saisie de données. L'utilisateur peut également vérifier les données saisies pour une période particulière et une ou des unité (s) d'organisation par rapport aux règles de validation et afficher les violations de ces règles.

- En analysant les ensembles de données, c'est-à-dire, examiner les écarts dans les données.

- Par triangulation de données, c'est-à-dire en comparant les mêmes données ou indicateurs de différentes sources.

## Analyse des règles de validation

<!--DHIS2-SECTION-ID:validation_rule_analysis-->

### À propos de l'analyse des règles de validation

Une règle de validation est basée sur une expression qui définit une relation entre les valeurs d'éléments de données. L'expression constitue une condition qui doit affirmer que certains critères logiques sont remplis.

L'expression se compose de :

- Un  côté gauche

- Un côté droit

- Un opérateur

Une règle de validation pourrait être : "Les cas suspects de paludisme testés" \>= "Cas de paludisme confirmés".

L'analyse des règles de validation permet de tester les règles de validation par rapport aux données enregistrées dans le système. Les violations de ces règles sont signalées lorsque la condition définie dans l'expression de règle de validation n'est pas remplie, c'est à dire lorsque la condition est fausse.

Vous pouvez configurer une analyse de règle de validation pour envoyer automatiquement les informations relatives aux  violations aux groupes d'utilisateurs sélectionnés. Ces messages sont appelés _notifications de validation_ et sont créés dans l'application **Maintenance**. Les notifications de validation sont envoyées via le système de messagerie interne de DHIS2.

### Déroulement

1.  Dans l'application **Maintenance**, créez des règles de validation et des groupes de règles de validation.

2.  (Facultatif) Dans l'application **Maintenance**, créez des notifications de validation.

3.  Exécutez l'analyse automatiquement ou manuellement des règles de validation.

    - Dans l'application **Administration des données**, vous planifiez l'analyse des règles de validation à exécuter automatiquement pour toutes les règles de validation associées à une ou plusieurs notifications de validation. Après l'exécution de l'analyse, les violations des règles (s'il y en a) s'afficheront dans les notifications de validation envoyées via le système de messagerie interne de   DHIS2.

    - Dans l'application **Qualité des données**, vous exécutez manuellement l'analyse des règles de validation pour celles qui sont sélectionnées. À la fin du processus d'analyse, une liste de violations de règles (s'il y en a) s'affichera.

### Programmez l'éxécution automatique de l'analyse des règles de validation

> **Note**
>
> Seules les règles de validation associées à une ou plusieurs notifications de validation seront prises en compte dans l'analyse des règles de validation. Au cas où il n'y a pas de notification de validation correspondante à une règle de validation, le système n'a nulle part où envoyer les violations de validation.

> **Note**
>
> Lors de l'exécution automatique de l'analyse des règles de validation, les résultats  non encore maintenus seront conservés pendant cette exécution. Les résultats conservés ne sont actuellement accessibles que via l'API.

1.  Vérifiez que vous avez créé toutes les règles de validation, les groupes de règles de validation ainsi que les notifications de validation dont vous avez besoin.

2.  Ouvrez l'application **Administration des données** et cliquez sur **Programmer**.

3.  Si la programmation est active, cliquez sur **Arrêter**.

4.  Dans la section **Monitoring des données**, sélectionnez **Quotidien**.

5.  Cliquez sur **Démarrer**.

### Exécuter  manuellement une analyse de règles de validation

![](resources/images/content/user/dhis2UserManual/Validation_Rule_Analysis.png)

1.  Vérifiez que vous avez créé toutes les règles de validation, les groupes de règles de validation ainsi que les notifications de validation dont vous avez besoin.

2.  Ouvrez l'application **Qualité des données** et cliquez sur **Analyse des règles de validation**.

3.  Sélectionnez une **Date de début** et une **Date de fin**.

4.  Sélectionnez le **Groupe de règles de validation** à inclure dans l'analyse.

    Vous pouvez sélectionner toutes les règles de validation ou toutes les règles de validation d'un seul groupe de règles de validation.

5.  (Facultatif) Sélectionnez **Envoyer les notifications** pour déclencher les notifications de validation.

    > **Note**
    >
    > If you want to send out validation notifications, you must first create them in the **Maintenance** app.

6.  (Facultatif) Sélectionnez _Maintenir les nouveaux résultats_ pour conserver tous les résultats de l'analyse.

7.  Sélectionnez une **unité d'organisation mère**.

8.  Cliquez sur **Valider**.

    La durée du processus d'analyse dépend de la quantité de données à analyser. S'il n'y a aucune violation des règles de validation, vous verrez un message disant _Validation réussie_. Dans le cas où il y a des violations de validation, celles-ci seront présentées sous forme d'une liste.

    ![](resources/images/content/user/dhis2UserManual/Validation_Rule_Analysis_Result.png)

9.  (Facultatif) Cliquez sur l'icône Afficher les détails pour obtenir plus d'informations sur la violation d'une règle de validation. Dans la fenêtre pop-up, vous trouverez des informations sur les éléments de données inclus dans les règles de validation et leur valeurs de données correspondantes. Vous pouvez utiliser ces informations pour identifier la source de la violation de la règle de validation.

10. (Facultatif) Cliquez sur **Télécharger en format PDF**, **Télécharger en format Excel** ou **Télécharger en format CSV** pour télécharger la liste des violations de validation en formats PDF, Excel ou CSV.

### Voir également

- [Gérer les règles de validation](https://docs.dhis2.org/master/en/user/html/manage_validation_rule.html)

- [L'application Administration des données](https://docs.dhis2.org/master/en/user/html/data_admin.html)

## Analyse des aberrations d'écart-type

<!--DHIS2-SECTION-ID:standard_deviation_analysis-->

### À propos de l'analyse des aberrations d'écart-type

L'analyse des valeurs aberrantes d'écart-type identifie les valeurs numériquement distantes du reste des données. L'analyse est basée sur la distribution normale standard. Le système calcule la moyenne, en se basant sur des valeurs entrées depuis le début, pour une combinaison spécifique d'unités d'organisation, d'un élément de donnée, d'une combinaison d'options de catégories et attribuer une option de combinaison. Il est possible que les valeurs aberrantes surviennent par pur hasard, mais il s'agit souvent d'une erreur de mesure ou une distribution à queue lourde qui conduit à des nombres trop élevés. Vous devriez donc vérifier les erreurs de mesure et essayer de les corriger avant de les éliminer de l'analyse.

> **Attention**
>
> Il n'est pas recommandé d'utiliser des outils ou des interprétations qui se basent sur une distribution normale pour les distributions à queue lourde.
>
> Par exemple : l'analyse des valeurs aberrantes de l'écart-type n'est pas un outil approprié si vous vous vous attendez à d'énormes variations saisonnières des données.

### Exécuter une analyse des aberrations d'écart-type

![](resources/images/content/user/dhis2UserManual/Data_Quality_Std_Deviation_Analysis.png)

1.  Ouvrez l'application **Qualité des données** et cliquez sur **Analyse des données atypique par la méthode des déviations standards**.

2.  Sélectionnez **À partir de la date** et **À la date**.

3.  Sélectionnez un ou des ensemble (s) de données.

4.  Sélectionnez une **Unité d'organisation mère**.

    Tous les enfants de l'unité d'organisation seront inclus. L'analyse est faite sur des données brutes "sous" l'unité d'organisation parente, et non sur des données agrégées.

5.  Sélectionnez un nombre d'écarts-types.

    Ceci fait référence au nombre d'écarts-types par rapport à la moyenne autorisée au-dessus duquel les données sont identifiées comme valeurs abérrantes.

6.  Cliquez sur **Démarrer**.

    La durée du processus d'analyse dépend de la quantité des données à analyser. S'il existe des valeurs aberrantes, celles-ci seront présentées sous forme d'une liste.

    ![](resources/images/content/user/data_quality/std-dev-outlier-analysis-result.png)

    Pour chaque valeur aberrante, vous verrez l'élément de donnée, l'unité d'organisation, la période, la valeur minimale, la valeur réelle et la valeur maximale. Les valeurs minimales et maximales renvoient aux valeurs limites dérivées du nombre d'écarts-types sélectionnés pour l'analyse.

> **Astuce**
>
> Cliquez sur l'icône étoile pour marquer une valeur abérrante pour un suivi ultérieur.

### Modifier une valeur abérrante par rapport à un écart-type.

Vous pouvez directement modifier une valeur aberrante dans la liste des résultats d'analyse :

1.  Dans la colonne de valeur, cliquez sur le champ contenant la valeur que vous souhaitez modifier.

2.  Entrez une valeur, puis quittez ce champ soit en cliquant sur Tab ou en cliquant en dehors du champ.

    Le système envoie une alerte si la valeur est toujours hors des valeurs minimales et maximales définies. Cependant, la valeur sera enregistrée quel que soit le cas. La couleur de fond du champ sera rouge si la valeur se situe en dehors de la plage, et verte si elle y est comprise.

## Analyse des valeurs aberrantes minimales et maximales

<!--DHIS2-SECTION-ID:min_max_analysis-->

### À propos de l'analyse des valeurs aberrantes minimales et maximales

Vous pouvez vérifier la qualité des données au moment de la saisie en définissant une plage de valeurs maximales et minimales pour chaque élément de donnée. Vous pouvez les créer manuellement ou les générer automatiquement.

La plage de valeurs générée automatiquement ne convient que pour des données normalement distribuées. DHIS2 déterminera la moyenne arithmétique et l'écart-type de toutes les valeurs pour un élément de donnée, une options de catégorie, une unité d'organisation et attribuer une combinaison. Le système calculera ensuite la plage de valeurs maximales et minimales sur la base du **Facteur d'analyse de l'écart-type des données** spécifié dans l'application **Paramètres Système**.

Pour les données fortement asymétriques ou nulles (comme c'est souvent le cas pour les données agrégées), les valeurs générées automatiquement par DHIS2 ne peuvent pas fournir une plage de valeurs précise. Cela peut entraîner de fausses violations de règles, si vous analysez par exemple des valeurs liées à des maladies saisonnières.

> **Note**
>
> Les plages de valeurs minimales et maximales sont calculées pour toutes les options de combinaison d'attributs pour un élément de donnée particulier, une option de catégories et une combinaison d'unités d'organisation.

### Déroulement

1.  Créer automatiquement ou manuellement une plage de valeurs minimum et maximum.

    - Dans l'application **Administration des données**, vous pouvez générer automatiquement des plages de valeurs

    - Dans l'application **Saisie des données**, vous pouvez définir manuellement les plages de valeurs pour chaque champ.

2.  Dans l'application **Qualité des données**, vous pouvez exécuter **L'analyse des valeurs aberrantes mini-maxi**.

### Configurer une analyse des valeurs aberrantes minimum maximum

#### Créer automatiquement une plage de valeurs minimum maximum

![](resources/images/content/user/data_quality/generate_min_max.png)

> **Note**
>
> Les plages de valeurs maximales et minimales générées automatiquement peuvent être utiles pour de nombreuses applications, mais il est recommandé de vérifier que les données sont normalement distribuées avant l'utilisation de cette fonction.

Vous pouvez générer des plages de valeurs maximales et minimales calculées par l'ensemble de donnée défini dans l'application **Administration des données**. Les nouvelles plages de valeurs remplaceront toutes les valeurs que le système a calculées précédemment.

1.  Configurez le **Facteur d'analyse des valeurs d'écart-type des données**:

    1.  Ouvrez l'application **Paramètres système**, puis cliquez sur **Général**.

    2.  Dans le champ **Facteur d'analyse des valeurs d'écart-type des données**, entrez une valeur.

        Ceci définit le nombre d'écarts-types à utiliser dans l'analyse des valeurs aberrantes. La valeur par défaut est de 2. Une valeur élevée identifiera moins de valeurs aberrantes qu'une valeur faible.

2.  Ouvrez l'application **Administration des données** et cliquez sur **Génération des valeurs mini-maxi**.

3.  Sélectionnez un ou des ensemble (s) de données.

4.  Sélectionnez une **unité d'organisation**.

5.  Cliquez sur **Générer**.

    De nouvelles plages de valeurs maximales minimales sont générées pour tous les éléments de données définis dans les ensembles de données sélectionnés pour toutes les unités d'organisation (y compris les descendants) des unités d'organisation sélectionnées.

#### Créer manuellement une plage de valeurs

![](resources/images/content/user/data_quality/set_min_max_manually.png)

1.  Dans l'application **Saisie de données**, ouvrez un formulaire de saisie.

2.  Double-cliquez sur le champs auquel vous souhaitez affecter une plage de valeurs.

3.  Entrez **la limite Mini** et **la limite Maxi**.

4.  Cliquez sur **Sauvegarder**.

    Si les valeurs que vous entrez ensuite ne sont pas incluses dans la plage des valeurs, la case de saisie prendra une couleur orange.

5.  (Facultatif) Saisissez un commentaire pour expliquer la raison de cette différence. Il peut s'agir par exemple d'un événement qui aurait pu générer un nombre important de clients.

6.  (Facultatif) Cliquez sur **Enregistrer le commentaire**.

> **Astuce**
>
> Cliquez sur l'icône étoile pour marquer la valeur pour un suivi ultérieur.

#### Supprimer une plage de valeurs minimum maximum

![](resources/images/content/user/data_quality/generate_min_max.png)

Vous pouvez supprimer définitivement toutes les plages de valeurs maximales minimales pour des ensembles de données et unités d'organisation sélectionnés dans l'application **Administration des données**.

1.  Ouvrez l'application **Administration des données** et cliquez sur **Génération des valeurs mini-maxi**.

2.  Sélectionnez un ou des ensemble(s) de données.

3.  Sélectionnez une **unité d'organisation**.

4.  Cliquez sur **Supprimer**.

### Exécuter une analyse de valeurs aberrantes minimales et maximales

![](resources/images/content/user/data_quality/min_max_analysis.png)

1.  Vérifiez que vous avez créé des plages de valeurs maximales minimales.

2.  Ouvrez l'application **Qualité des données** et cliquez sur **Analyse des valeurs aberrantes mini-maxi**.

3.  Sélectionnez **À partir de la date** et **À la date**.

4.  Sélectionnez le ou les ensemble(s) de données que vous souhaitez inclure dans l'analyse.

5.  Sélectionnez une **Unité d'organisation mère**.

    Tous les enfants de l'unité d'organisation seront inclus. L'analyse est faite sur des données brutes "sous" l'unité d'organisation parente, et non sur des données agrégées.

6.  Cliquez sur **Démarrer**.

    La durée du processus d'analyse dépend de la quantité de données à analyser. S'il existe des violations de validation, elles seront présentées sous forme d'une liste.

    ![](resources/images/content/user/data_quality/min_max_result.png)

7.  (Facultatif) Cliquez sur **Télécharger au format PDF**, **Télécharger au format Excel** ou **Télécharger au format CSV** pour télécharger la liste des violations de validation dans les formats PDF, Excel ou CSV.

> **Astuce**
>
> Cliquez sur l'icône étoile pour marquer la valeur pour un suivi ultérieur.

## Analyse de suivi

<!--DHIS2-SECTION-ID:follow_up_analysis-->

### À propos de l'analyse de suivi

L'analyse de suivi crée une liste de toutes les valeurs de données marquées pour suivi ultérieur. Vous pouvez marquer une valeur de données pour suivi ultérieur dans l'application **Saisie de données** et dans la liste de résultats que vous obtenez de l'analyse des valeurs aberrantes d'écart-type ou de l'analyse des valeurs aberrantes minimales et maximales.

### Créer une liste de valeurs de données marquées pour un suivi ultérieur

1.  Ouvrez l'application **Qualité des données** et cliquez sur **Analyse de suivi**.

2.  Sélectionnez une **unité d'organisation**.

    La durée du processus d'analyse dépend de la quantité de données à analyser. S'il existe des valeurs de données marquées pour un suivi, elles seront présentées sous forme d'une liste.

    ![](resources/images/content/user/data_quality/data_quality_follow_up.png)

3.  (Facultatif) Cliquez sur **Télécharger au format PDF**, **Télécharger au format Excel** ou **Télécharger au format CSV** pour télécharger la liste des violations de validation dans les formats PDF, Excel ou CSV.

> **Astuce**
>
> Cliquez sur l'icône étoile pour supprimer la balise de suivi de la valeur de donnée.

# Utiliser la fonctionnalité de rapport

<!--DHIS2-SECTION-ID:using_reporting-->

## Fonctionnalité de rapport dans DHIS2

<!--DHIS2-SECTION-ID:using_reporting_intro-->

Le module de rapport dans DHIS2 fournit une gamme d'outils de rapport. Cette section expliquera donc comment utiliser ces outils pour visualiser et analyser les données. Une autre section explique comment configurer ces divers outils de rapport.

**Rapports standards:** Les rapports standards sont élaborés à l'aide de tableaux croisés dynamiques, mais leur conception plus avancée leur confère plus d'ésthétique et de style. Ces rapports peuvent également combiner plusieurs tableaux et graphiques dans le même rapport et peuvent être disponibles sous forme de rapports prédéfinis très pratiques en terme d'utilisation. Ces rapports peuvent être téléchargés au format PDF, ce qui facilite leur impression ainsi que leur partage en mode hors ligne.

**Rapports des ensembles de données:** Les rapports des ensembles de données constituent tout simplement un moyen imprimable d'examiner les formulaires de saisie de données avec des données brutes ou agrégées (sur une période ou un lieu). Le modèle utilisé pour la saisie des données sera également utilisé dans les rapports des ensembles de données. Cela ne fonctionnera que pour les ensembles de données ayant un formulaire de saisie de données personnalisé.

**Tableau de bord:** Le moyen le plus rapide pour visualiser vos données. Le tableau de bord peut afficher jusqu'à quatre graphiques mis à jour ainsi que des raccourcis vers vos rapports, tableaux de rapport et vues cartographiques favoris. Chaque utilisateur peut configurer un tableau de bord personnel.

**Visualiseur de données:** Visualisez vos données sous forme de graphiques et tableaux de données quel que soit le nombre d'indicateurs et d'éléments de données. Plusieurs types de graphiques sont disponibles : colonnes, colonnes empilées, lignes, zones et diagrammes circulaires. Ces graphiques peuvent être sauvegardés pour être facilement récupérés plus tard et peuvent également être épinglés sur votre tableau de bord personnel. Ils peuvent être téléchargés sur votre ordinateur sous forme d'image et de fichiers PDF.

**Rapports de distribution d'unitOrg:** Ces rapports sont générés à partir des informations de l'ensemble de groupes d'unités d'organisation et peut afficher quels types (et combien de chaque type) de structures sanitaires sont situées dans une zone donnée (tout niveau hiérarchique). Ces rapports sont automatiquement générés et remontent les informations dans des tableaux et graphiques, et sont téléchargeables aux formats PDF, Excel et CSV.

**Résumé du taux de rapport:** Ces rapports donnent un bon aperçu du nombre de structures sanitaires ayant soumis leurs données pour un ensemble de données et une période bien définis. Ici, vous pouvez obtenir les chiffres et les pourcentages indiquant le taux de rapport pour tous ou un seul ensemble de données.

**Tableaux croisés dynamiques en ligne :** L'outil de tableaux croisés dynamiques intégré est un outil en ligne permettant d'afficher les données des indicateurs par unité d'organisation et par période dans un tableau croisé dynamique typique. Il permet également de télécharger de grandes quantités de données en mode hors ligne à des fins d'analyse.

**SIG:** Présentez et analysez vos données à l'aide de cartes thématiques. Vous pouvez voir les éléments de données et les indicateurs, et puisque vos unités d'organisation sont identifiées par des coordonnées, vous pouvez explorer la hiérarchie et voir les cartes pour tous les niveaux, des polygones de pays aux structures sanitaires. Reportez-vous au chapitre SIG pour plus de détails. Toutes les informations cartographiques sont intégrées à DHIS2. Tout ce qui vous reste donc à faire, c'est d'enregistrer les coordonnées de vos unités d'organisation et les cartes seront disponibles.

## Utiliser des rapports standards

<!--DHIS2-SECTION-ID:using_reporting_standard_reports-->

Vous pouvez accéder aux rapports disponibles via Apps-\>Rapports. Dans le menu rapports dans la barre gauche, cliquez sur Rapport standard. Une liste de tous les rapports prédéfinis apparaîtra alors dans la fenêtre principale.

![](resources/images/content/user/dhis2UserManual/standard_reports_ke.png)

Vous pouvez exécuter/afficher un rapport en cliquant sur le nom du rapport, puis en sélectionnant "Créer" dans le menu contextuel. S'il y a des paramètres prédéfinis, vous verrez une fenêtre de paramètres de rapport où vous devez renseigner les valeurs nécessaires pour l'unité d'organisation et/ou le mois du rapport, en fonction de ce qui a été défini dans le ou les tableau(x) de rapport sous-jacents. Cliquez sur "Obtenir le rapport" lorsque vous êtes prêt. Le rapport apparaîtra soit directement dans votre navigateur ou sera disponible sous forme de fichier PDF à télécharger, en fonction des paramètres de votre navigateur. Vous pouvez sauvegarder le fichier et le conserver localement sur votre ordinateur pour une utilisation ultérieure.

## Utiliser des rapports des ensembles de données

<!--DHIS2-SECTION-ID:using_reporting_dataset_reports-->

Les rapports des ensembles de données sont des vues de données adaptées à l'impression de l'écran de saisie de données ayant des données brutes ou agrégées. Ils ne sont disponibles que pour les ensembles de données ayant des formulaires de saisie de données personnalisés et non pour les formulaires par défaut et à section.

Vous pouvez accéder aux rapports des ensembles de données depuis Apps-\>Rapports.

Une fenêtre de critères, dans laquelle vous renseignez les détails de votre rapport, apparaît :

**Ensemble de données:** L'ensemble de données que vous souhaitez afficher.

**Période de rapport:** La période réelle pour laquelle vous souhitez récupérer les données. Il peut s'agir de périodes agrégées ou brutes. Cela signifie que vous pouvez demander un rapport trimestriel ou annuel même si l'ensemble de données est collecté mensuellement. Le type de période d'un ensemble de données (fréquence de collecte) est défini dans la maintenance de l'ensemble de données. Sélectionnez d'abord le type de période (Mensuel, Trimestriel, Annuel, etc.) dans le menu déroulant à côté des boutons Précédent et Suivant, puis sélectionnez l'une des périodes disponibles dans la liste déroulante en bas. Utilisez Précédent et Suivant pour sauter d'un an en arrière ou en avant.

**Utiliser les données uniquement pour l'unité sélectionnée :** Utilisez cette option si vous souhaitez avoir un rapport pour une unité d'organisaton ayant des ramifications (enfants), mais seulement si vous avez besoin des données collectées directement par cette unité et non par ses enfants. Si vous souhaitez un rapport agrégé typique pour une unité d'organisation spécifique, ne cochez pas cette option.

**Rapport d'unité d'organisation :** Ici, vous sélectionnez l'unité d'organisation pour laquelle vous souhaitez avoir le rapport. Cela peut s'effectuer à n'importe quel niveau de la hiérarchie, car les données seront automatiquement agrégées jusqu'à ce niveau (si vous ne cochez pas l'option d'en haut).

Lorsque vous avez fini de rentrer les critères du rapport, cliquez sur "Générer". Le rapport apparaîtra sous format HTML et imprimable. Utilisez les fonctions d'impression et d'enregistrement dans le navigateur pour imprimer ou sauvegarder le rapport (sous forme de fichier HTML). Vous pouvez également exporter le rapport de l'ensemble de données aux formats Excel et PDF.

## Utiliser les ressources

<!--DHIS2-SECTION-ID:using_reporting_resources-->

L'outil de ressources vous permet de télécharger les fichiers de votre répertoire local au serveur DHIS et d'ajouter des liens vers d'autres ressources sur Internet via des liens URL. Si le stockage en nuage est configuré pour votre système, les ressources y seront sauvegardées.

Pour créer une nouvelle ressource :

1.  Ouvrez l'application **Rapports** et cliquez sur **Ressource**.

2.  Cliquez sur **AJOUTER**.

3.  Entrez un **Nom**.

4.  Sélectionnez un **Type**: **Télécharger un fichier** ou **URL externe**.

5.  Cliquez sur **Sauvegarder**.

## Utiliser le résumé du taux de génération de rapports

<!--DHIS2-SECTION-ID:using_reporting_reporting_rate_summary-->

Accédez au récapitulatif de taux de génération de rapports à partir du menu Applications-\>Rapports. Les récapitulatifs de taux de rapports indiqueront le nombre d'ensemble de données (formulaires) ayant été soumis par une unité d'organisation et par période. Il existe deux méthodes disponibles pour calculer les taux de génération de rapports (complétude) :

- Basée sur des enregistrements complets de  l'ensemble de données. Un enregistrement complet d'un ensemble de données désigne un utilisateur marquant un formulaire de saisie de données comme complet, généralement en cliquant sur le bouton complet dans l'écran de saisie, indiquant ainsi au système de considérer que le formulaire est terminé. Il s'agit d'une approche subjective pour calculer la complétude.

- Basée sur un élément de donnée obligatoire : vous pouvez définir un nombre quelconque d'éléments de données comme obligatoire dans un ensemble de données. Cela implique que des valeurs de données doivent être impérativement saisies pour tous les éléments de données marqués obligatoires pour que l'ensemble de données soit considéré comme complet. C'est une approche objective du calcul de la complétude.

Le récapitulatif du taux de génération de rapports affichera pour chaque ligne un éventail de mesures spécifiques :

- Rapports réels : indique le nombre de sauvegardes de saisies de données terminées pour l'ensemble de données concerné.

- Rapports prévus : indique le nombre prévu de saisies de données terminées. Ce nombre est basé sur le nombre d'unités d'organisation auxquelles l'ensemble de données a été affecté (activé pour la saisie de données).

- Pourcentage : Le pourcentage de rapports enregistrés comme complets sur le nombre prévu.

- Rapports à temps : identiques aux rapports réels, uniquement les rapports enregistrés comme compléts pendant le nombre maximum de jours suivant la fin de la période de rapport. Ce nombre de jours suivant la période de rapport peut être défini pour chaque ensemble de données dans la gestion des ensembles de données.

- Pourcentage à temps : Identique au pourcentage, uniquement les rapports enregistrés comme complets à l'heure utilisée comme numérateur.

Pour exécuter le rapport, vous pouvez suivre les étapes ci-dessous :

- Sélectionnez une unité d'organisation dans l'arborescence.

- Sélectionnez l'une des méthodes de complétude à utiliser pour calculer les taux de rapport.

  Sélectionnez tous ou un ensemble de données. En sélectionnant tous, vous aurez un rapport avec tous les ensembles de données de l'unité d'organisation sélectionnée. En sélectionnant un seul ensemble de données, vous aurez un rapport complet pour tous les enfants de l'unité d'organisation sélectionnée.

- Sélectionnez un type de période et une période dans la liste des périodes disponibles pour ce type de période. Reculez/avancez d'un an en utilisant les boutons précédent/suivant.

- Le rapport sera alors généré. Modifiez l'un des paramètres ci-dessus et le rapport se mettra automatiquement à jour.

![](resources/images/content/user/dhis2UserManual/completeness_report.png)

## Utiliser des rapports de distribution des unités d'organisation

<!--DHIS2-SECTION-ID:using_reporting_orgunit_distribution_reports-->

Vous pouvez accéder aux rapports de distribution des unités d'organisation à partir du menu à gauche dans Applications-\>Rapports.

Les rapports de distribution d'unités d'organisation montrent comment les unités d'organisation sont distribuées sur diverses propriétés comme le type et la propriété, et ceci par zones géographiques.

Le résultat peut être présenté dans un rapport sous forme de tableau ou dans un graphique.

**Exécuter un rapport:**

Pour générer un rapport, sélectionnez d'abord une unité d'organisation dans l'arborescence des unités d'organisation en haut à gauche. Le rapport sera basé sur les unités d'organisations situées sous l'unité d'organisation sélectionnée. Sélectionnez le groupe d'unités d'organisation que vous souhaitez utiliser. Il s'agit généralement du Type, de la Propriété, Rural/Urbain, mais ils peuvent également être un ensemble de groupes d'unités d'organisation définis par l'utilisateur. Vous pouvez cliquer sur le bouton Générer un rapport pour obtenir la présentation sous forme de tableau ou Générer un graphique pour avoir le même résultat sous forme de graphique. Vous pouvez également le télécharger sous d'autres formats tels que PDF, Excel et CSV.

![](resources/images/content/user/dhis2UserManual/orgunit_report.png)

## Générer des tableaux analytiques

<!--DHIS2-SECTION-ID:generate_analytics_tables-->

DHIS2 génère des tables de base de données que le système utilise ensuite comme base pour diverses fonctions analytiques. Ces tables vous seront également utiles si vous écrivez des rapports SQL avancés. Dans l'application **Rapports**, vous pouvez exécuter les tables immédiatement ou les programmer pour qu'elles soient exécutées à intervalles réguliers. Ceci signifie que vous pouvez actualiser les analyses récentes à la demande et afficher les tableaux croisés dynamiques mis à jour sans attendre que toutes les données des dernières années soient traitées de nouveau.

> **Note**
>
> Vous pouvez également générer les tables via l'interface de programmation Web. Cette tâche est généralement effectuée par un administrateur système.

1.  Ouvrez l'application **Rapports** et cliquez sur **Analyses**.

2.  Sélectionnez les parties du processus d'analyse que vous souhaitez ignorer :

    - **Ignorer la génération des tableaux de ressources**

    - **Ignorer la génération de données agrégées et de données de complétude**

    - **Ignorer la génération de données d'événement**

    - **Ignorer la génération des données d'inscription**

3.  Sélectionnez **Nombre de dernières années de données à inclure**.

4.  Cliquez sur **Démarrer l'exportation**.

# Analyser des données dans des tableaux croisés dynamiques

<!--DHIS2-SECTION-ID:pivot-->

## À propos de l'application de tableaux croisés dynamiques

<!--DHIS2-SECTION-ID:pivot_about-->

Avec l'application **Tableau croisé dynamique**, vous pouvez créer des tableaux croisés dynamiques basés sur des dimensions de données disponibles dans DHIS2. Un tableau croisé dynamique est un outil dynamique pour l'analyse des données qui vous permet de manipuler et d'organiser les données en fonction de leurs dimensions. Voici des exemples de dimensions de données dans DHIS2 :

- la dimension de données elle-même (par exemple éléments de données, indicateurs et     événements)

- périodes (représentant la période de temps pour les données)

- hiérarchie d'organisation (représentant la localisation géographique des données)

À partir de ces dimensions, vous pouvez sélectionner librement les _éléments de dimension_ à inclure dans le tableau croisé dynamique. Vous pouvez créer des dimensions supplémentaires dans DHIS2 avec la fonctionnalité de l'ensemble de groupes. Cela permet d'avoir de différents itinéraires agrégation, tels que l'agrégation par « Partenaire » ou par type de structure sanitaire.

Un tableau croisé dynamique peut organiser des dimensions de données sur des _colonnes_, _lignes_ et sous forme de _filtres_. Lorsque vous placez une dimension de données sur des colonnes, le tableau croisé dynamique affichera une colonne par élément de dimension. Si vous placez plusieurs dimensions de données par colonnes, le tableau croisé dynamique affiche une colonne pour toutes les combinaisons d'éléments dans les dimensions sélectionnées. Quand vous placez une dimension de données sur les lignes, le tableau croisé dynamique affiche une ligne par dimension de façon similaire. Les dimensions que vous sélectionnez comme filtres ne seront pas incluses dans le tableau croisé dynamique, mais agrégeront et filtreront les données du tableau.

> **Astuce**
>
> - Vous devez sélectionner au moins une dimension sur des colonnes ou des lignes.
>
> - Vous devez inclure au moins une période.
>
> - Les ensembles de groupes d'éléments de données et les taux de rapport ne peuvent pas être visualisés dans le même tableau croisé dynamique.
>
> - Un tableau croisé dynamique ne peut contenir plus que le nombre maximal d'enregistrements analytiques spécifiés dans les paramètres système. Le nombre maximum d'enregistrements peut également être limité par la RAM maximale disponible pour votre navigateur. Vous serez averti si votre table dépasse une taille particulière. Lorsque vous recevez ce message d'avertissement, vous pouvez soit annuler la demande ou continuer à construire la table. Envisagez de construire des tables plus petites au lieu d'une table unique qui affiche ensemble tous vos éléments de données et indicateurs.
>
> - L'application **Tableau croisé dynamique** prend en charge l'exploration et la création de périodes et des unités d'organisation. Cela signifie que vous pouvez par exemple explorer des périodes annuelles aux trimestres, mois et semaines à l'intérieur d'un tableau croisé dynamique. Vous pouvez également passer de l'unité d'organisation globale vers les pays, les provinces et les structures sanitaires.

## Créer un tableau croisé dynamique

<!--DHIS2-SECTION-ID:pivot_create-->

1.  Ouvrez l'application **Tableau croisé dynamique**.

2.  Dans le menu de gauche, sélectionnez les éléments de dimension que vous souhaitez analyser. Il peut s'agir par exemple des éléments de données ou des indicateurs.

3.  Cliquez sur **Mise en page** et organisez les dimensions de données sous forme de colonnes, de lignes et de filtres.

    Vous pouvez conserver la sélection par défaut si vous le souhaitez.

4.  Cliquez sur **Mettre à jour**.

Dans cet exemple, les indicateurs sont répertoriés sous forme de colonnes et les périodes sous forme de lignes.

![](resources/images/content/user/pivot_table/basic_pivot.png)

### Sélectionner les éléments de dimension

Le menu de gauche répertorie les sections de toutes les dimensions de données disponibles. Dans chaque section, vous pouvez sélectionner un nombre quelconque d'éléments de dimension. Vous pouvez par exemple ouvrir la section des éléments de données et sélectionner autant d'éléments de données de la liste disponible que vous souhaitez. Vous pouvez sélectionner un élement en le marquant et en cliquant sur la flèche dans l'en-tête de la section ou tout simplement en double-cliquant sur l'élément. Avant de pouvoir utiliser une dimension de données dans votre tableau croisé dynamique, vous devez au moins sélectionner un élément de dimension. Si vous arrangez une dimension sous forme de colonnes ou de lignes mais ne sélectionnez aucun élément de dimension, la dimension sera ignorée.

Vous devez choisir au moins un type de dimension de données pour créer un tableau croisé dynamique. Les types disponibles sont décrits dans ce tableau :

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
<td>Un indicateur est une formule calculée basée sur des éléments de données.</td>
<td>Couverture de la vaccination dans un arrondissement spécifique.</td>
</tr>
<tr class="even">
<td>Éléments de données</td>
<td>Représente le phénomène pour lequel des données ont été saisies.</td>
<td>Nombre de cas de paludisme ; nombre de doses de BCG administrées.</td>
</tr>
<tr class="odd">
<td>Ensemble de données</td>
<td>Une collection d'éléments de données regroupés pour la collecte de données. Vous pouvez sélectionne r:
<ul>
<li><p><strong>Taux de rapport</strong>: le pourcentage de rapports réels par rapport au nombre de rapports prévus</p></li>
<li><p><strong>Taux de rapport à temps</strong>: les taux de rapport basés sur les soumissions de formulaires à temps. Une soumission dans les délais doit avoir lieu dans un délai de quelques jours à compter de la période de rapport.</p></li>
<li><p><strong>Rapports réels</strong>: le nombre réel de rapports</p></li>
<li><p><strong>Rapports réels à temps</strong>: le nombre réels de raports basés sur les soumissions de formulaires à temps. Une soumission dans les délais doit avoir lieu dans un délai de quelques jours à compter de la période de rapport.</p></li>
<li><p><strong>Rapports prévus</strong>: le nombre de rapports prévus en fonction des unités d'organisation auxquelles l'ensemble des données et la fréquence de rapport ont été attribués.</p></li>
</ul></td>
<td>Taux de rapport pour les formulaires de vaccination et de morbidité.</td>
</tr>
<tr class="even">
<td>Éléments de données d'événements</td>
<td>Un élément de données qui fait partie d'un programme représentant des événements qui ont été saisis.</td>
<td>Poids et taille moyens des enfants dans un programme de nutrition.</td>
</tr>
<tr class="odd">
<td>Indicateurs du programme</td>
<td>Une formule calculée basée sur des éléments de données dans un programme représentant des événements.</td>
<td>Indice de masse corporelle moyen pour les enfants participant à un programme de nutrition.</td>
</tr>
</tbody>
</table>

Vous pouvez combiner ces dimensions pour afficher, par exemple, des données agrégées avec des taux de rapport ou des éléments de données d'événement avec les indicateurs du programme, le tout dans les mêmes tableaux croisés dynamiques. Pour la dimension de donnée de"l'élément de donnée", vous pouvez également sélectionner "Totaux" et "Détails", ce qui vous permettra de voir différentes options de combinaison de catégories sur le même tableau croisé dynamique.

Pour la dimension période, vous pouvez choisir d'utiliser des périodes fixes ou périodes relatives. "Janvier 2012" est un exemple de période fixe. Pour sélectionner des périodes fixes, commencez par sélectionner un type de période à partir de la liste des types de période. Vous pouvez ensuite sélectionner des périodes dans la liste des périodes disponibles.

Les périodes relatives sont des périodes relatives à la date du jour. Des exemples de périodes relatives sont entre autres : "Le mois dernier", "Les 12 derniers mois", "Les 5 dernières années". Vous pouvez sélectionner des périodes relatives en cochant les cases correspondantes. Le principal avantage de l'utilisation des périodes relatives réside dans le fait que lorsque vous sauvegardez un tableau croisé dynamique favori, il se mettra à jour au fil du temps avec les données les plus récentes sans que vous ayez besoin de le mettre à jour constamment.

Pour la dimension unité d'organisation, vous pouvez sélectionner un nombre quelconque d'unités d'organisation de la hiérarchie. Pour sélectionner toutes les unités d'organisation sous une unité d'organisation parente spécifique, faites un clic droit et cliquez "Sélectionner tous les enfants". Pour sélectionner manuellement plusieurs unités d'organisation, maintenez la touche **Ctrl** enfoncée tout en cliquant sur les unités d'organisation. Vous pouvez cocher "Unité d'organisation d'utilisateur", "Sous-unités d'utilisateur" ou "Sous-unités x2 d'utilisateur" afin d'insérer dynamiquement la ou les unités d'organisation associée(s) à votre compte d'utilisateur. Ceci est utile lorsque vous enregistrez un tableau croisé dynamique en favori et souhaitez le partager avec d'autres utilisateurs, de manière à ce que les unités d'organisation liées au compte de l'autre utilisateur soient utilisées lors de l'affichage du favori.

![](resources/images/content/user/pivot_table/period_dimension.png)

Les dimensions dynamiques peuvent être constituées d'ensembles de groupes d'unités d'organisation, d'ensembles de groupes d'éléments de données, ou d'ensembles de groupes d'options de catégorie qui ont été configurés avec le type de "Désagrégation". Une fois la configuration des ensembles de groupes terminée, ceux-ci seront disponibles dans les tableaux croisés dynamiques, et pourront être utilisés comme dimension d'analyse supplémentaire, par exemple pour analyser des données agrégées par type d'unité d'organisation ou de partenaire d'exécution. Les dimensions dynamiques fonctionnent de la même manière que les dimensions fixes.

> **Astuce**
>
> Certaines dimensions dynamiques peuvent contenir de nombreux éléments. Cela peut causer des problèmes avec certains navigateurs en raison de la longueur de l'URL lorsque plusieurs membres de la dimension sont sélectionnés. Une case spéciale "Tout" à cocher est disponible pour les dimensions dynamiques, ce qui vous permet d'inclure tous les éléments de dimension disponibles dans votre tableau croisé dynamique, sans avoir à spécifier chaque membre de la dimension.

### Modifier la mise en page du tableau croisé dynamique

Après avoir sélectionné les dimensions des données, il est temps d'organiser votre tableau croisé dynamique. Cliquez sur "Mise en page" dans le menu du haut pour ouvrir l'écran de mise en page. Dans cet écran, vous pouvez positionner vos dimensions de données sous forme de colonnes, de lignes ou de filtres en cliquant et en faisant glisser les dimensions de la liste des dimensions vers les listes respectives de colonnes, de lignes et de filtres. Vous pouvez définir un nombre quelconque de dimensions dans l'une des listes. Par exemple, vous pouvez cliquer sur "Unités d'organisation" et la faire glisser dans la liste des lignes afin de positionner la dimension de l'unité d'organisation sous forme de lignes dans le tableau. Notez que les indicateurs, les éléments de données et les taux de rapport des ensembles de données font partie de la dimension de "donnée" commune et seront affichés ensemble dans le tableau croisé dynamique. Par exemple, après avoir sélectionné des indicateurs et des éléments de données dans le menu de gauche, vous pouvez faire glisser l'"Unité d'organisation" de la liste des dimensions disponibles vers la liste des dimensions de la ligne afin de les disposer en lignes dans le tableau croisé dynamique.

![](resources/images/content/user/pivot_table/table_layout.png)

Après avoir configuré votre tableau croisé dynamique, vous pouvez cliquer sur "Mettre à jour" pour restituer le rendu de votre tableau croisé dynamique, ou cliquez sur "Masquer" pour masquer l'écran de mise en page sans qu'aucune changement ne prenne effet. Dans notre exemple où nous avons sélectionné à la fois la période et la dimension de l'unité d'organisation sous forme de lignes, le tableau croisé dynamique générera toutes les combinaisons d'éléments dans ces dimensions et produira un tableau semblable à ceci :

![](resources/images/content/user/pivot_table/pivot_rows.png)

## Modifier l'affichage de votre tableau croisé dynamique

<!--DHIS2-SECTION-ID:pivot_change_display-->

1.  Ouvrez l'application **Tableau croisé dynamique**.

2.  Créez un nouveau tableau croisé dynamique ou ouvrez un favori.

3.  Cliquez sur **Options**.

4.  Définissez les options selon les besoins.

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

La sauvegarde de vos graphiques ou tableaux croisés dynamiques dans les favoris facilite leur recherche plus tard. Vous pouvez également choisir de les partager avec d'autres utilisateurs en guise d'interprétation ou les afficher sur le tableau de bord.

Vous pouvez visualiser les détails et interprétations de vos favoris dans les applications **Tableau croisé dynamique**, **Visualiseur de données**, **Visualiseur d'évènement**, **Rapports d'évènements**. Utilisez le menu **Favoris** pour gérer vos favoris.

### Ouvrir un favori

1.  Cliquez sur **Favoris** \> **Ouvrir**.

2.  Entrez le nom d'un favori dans le champ de recherche ou cliquez sur **Précédent** et **Suivant** pour afficher les favoris.

3.  Cliquez sur le nom du favori que vous souhaitez ouvrir.

### Sauvegarder un favori

1.  Cliquez sur **Favoris** \> **Sauvegarder**.

2.  Entrez un **Nom** et une **Description** à votre favori.

3.  Cliquez sur **Sauvegarder**.

### Renommer un favori

1.  Cliquez sur **Favoris** \> **Renommer**.

2.  Entrez le nouveau nom que vous souhaitez donner à votre favori.

3.  Cliquez sur **Mettre à jour**.

### Ecrire une interprétation d'un favori

Une interprétation est un lien vers une ressource avec une description des données à une période donnée. Cette information est visible dans l'application **Tableau de bord**. Pour créer une interprétation, vous devez d'abord créer un favori. Si vous avez partagé votre favori avec d'autres personnes, votre interprétation sera visible pour ces personnes.

1.  Cliquez sur **Favoris** \> **Écrire une interprétation**.

2.  Dans le champ de texte, tapez un commentaire, une question ou une interprétation. Vous pouvez retrouver cette information dans l'application **Tableau de bord**.

3.  Recherchez un groupe d'utilisateurs avec lequel vous souhaitez partager votre favori, puis cliquez sur l'icône **+**.

4.  Modifiez les paramètres de partage pour les groupes d'utilisateurs que vous souhaitez modifier.

    - **Lecture et écriture**: Tout le monde peut consulter et éditer l'objet.

    - **Lecture uniquement** : tout le monde peut consulter l'objet.

    - **Aucun** : le public n'aura pas accès à l'objet. Ce paramètre ne s'applique qu'à **Accès public**.

5.  Cliquez sur **Partager**.

### Créer un lien vers un favori

1.  Cliquez sur **Favoris** \> **Créer un lien**.

2.  Sélectionnez l'une des options suivantes :

    - **Ouvrir dans cette application** : Vous obtenez un lien URL pour le favori que vous souhaitez partager avec d'autres utilisateurs via email ou chat.

    - **Ouvrir dans un navigateur web api** : vous obtenez un lien URL de la ressource API. Il s'agit d'une ressource HTML par défaut, mais vous pouvez changer l'extension du fichier à ".json" ou ".csv".

### Supprimer un favori

1.  Cliquez sur **Favoris** \> **Supprimer**.

2.  Cliquez sur **OK**.

### Afficher les interprétations basées sur des périodes relatives

Pour afficher les interprétations basées sur des périodes relatives comme par exemple, des interprétations de l'année dernière :

1.  Ouvrez un favori avec des interprétations.

2.  Cliquez **\>\>\>** en haut à droite de l'espace de travail.

3.  Cliquez sur une interprétation. Votre graphique affiche les données et la date relative en fonction de la date de création de l'interprétation. Pour voir d'autres interprétations, cliquez dessus.

## Télécharger des données à partir d'un tableau croisé dynamique

<!--DHIS2-SECTION-ID:pivot_download_data-->

### Télécharger le format de données du tableau de présentation

Pour télécharger les données depuis le tableau croisé dynamique actuel :

1.  Cliquez sur **Télécharger**.

2.  Sous **Disposition du tableau**, cliquez sur le format que vous souhaitez télécharger : Microsoft Excel, CSV ou HTML.

    Le tableau de données aura une colonne par dimension et contiendra des noms d'éléments de dimension.

    > **Tip**
    >
    > When you download a pivot table with organisation units as rows and you've selected **Show hierarchy** in **Table options**, each organisation unit level is rendered as a separate column. This is useful for example when you create Excel pivot tables on a local computer.

> **Astuce**
>
> Vous pouvez créer un tableau croisé dynamique dans Microsoft Excel à partir du fichier Excel téléchargé.

### Télécharger les formats standards de source de données

Vous pouvez télécharger des données dans le tableau croisé dynamique actuel au format JSON, XML, Excel, et CSV comme formats de données simples avec différents schémas d'identification (ID, Code et Nom). Le document de données utilise des identifiants des éléments de dimension et s'ouvre dans une nouvelle fenêtre du navigateur pour afficher l'URL de la requête à l'API Web dans la barre d'adresse. Ceci est utile pour les développeurs d'applications et d'autres modules clients basés sur l'interface de programmation Web de DHIS2 ou pour ceux qui ont besoin d'une source de données du plan, par exemple pour l'importation pour des fins statistiques.

Pour télécharger les formats standards de source de données :

1.  Cliquez sur **Télécharger**.

2.  Sous **Source de données standards**, cliquez sur le format que vous souhaitez télécharger.

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

### Télécharger un format CSV sans passer par le navigateur Web

Vous pouvez télécharger directement des données au format CSV sans passer par le navigateur web. Cela aide à réduire les contraintes dans les paramètres système qui ont été définis en ce qui concerne le nombre maximal d'enregistrements analytiques. Cela vous permet de télécharger des lots de données beaucoup plus volumineux que ceux que vous pouvez utiliser pour une analyse hors ligne ultérieure.

Pour télécharger des données au format CSV sans passer au préalable par le Web navigateur :

1.  Cliquez sur la flèche à côté de **Mettre à jour**.

    ![](resources/images/content/user/pivot_table/data_dump.png)

2.  Cliquez sur **CSV** pour télécharger le format basé sur la propriété ID.

    Le fichier est téléchargé sur votre ordinateur.

    > **Tip**
    >
    > You can also download CSV format based on **Code** or **Name** property.

## Intégrer un tableau croisé dynamique dans une page Web externe

<!--DHIS2-SECTION-ID:pivot_embed-->

Certaines ressources liées à l'analyse dans DHIS2, telles que les tableaux croisés dynamiques, les graphiques et les cartes, peuvent être intégrées à n'importe quelle page Web à l'aide d'un plug-in. Vous trouverez plus d'informations sur les plug-ins dans le chapitre API Web du _Manuel du développeur DHIS2_.

Pour générer un fragment HTML que vous pouvez utiliser pour afficher le tableau croisé dynamique dans une page web externe :

1.  Cliquez sur **Intégrer**.

2.  Cliquez sur **Sélectionner** pour mettre en évidence le fragment HTML.

## Visualiser les données d'un tableau croisé dynamique sous forme de graphique ou de carte

<!--DHIS2-SECTION-ID:pivot_integration-->

Lorsque vous avez créé un tableau croisé dynamique, vous pouvez basculer entre la visualisation de ce dernier, celles du graphique et de la carte.

### Ouvrir un tableau croisé dynamique sous forme de graphique

1.  Cliquez sur **Graphique** \> **Ouvrir ce tableau sous forme de graphique**.

    Votre tableau croisé dynamique actuel s'ouvre sous forme de graphique.

![](resources/images/content/user/pivot_table/pivot_integration.png)

### Ouvrir une sélection de tableau croisé dynamique sous forme de graphique

Si vous souhaitez visualiser une petite partie de votre tableau croisé dynamique sous forme de graphique, vous pouvez cliquer directement sur une valeur dans le tableau au lieu d'ouvrir l'ensemble du tableau.

1.  Dans le tableau croisé dynamique, cliquez sur une valeur.


    ![](resources/images/content/user/pivot_table/pivot_integration_table.png)

2.  Pour vérifier la sélection, maintenez le curseur de la souris sur **Ouvrir la sélection sous forme de graphique**. Les en-têtes de dimension en surbrillance dans le tableau indiquent les données qui seront visualisées sous forme de graphique.

3.  Cliquez sur **Ouvrir la sélection sous forme de graphique**.

### Ouvrir un tableau croisé dynamique sous forme de carte

1.  Cliquez sur **Graphique** \> **Ouvrir ce tableau sous forme de carte**.

    Votre tableau croisé dynamique actuel s'ouvre sous forme de carte.

### Ouvrir une sélection de tableau croisé dynamique sous forme de carte

1.  Dans le tableau croisé dynamique, cliquez sur une valeur.

    Un menu s'affiche.

2.  Cliquez sur **Ouvrir la sélection sous forme de carte**.

    Votre sélection s'ouvre sous forme de carte.

# Utiliser l'application Visualiseur de données

<!--DHIS2-SECTION-ID:data_vis-->

## À propos de l'application de visualisation de données

<!--DHIS2-SECTION-ID:data_vis_intro-->

![](resources/images/content/user/visualizer/column_chart.png)

Avec l'application **Visualiseur de données**, vous pouvez sélectionner un contenu pour une analyse. Il peut s'agir par exemple d'indicateurs, d'éléments de données, de périodes et d'unités d'organisation. L'application fonctionne correctement même avec une faible connection Internet, et génère des graphiques dans le navigateur Web.

> **Astuce**
>
> - Masquer et afficher les séries de données individuelles dans le graphique en cliquant directement sur l'étiquette de la série dans le graphique. Elles apparaissent soit en haut ou à droite du graphique.
>
> - Cliquez sur la triple flèche gauche du menu central supérieur. Cette action réduit le menu de gauche et donne plus d'espace au graphique. Vous pouvez récupérer le menu en cliquant à nouveau sur le même bouton.

## Créer un graphique

<!--DHIS2-SECTION-ID:datavis_create_chart-->

1.  Ouvrez l'application **Visualiseur de Données** et sélectionnez un type de graphique.

2.  Dans le menu de gauche, sélectionnez les métadonnées que vous souhaitez analyser. Vous devez sélectionner un ou plusieurs éléments parmi les trois dimensions - données (indicateurs, éléments de données, taux de rapport), périodes (relatives, fixes) et unités d'organisation (unités ou groupes).

    > **Note**
    >
    > If you've access to the system settings, you can change the default period type under **General settings \> Default relative period for analysis.**

    **Les 12 derniers mois** de la dimension de la période et de l'unité d'organisation racine sont sélectionnés par défaut.

3.  Cliquez sur **Mise en page** et organisez les dimensions.

    Vous pouvez conserver la sélection par défaut si vous le souhaitez.

4.  Cliquez sur **Mettre à jour**.

## Sélectionnez un type de graphique

<!--DHIS2-SECTION-ID:datavis_chart_types-->

L'application **Visualiseur de données** comporte neuf types de graphiques différents, chacun ayant des caractéristiques spécifiques. Pour sélectionner un type de graphique :

1.  Dans **Type de graphique**, cliquez sur le type de graphique dont vous avez besoin.

    <table>
    <caption>Chart types</caption>
    <colgroup>
    <col style="width: 33%" />
    <col style="width: 66%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th><p>Chart type</p></th>
    <th><p>Description</p></th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td><p>Column chart</p></td>
    <td><p>Displays information as vertical rectangular columns with lengths proportional to the values they represent.</p>
    <p>Useful when you want to, for example, compare performance of different districts.</p></td>
    </tr>
    <tr class="even">
    <td><p>Stacked column chart</p></td>
    <td><p>Displays information as vertical rectangular columns, where bars representing multiple categories are stacked on top of each other.</p>
    <p>Useful when you want to, for example, display trends or sums of related data elements.</p></td>
    </tr>
    <tr class="odd">
    <td><p>Bar chart</p></td>
    <td><p>Same as column chart, only with horizontal bars.</p></td>
    </tr>
    <tr class="even">
    <td><p>Stacked bar chart</p></td>
    <td><p>Same as stacked column chart, only with horizontal bars.</p></td>
    </tr>
    <tr class="odd">
    <td><p>Line chart</p></td>
    <td><p>Displays information as a series of points connected by straight lines. Also referred to as time series.</p>
    <p>Useful when you want to, for example, visualize trends in indicator data over multiple time periods.</p></td>
    </tr>
    <tr class="even">
    <td><p>Area chart</p></td>
    <td><p>Is based on line chart, with the space between the axis and the line filled with colors and the lines stacked on top of each other.</p>
    <p>Useful when you want to compare the trends of related indicators.</p></td>
    </tr>
    <tr class="odd">
    <td><p>Pie chart</p></td>
    <td><p>Circular chart divided into sectors (or slices).</p>
    <p>Useful when you want to, for example, visualize the proportion of data for individual data elements compared to the total sum of all data elements in the chart.</p></td>
    </tr>
    <tr class="even">
    <td><p>Radar chart</p></td>
    <td><p>Displays data on axes starting from the same point. Also known as spider chart.</p></td>
    </tr>
    <tr class="odd">
    <td><p>Speedometer chart</p></td>
    <td><p>Semi-circle chart which displays values out of 100 %. Also referred to as a gauge chart.</p></td>
    </tr>
    </tbody>
    </table>

2.  Cliquez sur **Mettre à jour**.

## Sélectionner les éléments de dimension

<!--DHIS2-SECTION-ID:data_vis_select_dim_items-->

Une dimension fait référence aux éléments décrivant les valeurs de données dans le système. Il y existe trois dimensions principales dans le système :

- Données : cette dimension comprend des éléments de données, des indicateurs et des ensembles de données (taux de rapport), décrivant le phénomène ou l'événement des données.

<!-- end list -->

- Périodes : cette dimension décrit quand l'événement a eu lieu.

<!-- end list -->

- Unités d'organisation : Décrit l'endroit où l'événement a eu lieu.

L'application de visualisation de données vous permet d'utiliser ces dimensions complètement flexibles en termes d'affichage sous forme de séries, de catégories et de filtres.

> **Note**
>
> Vous pouvez sélectionner des éléments de dimension de différentes manières :
>
> - Double-cliquez sur un nom d'élément de dimension.
>
> - Mettez en surbrillance un ou plusieurs éléments de dimension et cliquez sur la flèche simple.
>
> - Pour sélectionner tous les éléments de dimension d'une liste, cliquez sur la double flèche.
>
> - Pour effacer les éléments de dimension, utilisez les flèches ou double-cliquez sur les noms dans la liste **Sélectionnée**.

### Sélectionner des indicateurs

L'application de visualisation de données peut afficher un nombre illimité d'indicateurs et d'éléments de données dans un graphique. Vous pouvez sélectionner les indicateurs et les éléments de données à afficher dans le même graphique, avec leur ordre d'apparition identique à l'ordre dans lequel ils sont sélectionnés.

1.  Cliquez sur **Données** et sélectionnez **Indicateurs**.

2.  Sélectionnez un groupe d'indicateurs.

    Les indicateurs du groupe sélectionné apparaissent dans la liste des **Disponibles**

3.  Sélectionnez un ou plusieurs indicateurs en double-cliquant sur leurs noms.

    L'indicateur passe à la liste **Sélectionnés**.

### Sélectionner des éléments de données

L'application de visualisation de données peut afficher un nombre illimité d'indicateurs et d'éléments de données dans un graphique. Vous pouvez sélectionner les indicateurs et les éléments de données à afficher dans le même graphique, avec leur ordre d'apparition identique à l'ordre dans lequel ils sont sélectionnés.

1.  Cliquez sur **Données** et sélectionnez **Éléments de données**.

2.  Sélectionnez un groupe d'éléments de données.

    Les éléments de données du groupe sélectionné apparaissent dans la liste des **Disponibles**

3.  Sélectionnez un ou plusieurs éléments de données en double-cliquant sur leurs noms.

    L'élément de données passe à la liste **Sélectionnés**.

### Sélectionner des taux de rapport

L'application de visualisation de données peut afficher les taux de rapport uniquement sous forme de graphique, ou avec des indicateurs et des éléments de données. Les taux de rapport sont définis par des ensembles de données.

1.  Cliquez sur **Données** et sélectionnez **taux de rapport**.

    Les taux de rapport apparaissent dans la liste des **Disponibles**

2.  Sélectionnez un ou plusieurs taux de rapport en double-cliquant sur leurs noms.

    L'élément de données passe à la liste **Sélectionnés**.

### Sélectionner des périodes fixes et relatives

1.  Cliquez sur **Périodes**.

2.  Sélectionnez une ou plusieurs périodes.

    Vous pouvez combiner des périodes fixes et des périodes relatives dans le même graphique. Les périodes qui se chevauchent sont filtrées afin qu'elles n'apparaissent qu'une seule fois.

    - Périodes fixes : dans la zone **Sélectionner le type de période**, sélectionnez un type de période. Vous pouvez sélectionner un nombre quelconque de périodes fixes parmi les types de période.

    <!-- end list -->

    - Périodes relatives : dans la partie inférieure de la section **Périodes**, sélectionnez autant de périodes relatives que vous le souhaitez. Les noms sont associés à la date du jour. Cela signifie que si le mois courant est mars et vous sélectionnez **le mois dernier**, le mois de Février sera inclus dans le graphique.

### Sélectionnez les unités d'organisation

1.  Cliquez sur **Unités d'organisation**.

2.  Cliquez sur l'icône de la boîte de vitesse.

3.  Sélectionnez un **Mode de sélection** et une unité d'organisation.

    Il existe trois différents modes de sélection :

    <table>
    <caption>Selection modes</caption>
    <colgroup>
    <col style="width: 38%" />
    <col style="width: 61%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th><p>Selection mode</p></th>
    <th><p>Description</p></th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td><p><strong>Select organisation units</strong></p></td>
    <td><p>Lets you select the organisation units you want to appear in the chart from the organization tree.</p>
    <p>Select <strong>User org unit</strong> to disable the organisation unit tree and only select the organisation unit that is related to your profile.</p>
    <p>Select <strong>User sub-units</strong> to disable the organisation unit tree and only select the sub-units of the organisation unit that is related to your profile.</p>
    <p>Select <strong>User sub-x2-units</strong> to disable the organisation unit tree and only select organisation units two levels down from the organisation unit that is related to your profile.</p>
    <p>This functionality is useful for administrators to create a meaningful &quot;system&quot; favorite. With this option checked all users find their respective organisation unit when they open the favorite.</p></td>
    </tr>
    <tr class="even">
    <td><p><strong>Select levels</strong></p></td>
    <td><p>Lets you select all organisation units at one or more levels, for example national or district level.</p>
    <p>You can also select the parent organisation unit in the tree, which makes it easy to select for example, all facilities inside one or more districts.</p></td>
    </tr>
    <tr class="odd">
    <td><p><strong>Select groups</strong></p></td>
    <td><p>Lets you select all organisation units inside one or several groups and parent organisation units at the same time, for example hospitals or chiefdoms.</p></td>
    </tr>
    </tbody>
    </table>

4.  Cliquez sur **Mettre à jour**.

### Sélectionner des éléments de dimension supplémentaires

En fonction des paramètres définis pour les ensembles de groupes d'unités d'organisation et les ensembles de groupes d'éléments de donnée, vous pouvez sélectionner des éléments de dimension supplémentaires à partir du menu de gauche.

Ici, vous pouvez ajouter des éléments de dimension tels que l'âge, le sexe, etc. sans pour autant les ajouter en tant que sélections d'éléments de données détaillées. Ceci est utile lorsque vous souhaitez séparer ces catégories dans votre analyse.

Les éléments de dimension supplémentaires que vous sélectionnez sont disponibles dans **Mise en page des graphiques** en tant que dimensions.

## Sélectionner une série, une catégorie et un filtre

<!--DHIS2-SECTION-ID:data_vis_series_category_filter-->

![](resources/images/content/user/visualizer/chart_layout.png)

Vous pouvez définir quelle dimension des données vous souhaitez voir apparaître sous forme de série, catégorie et filtre.

1.  Cliquez sur **Mise en page**.

2.  Faites glisser les dimensions et déposez-les dans l'espace approprié. Une seule dimension peut être glissée dans chaque section.

3.  Cliquez sur **Mettre à jour**.

![](resources/images/content/user/visualizer/series_category_filter.png)

- Séries : une série est un ensemble d'éléments continus et liés (périodes ou éléments de données par exemple) que vous souhaitez visualiser afin de souligner les tendances ou les relations dans ses données.

- Catégories : une catégorie est un ensemble d'éléments (des indicateurs ou unités d'organisation par exemple) pour lequel vous souhaitez comparer les données.

- Filtre : La sélection du filtre permettra de filtrer les données affichées dans le graphique. Notez que si vous utilisez la dimension de données comme filtre, vous ne pouvez spécifier qu'un seul indicateur ou ensemble de données en tant qu'élément de filtre, alors qu'avec d'autres types de dimension, vous pouvez sélectionner un nombre quelconque d'éléments.

\</exemple\>

## Modifier l'affichage de votre graphique

<!--DHIS2-SECTION-ID:datavis_change_display-->

1.  Cliquez sur **Options**.

2.  Définissez les options selon vos besoins.

    <table style="width:100%;">
    <caption>Chart options</caption>
    <colgroup>
    <col style="width: 23%" />
    <col style="width: 33%" />
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
    <td><p><strong>Show values</strong></p></td>
    <td><p>Shows the values above the series in the chart.</p></td>
    </tr>
    <tr class="even">
    <td></td>
    <td><p><strong>Use 100% stacked values</strong></p></td>
    <td><p>Displays 100 % stacked values in column charts.</p></td>
    </tr>
    <tr class="odd">
    <td></td>
    <td><p><strong>Use cumulative values</strong></p></td>
    <td><p>Displays cumulative values in line charts.</p></td>
    </tr>
    <tr class="even">
    <td></td>
    <td><p><strong>Hide empty categories</strong></p></td>
    <td><p>Hides the category items with no data from the chart.</p>
    <p><strong>None</strong>: doesn't hide any of the empty categories</p>
    <p><strong>Before first</strong>: hides missing values only before the first value</p>
    <p><strong>After last</strong>: hides missing values only after the last value</p>
    <p><strong>Before first and after last</strong>: hides missing values only before the first value and after the last value</p>
    <p><strong>All</strong>: hides all missing values</p>
    <p>This is useful for example when you create column and bar charts.</p></td>
    </tr>
    <tr class="odd">
    <td></td>
    <td><p><strong>Trend line</strong></p></td>
    <td><p>Displays the trend line which visualizes how your data evolves over time. For example if performance is improving or deteriorating. Useful when periods are selected as category.</p></td>
    </tr>
    <tr class="even">
    <td></td>
    <td><p><strong>Target line value/title</strong></p></td>
    <td><p>Displays a horizontal line at the given domain value. Useful for example when you want to compare your performance to the current target.</p></td>
    </tr>
    <tr class="odd">
    <td></td>
    <td><p><strong>Base line value/title</strong></p></td>
    <td><p>Displays a horizontal line at the given domain value. Useful for example when you want to visualize how your performance has evolved since the beginning of a process.</p></td>
    </tr>
    <tr class="even">
    <td></td>
    <td><p><strong>Sort order</strong></p></td>
    <td><p>Allows you to sort the values on your chart from either low to high or high to low.</p></td>
    </tr>
    <tr class="odd">
    <td></td>
    <td><p><strong>Aggregation type</strong></p></td>
    <td><p>Defines how the data elements or indicators will be aggregated within the chart. Some of the aggregation types are <strong>By data element</strong>, <strong>Count</strong>, <strong>Min</strong> and <strong>Max</strong>.</p></td>
    </tr>
    <tr class="even">
    <td><p><strong>Events</strong></p></td>
    <td><p><strong>Include only completed events</strong></p></td>
    <td><p>Includes only completed events in the aggregation process. This is useful when you want for example to exclude partial events in indicator calculations.</p></td>
    </tr>
    <tr class="odd">
    <td><p><strong>Axes</strong></p></td>
    <td><p><strong>Range axis min/max</strong></p></td>
    <td><p>Defines the maximum and minimum value which will be visible on the range axis.</p></td>
    </tr>
    <tr class="even">
    <td></td>
    <td><p><strong>Range axis tick steps</strong></p></td>
    <td><p>Defines the number of ticks which will be visible on the range axis.</p></td>
    </tr>
    <tr class="odd">
    <td></td>
    <td><p><strong>Range axis decimals</strong></p></td>
    <td><p>Defines the number of decimals which will be used for range axis values.</p></td>
    </tr>
    <tr class="even">
    <td></td>
    <td><p><strong>Range axis title</strong></p></td>
    <td><p>Type a title here to display a label next to the range axis (also referred to as the Y axis). Useful when you want to give context information to the chart, for example about the unit of measure.</p></td>
    </tr>
    <tr class="odd">
    <td></td>
    <td><p><strong>Domain axis title</strong></p></td>
    <td><p>Type a title here to display a label below the domain axis (also referred to as the X axis). Useful when you want to give context information to the chart, for example about the period type.</p></td>
    </tr>
    <tr class="even">
    <td><p><strong>Style</strong></p></td>
    <td><p><strong>No space between columns/bars</strong></p></td>
    <td><p>Removes the space between the columns or bars in the chart. Useful for displaying the chart as an EPI curve.</p></td>
    </tr>
    <tr class="odd">
    <td><p><strong>General</strong></p></td>
    <td><p><strong>Hide chart legend</strong></p></td>
    <td><p>Hides the legend and leaves more room for the chart itself.</p></td>
    </tr>
    <tr class="even">
    <td></td>
    <td><p><strong>Hide chart title</strong></p></td>
    <td><p>Hides the title (default or custom) of your chart.</p></td>
    </tr>
    <tr class="odd">
    <td></td>
    <td><p><strong>Chart title</strong></p></td>
    <td><p>Type a title here to display a custom title above the chart. If you don't enter a title, the default title is displayed.</p></td>
    </tr>
    <tr class="even">
    <td></td>
    <td><p><strong>Hide chart subtitle</strong></p></td>
    <td><p>Hides the subtitle of your chart.</p></td>
    </tr>
    <tr class="odd">
    <td></td>
    <td><p><strong>Chart subtitle</strong></p></td>
    <td><p>Type a subtitle here to display a custom subtitle above the chart but below the title. If you don't enter a subtitle, no subtitle is displayed in the chart.</p></td>
    </tr>
    </tbody>
    </table>

3.  Cliquez sur **Mettre à jour**.

## Gérer les favoris

La sauvegarde de vos graphiques ou tableaux croisés dynamiques dans les favoris facilite leur recherche plus tard. Vous pouvez également choisir de les partager avec d'autres utilisateurs comme interprétation ou les afficher sur le tableau de bord.

Vous pouvez visualiser les détails et interprétations de vos favoris dans les applications **Tableau croisé dynamique**, **Visualiseur de données**, **Visualiseur d'évènements**, **Rapports d'évènements**. Utilisez le menu **Favoris** pour gérer vos favoris.

### Ouvrir un favori

1.  Cliquez sur **Favoris** \> **Ouvrir**.

2.  Entrez le nom d'un favori dans le champ de recherche ou cliquez sur **Précédent** et **Suivant** pour afficher les favoris.

3.  Cliquez sur le nom du favori que vous souhaitez ouvrir.

### Sauvegarder un favori

1.  Cliquez sur **Favoris** \> **Sauvegarder**.

2.  Entrez un **Nom** et une **Description** à votre favori.

3.  Cliquez sur **Sauvegarder**.

### Renommer un favori

1.  Cliquez sur **Favoris** \> **Renommer**.

2.  Entrez le nouveau nom que vous souhaitez donner à votre favori.

3.  Cliquez sur **Mettre à jour**.

### Écrire une interprétation d'un favori

Une interprétation est un lien vers une ressource avec une description des données à une période donnée. Cette information est visible dans l'application **Tableau de bord**. Pour créer une interprétation, vous devez d'abord créer un favori. Si vous avez partagé votre favori avec d'autres personnes, votre interprétation sera visible pour ces personnes.

1.  Cliquez sur **Favoris** \> **Écrire une interprétation**.

2.  Dans le champ de texte, tapez un commentaire, une question ou une interprétation. Vous pouvez retrouver cette information dans l'application **Tableau de bord**.

3.  Recherchez un groupe d'utilisateurs avec lequel vous souhaitez partager votre favori, puis cliquez sur l'icône **+**.

4.  Modifiez les paramètres de partage pour les groupes d'utilisateurs que vous souhaitez modifier.

    - **Lecture et écriture** : Tout le monde peut consulter et éditer l'objet.

    - **Lecture uniquement** : tout le monde peut consulter l'objet.

    - **Aucun** : le public n'aura pas accès à l'objet. Ce paramètre ne s'applique qu'à **Accès public**.

5.  Cliquez sur **Partager**.

### Créer un lien vers un favori

1.  Cliquez sur **Favoris** \> **Créer un lien**.

2.  Sélectionnez l'une des options suivantes :

    - **Ouvrir dans cette application** : Vous obtenez un lien URL pour le favori que vous souhaitez partager avec d'autres utilisateurs via email ou chat.

    - **Ouvrir dans un navigateur web api** : vous obtenez un lien URL de la ressource API. Il s'agit d'une ressource HTML par défaut, mais vous pouvez changer l'extension du fichier à ".json" ou ".csv".

### Supprimer un favori

1.  Cliquez sur **Favoris** \> **Supprimer**.

2.  Cliquez sur **OK**.

### Afficher les interprétations basées sur des périodes relatives

Pour afficher les interprétations pour des périodes relatives, par exemple des interprétations de l'année dernière :

1.  Ouvrez un favori avec des interprétations.

2.  Cliquez **\>\>\>** en haut à droite de l'espace de travail.

3.  Cliquez sur une interprétation. Votre graphique affiche les données et la date relative en fonction de la date de création de l'interprétation. Pour afficher d'autres interprétations, cliquez dessus.

## Télécharger un graphique au format image ou PDF

<!--DHIS2-SECTION-ID:data_vis_save_chart-->

Après avoir créé un graphique, vous pouvez le télécharger localement sur votre ordinateur ordinateur au format image ou PDF.

1.  Cliquez sur **Télécharger**.

2.  Sous **Graphiques**, cliquez sur **Image (.png)** ou **PDF (.pdf)**.

    Le fichier est automatiquement téléchargé sur votre ordinateur. Maintenant, vous pouvez par exemple insérer le fichier image dans un document texte dans le cadre d'un rapport.

## Télécharger les sources de données du graphique

<!--DHIS2-SECTION-ID:data_vis_download_chart_data-->

Vous pouvez télécharger les sources de données d'un graphique aux formats JSON, XML, Excel, CSV, JXRML, ou au format de données brutes SQL avec différents schémas d'identification (ID, code et nom). Le document de données utilise des identifiants des éléments de dimension et ouvre une nouvelle fenêtre de navigateur pour afficher l'URL de la demande à l'API Web dans la barre d'adresse. Ceci est utile pour les développeurs d'applications et d'autres modules clients basés sur l'interface de programmation Web de DHIS2 ou pour ceux qui ont besoin d'une source de données simples, par exemple pour l'importation à des fins statistiques.

Pour télécharger les formats standards de source de données :

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
    <td><p>Downloads Microsoft Excel format based on ID property.</p>
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
    <td><p>Produces a template of a Jasper Report which can be further customized based on your exact needs and used as the basis for a standard report in DHIS 2.</p></td>
    </tr>
    <tr class="even">
    <td><p>Raw data SQL</p></td>
    <td><p>Put the cursor on <strong>Advanced</strong> and click <strong>Raw data SQL</strong></p></td>
    <td><p>Provides the actual SQL statement used to generate the data visualization. You can use it as a data source in a Jasper report, or as the basis for a SQL view.</p></td>
    </tr>
    </tbody>
    </table>

## Intégrer des graphiques dans toute page Web

<!--DHIS2-SECTION-ID:data_vis_embedding-->

Certaines ressources liées à l'analyse dans DHIS2, telles que les tableaux croisés dynamiques, les graphiques et les cartes, peuvent être intégrées à n'importe quelle page Web à l'aide d'un plug-in. Vous trouverez plus d'informations sur les plug-ins dans le chapitre API Web du _Manuel du développeur DHIS2_.

Pour générer un fragment HTML que vous pouvez utiliser pour l'affichage du graphique dans une page web externe :

1.  Cliquez sur **Partager** \> **Intégrer dans une page Web**.

    La fenêtre **Intégrer dans une page Web** s'ouvre.

2.  Cliquez sur **Sélectionner** pour mettre en évidence le fragment HTML.

## Ouvrir un graphique sous forme de tableau croisé dynamique ou de carte

- Ouvrez un **Graphique** et cliquez sur **Graphique** ou sur **Carte**.

# Utiliser l'application SIG

<!--DHIS2-SECTION-ID:using_gis-->

## À propos de l'application SIG

<!--DHIS2-SECTION-ID:about_gis-->

Avec l'application SIG, vous pouvez superposer plusieurs couches et choisir parmi différentes cartes de base. Vous pouvez créer des cartes thématiques de zones et de points, visualiser les structures sanitaires en fonction des classifications et visualiser les bassins versants pour chaque infrastructure. Vous pouvez marquer les zones et les points, effectuer une recherche et filtrer en utilisant divers critères. Vous pouvez également déplacer des points et définir des emplacements à la volée. Les cartes peuvent être enregistrées comme favorites et partagées avec d'autres personnes.

> **Note**
>
> Pour utiliser des légendes prédéfinies dans l'application **SIG**, vous devez tout d'abord les créer dans l'application **Maintenance**.

![](resources/images/content/user/gis/gis_main.png)

- Les icônes en haut à gauche de l'espace de travail représentent les couches de la carte. Ils représentent le point de départ de l'application **SIG**.

- Le panneau à droite de l’espace de travail représente un aperçu des couches :

  - La carte de base par défaut est OSM Light. Si vous êtes en ligne, vous pouvez également  voir OpenStreetMap, Google Streets et Google hybride. Vous pouvez utiliser ces cartes comme cartes de base et couches. Basculez entre elles en sélectionnant ou en effaçant la case à cocher.

  - Si vous souhaitez augmenter ou réduire l'opacité d'un calque, utilisez les flèches haut et bas du calque sélectionné.

  - Utilisez les légendes de la carte lorsque vous créez une carte thématique. Une légende explique le lien entre les valeurs et les couleurs sur votre carte.

<!-- end list -->

- **Zoom sur le contenu** ajuste automatiquement le niveau de zoom et la position centrale de la carte pour mettre en évidence les données.

- Pour afficher des informations sur un événement, cliquez simplement dessus.

- Faites un clique droit pour afficher la longitude et la latitude de la carte.

## Créer une nouvelle carte thématique

<!--DHIS2-SECTION-ID:using_gis_create_map-->

Vous pouvez utiliser quatre couches vectorielles pour créer une carte thématique. Les étapes pour créer une nouvelle carte thématique sont les suivantes :

1.  Dans le menu **Applications**, cliquez sur **SIG**.

    La fenêtre **DHIS2 SIG** s'ouvre

2.  Dans le menu du haut, cliquez sur une couche que vous souhaitez ajouter à la carte.

    - Couche d'évènement

    - Couche d'installation

    - Couche frontière

    - Couche thématique 1 - 4

3.  Cliquez sur **Modifier la couche** et sélectionnez les paramètres dont vous avez besoin.

4.  Cliquez sur **Mettre à jour**.

## Gérer les couches d'événement

<!--DHIS2-SECTION-ID:using_gis_event_layer-->

La couche d'événements affiche l'emplacement géographique des événements enregistrés dans le tracker de DHIS2. À condition que les événements aient des coordonnées GPS associées, vous pouvez utiliser cette couche pour passer des données agrégées affichées dans les couches thématiques aux évènements sous-jacents.

Vous pouvez également afficher des événements agrégés sur le site ou au niveau de la frontière. Vous faites cela à partir d'une couche thématique en utilisant des objets de données d'événement. Ceci est utile lorsque vous n’avez que les coordonnées de l’unité d'organisation sous laquelle sont enregistrés les événements.

![](resources/images/content/user/gis/gis_event_layer.png)

### Créer ou modifier une couche d'évènement

<!--DHIS2-SECTION-ID:gis_create_event_layer-->

1.  Dans le menu du haut, cliquez sur l'icône de la couche d'événement.

2.  Cliquez sur **Modifier la couche**.

3.  Sélectionnez un programme, puis sélectionnez une étape du programme.

    Si une seule étape est disponible pour le programme, elle est automatiquement sélectionnée. Une liste d'éléments de données et d'attributs apparaîtra dans le panneau des **Élements de données disponibles**.

4.  Sélectionnez un élément de donnée ou un attribut de cette liste dans le cadre de votre requête.

    - Pour sélectionner, vous pouvez double-cliquer sur un élément de donnée ou (multiples) sélectionner et utiliser le bouton à flèche unique vers le bas. Le bouton à double flèche permet de sélectionner tous les éléments de données de la liste. Tous les éléments de données sélectionnés auront leur propre ligne dans les **Éléments de données sélectionnés**.

    - Pour les données de type _texte_, vous aurez deux choix : **Contains** implique que la requête correspond à toutes les valeurs qui contiennent la valeur de votre recherche, et **est exact** implique que seules les valeurs qui sont complètement identiques à la valeur de votre requête seront renvoyées.

    - Pour les données de type _ensemble d’options_, vous pouvez sélectionner les options de la liste déroulante en utilisant la flèche vers le bas ou en commençant à saisir directement dans la case pour filtrer les options.

5.  Dans la section **Périodes**, sélectionnez la période pendant laquelle les événements ont eu lieu. Vous pouvez sélectionner une période fixe ou une période relative.

    - Période fixe : Dans le champ **Période**, sélectionnez **Dates de début /de fin** et remplissez une date de début et une date de fin.

    - Période relative : Dans le champ **Période**, sélectionnez l’une des périodes relatives. Par exemple **Ce mois** ou **L'année dernière**.

6.  Dans la section **Unités d'organisation**, sélectionnez les unités d'organisation que vous souhaitez inclure dans la requête.

7.  Dans la section **Options**, vous pouvez :

    - Sélectionnez une valeur dans le champ **Coordonnées** pour les positions indiquées sur la carte. Par défaut, la "localisation de l'évènement" est sélectionnée. En fonction des éléments de données ou des attributs appartenant à un programme, d'autres coordonnées telles que "Position du ménage" sont disponibles.

      ![](resources/images/content/user/gis/gis_coordinates.png)

    - Sélectionnez ou désélectionnez **Regrouper** pour regrouper les évènements à proximité.

    - Allez à la section **Style** pour sélectionner une couleur pour les points du faisceau ou changer le rayon des faisceaux (entre 1 et 20).

    **Regroupement** si vous souhaitez grouper des évènements à proximité et modifier le style des points du faisceau.

8.  Cliquez sur **Mettre à jour**.

### Désactiver le regroupement

Les événements sont regroupés par défaut dans une carte. Vous pouvez désactiver cette fonction pour afficher tous les événements séparément.

1.  Dans le menu du haut, cliquez sur l'icône de la couche d'évènement.

2.  Cliquez sur **Modifier la couche**.

3.  Cliquez sur **Options**.

4.  Décochez la case **Groupes d'évènements à proximité**.

5.  Cliquez sur **Mettre à jour**.

### Modifier le style de regroupement

1.  Dans le menu du haut, cliquez sur l'icône de la couche d'évènement.

2.  Cliquez sur **Modifier la couche**.

3.  Dans la section **Options**, modifiez la **Couleur des points** et le **Rayon des Points**.

4.  Cliquez sur **Mettre à jour**.

### Modifier les informations dans les fenêtres pop-up de l'événement

Pour les événements contenus dans une carte à grappes, vous pouvez modifier les informations affichées dans la fenêtre pop-up de l'événement.

![](resources/images/content/user/gis/gis_eventlayer_eventinfopopup.png)

1.  Ouvrez l'application **Programmes / Attributs**.

2.  Cliquez sur **Programme**.

3.  Cliquez sur le programme que vous souhaitez modifier et sélectionnez **Afficher les étapes du programme**.

4.  Cliquez sur le nom de l’étape du programme et sélectionnez **Modifier**.

5.  Faites défiler jusqu'à la section **Éléments de données sélectionnés**.

6.  Pour chaque élément de données que vous souhaitez afficher dans la fenêtre pop-up, sélectionnez **Afficher dans les rapports**.

7.  Cliquez sur **Mettre à jour**.

## Effacer la couche d'évènement

Pour effacer toutes les données d'une carte :

1.  Dans le menu du haut, cliquez sur l'icône de la couche d'évènement.

2.  Cliquez sur **Supprimer**.

## Gérer les couches d'infrastructures

<!--DHIS2-SECTION-ID:using_gis_facility_layer-->

La couche d'infrastrcture affiche des icônes représentant les types de structures sanitaires. Les polygones n'apparaissent pas sur la carte. Assurez-vous donc de sélectionner un niveau de l'unité d'organisation incluant des structures sanitaires.

Un polygone est une zone fermée sur une carte représentant un pays, un quartier ou un parc. Dans le SIG, un polygone est une forme définie par un ou plusieurs anneaux, l'anneau étant un chemin qui commence et se termine au même point.

![](resources/images/content/user/gis/gis_facility_layer.png)

### Créer ou modifier une couche d'infrastructure

1.  Dans le menu du haut, cliquez sur l'icône de la couche d'installation.

2.  Cliquez sur **Modifier la couche**.

3.  Dans la section **Icônes de groupe d’unités d’organisation**, sélectionnez un **Ensemble de groupes**.

4.  Dans la section **Unités d'organisation**, sélectionnez un ou plusieurs unités d'organisation.

5.  Dans la section **Options**, indiquez si vous souhaitez afficher les libellés et définissez éventuellement leur contenu.

6.  Dans la section **Options**, indiquez si vous souhaitez afficher un cercle avec un certain rayon autour de chaque infrastructure.

7.  Cliquez sur **Mettre à jour**.

### Rechercher une unité d'organisation

Pour localiser une unité d'organisation sur la carte :

1.  Dans le menu du haut, cliquez sur l'icône de la couche d'infrastructures.

2.  Cliquez sur **Rechercher**.

    La boîte de dialogue **Recherche d'unité d'organisation** s'ouvre.

3.  Dans le champ de texte, tapez le nom de l'unité d'organisation que vous recherchez ou cliquez sur un nom dans la liste.

    L'unité d'organisation est mise en surbrillance sur la carte.

### Supprimer une couche d'infrastructure

Pour supprimer toutes les données d'une couche :

1.  Dans le menu du haut, cliquez sur l'icône de la couche d'infrastructure.

2.  Cliquez sur **Supprimer**.

## Gérer les structures sanitaires dans une couche

Vous pouvez avoir des infrastructures dans les couches **Infrastructure**, **Frontière** et **Thématique**

### Relocaliser une infrastructure

1.  Faites un clique droit sur une infrastructure et cliquez sur **Relocaliser**.

2.  Placez le curseur dans le nouvel emplacement.

    Les nouvelles coordonnées sont stockées de manière permanente. Cette action ne peut pas être annulée.

### Permuter la longitude et la latitude d'une infrastructure

1.  Faites un clique droit sur une infrastructure et cliquez sur **Permuter la longitude/latitude**.

    Ceci est utile au cas où un utilisateur inverserait les coordonnées de latitude et de longitude lors de la création de l'unité d'organisation.

### Afficher les informations de l'infrastructure

Vous pouvez afficher les informations sur l'unité d'organisation définies par l'administrateur comme suit :

<table>
<caption> Afficher les informations de l'unité d'organisation </caption>
<colgroup>
<col width="40%"/>
<col width="59%"/>
</colgroup>
<thead>
<trclass ="header">
<th>Fonction</th>
<th>Action</th>
</tr>
</thead>
<tbody>
<trclass="impair">
<td><p> Afficher les informations pour la période en cours </p></td>
<td><ol style="list-style-type: decimal">
<li><p> Cliquez sur une infrastructure.</p></li>
</ol></td>
</tr>
<trclass="even">
<td><p> Afficher les informations pour une période sélectionnée </p></td>
<td><ol style="list-style-type: decimal">
<li><p> Faites un clique droit sur une infrastructure, puis cliquez sur <strong> Afficher les informations </strong>.</p> </li>
<li><p> Dans la section <strong> Données de l'infrastructure </strong>, sélectionnez une période. </p> </li>
</ol>
<blockquote>
<p><strong> Remarque </strong></p>
<p> Vous configurez les données d'infrastructure affichées dans l'application <strong> Paramètres système </strong>.</p>
</blockquote></td>
</tr>
</tbody>
</table>

## Gérer les couches thématiques 1- 4

<!--DHIS2-SECTION-ID:using_gis_thematic_layer-->

Il existe quatre couches thématiques dans l'application SIG. Avec ces panneaux de couches, vous pouvez utiliser vos données pour la cartographie thématique. Sélectionnez votre combinaison indicateur/élément de donnée et période, ensuite le niveau d'unité d'organisation. Si votre base de données contient des coordonnées et des valeurs de données agrégées pour ces unités d’organisation, elles apparaîtront sur la carte.

> **Note**
>
> Vous devez actualiser les tableaux analytiques de DHIS2 pour que les valeurs des données agrégées soient disponibles.

![](resources/images/content/user/gis/gis_thematic_mapping.png)

### Créer ou modifier une couche thématique

1.  Dans le menu supérieur, cliquez sur l’icône de la couche thématique que vous souhaitez créer ou modifier.

2.  Cliquez sur **Modifier la couche**.

3.  Dans la section **Données et périodes**, sélectionnez les données et les périodes que vous souhaitez afficher.

4.  Dans la section **Unités d'organisation**, sélectionnez un ou plusieurs unités d'organisation.

5.  Dans la section **Options**, allez à **Type de légende** et sélectionnez Automatique ou Prédéfini.

    - Les types de légende automatiques signifient que l'application créera une légende définie pour vous en fonction de votre méthode quoi, du nombre de classes, des couleurs faibles et foncées que vous sélectionnez. La méthode fait allusion à la taille des classes de la légende.

      Si vous réglez sur intervalles égaux, ce sera « valeur de carte la plus élevée - valeur de carte la plus faible / nombre de classes ».

      Si vous définissez sur Égalité de comptes, le créateur de la légende essaiera de distribuer uniformément les unités d'organisation.

      La légende apparaît sous forme de gradation uniforme de la couleur de départ à la couleur finale.

    - Si vous avez des infrastructures dans votre couche thématique, vous pouvez définir le rayon pour les valeurs maximales et minimales en modifiant les valeurs dans les cases **Couleur faible/taille** et **Taille couleur foncée**.

6.  Dans la section **Options**, indiquez si vous souhaitez afficher les libellés et définissez éventuellement leur contenu.

7.  Dans le panneau Options, sélectionnez un type d'agrégation. Voir également [Aggregation operators](https://dhis2.github.io/dhis2-docs/master/en/user/html/ch10s05.html#d0e8082).

8.  Cliquez sur **Mettre à jour**.

### Filtrer les valeurs dans une couche thématique

Le menu des couches thématiques 1-4 dispose d'une option **Filtre** en plus des options du menu des couches limites. Ceci permet d’appliquer des filtres de valeur aux unités d'organisation sur la carte. Le filtre est supprimé lorsque vous fermez la fenêtre de filtre.

Pour filtrer les valeurs dans une couche thématique :

1.  Dans le menu du haut, cliquez sur l’icône de la couche thématique que vous souhaitez créer ou modifier.

2.  Cliquez sur **Filtre ...**.

3.  Modifiez les valeurs **Supérieure à** et **Et/ou inférieure à**.

4.  Cliquez sur **Mettre à jour**.

### Rechercher une unité d'organisation

Pour localiser une unité d'organisation dans une couche thématique :

1.  Dans le menu supérieur, cliquez sur l'icône de couche thématique.

2.  Cliquez sur **Rechercher**.

    La boîte de dialogue **Recherche d'unité d'organisation** s'ouvre.

3.  Dans le champ de texte, saisissez le nom de l'unité d'organisation que vous recherchez ou cliquez sur un nom dans la liste.

    L'unité d'organisation est mise en surbrillance sur la carte.

### Naviguer entre les hiérarchies d'organisation

Lorsqu'il y a des unités d'organisation visibles sur la carte, vous pouvez facilement naviguer de haut en bas dans la hiérarchie sans utiliser l'interface utilisateur niveau/parent

1.  Faites un clique droit sur l'une des unités d'organisation.

2.  Sélectionnez **Accéder au niveau supérieur** ou **Accéder au niveau inférieur**.

    L’option d’exploration est désactivée si vous vous trouvez au niveau le plus bas ou s'il n'y a pas de coordonnées disponibles au niveau inférieur. Vice versa pour l'option d'exploration au niveau supérieur.

### Supprimer la couche thématique

Pour effacer toutes les données d'une couche thématique :

1.  Dans le menu supérieur, cliquez sur l'icône couche thématique.

2.  Cliquez sur **Supprimer**.

## Gérer les couches frontières

La couche frontière affiche les bordures et les emplacements de votre unité d'organisation. Cette couche est particulièrement utile si vous êtes hors ligne et n'avez pas accès aux cartes d'arrière-plan.

![](resources/images/content/user/gis/gis_bound_layers.png)

### Créer ou modifier des couches frontières

1.  Dans le menu en haut à gauche, cliquez sur l'icône de la couche frontière.

2.  Cliquez sur **Modifier la couche**.

3.  Dans la section **Unités d'organisation**, sélectionnez une ou plusieurs unités d'organisation.

    Vous pouvez sélectionner les unités d'organisation que vous souhaitez afficher sur la carte en sélectionnant un niveau et un parent. Cela signifie "afficher toutes les unités organisation de ce niveau c'est à dire les enfants de ce parent ".

4.  Dans la section **Options**, indiquez si vous souhaitez afficher les libellés et définissez éventuellement leur contenu.

5.  Cliquez sur **Mettre à jour**.

### Rechercher une unité d'organisation

Pour localiser une unité d'organisation sur une carte :

1.  Dans le menu supérieur, cliquez sur l'icône de la couche frontière.

2.  Cliquez sur **Rechercher**.

    La boîte de dialogue **Recherche d'unité d'organisation** s'ouvre.

3.  Dans le champ de texte, saisissez le nom de l'unité d'organisation que vous recherchez ou cliquez sur un nom dans la liste.

    L'unité d'organisation est mise en surbrillance sur la carte.

### Naviguer entre les hiérarchies d'organisation

Lorsqu'il y a des unités d'organisation visibles sur la carte, vous pouvez facilement naviguer de haut en bas dans la hiérarchie sans utiliser l'interface utilisateur niveau/parent

1.  Faites un clique droit sur l'une des unités d'organisation.

2.  Sélectionnez **Accéder au niveau supérieur** ou **Accéder au niveau inférieur**.

    L’option d’exploration est désactivée si vous vous trouvez au niveau le plus bas ou s'il n'y a pas de coordonnées disponibles au niveau inférieur. Vice versa pour l'option d'exploration au niveau supérieur.

### Supprimer une couche frontière

Pour effacer toutes les données d'une couche frontière :

1.  Dans le menu supérieur, cliquez sur l'icône de la couche frontière.

2.  Cliquez sur **Supprimer**.

## Gérer la couche Earth Engine

<!--DHIS2-SECTION-ID:using_gis_gee-->

![](resources/images/content/user/gis/gis_earth_eng_layer.png)

La couche Google Earth Engine vous permet d'afficher des images satellites et ensembles de données géospatiales du vaste catalogue de Google. Cette couche est utile lorsqu'elle est combinée avec des couches thématiques et d'évènements pour améliorer l'analyse. Les couches compatibles sont les suivantes :

- Altitude par rapport au niveau de la mer.

- Lumières nocturnes : lumières des villes et autres sites représentant un éclairage persistant, y compris les torchères (à partir de 2013).

- Densité de population : population dans des cellules de grille de 100 x 100 m (à partir de 2010)

- La température, la population et la couverture terrestre à n'importe quel endroit.

  Faites un clique droit sur les couches pour afficher plus d'informations, par exemple la température et l'altitude.

\</listitem\> \</itemizedlist\>

### Créer ou modifier une couche Earth Engine

1.  Dans le menu supérieur, cliquez sur l'icône de couche **Google Earth Engine**.

2.  Sélectionnez un ensemble de données, par exemple "Altitude".

3.  Sélectionnez **Valeur minimale/maximale**.

    La signification de ces valeurs dépend de l'ensemble de données que vous avez choisi.

4.  Sélectionnez une **Échelle de couleurs**.

5.  Sélectionnez le nombre d' **Étapes**.

    Le nombre d'étapes signifie le nombre de couleurs distinctes dans l'échelle de couleurs.

6.  Cliquez sur **Mettre à jour**.

## Ajouter des couches de carte externes

<!--DHIS2-SECTION-ID:using_gis_external_map_layers-->

1.  Dans le menu supérieur, cliquez sur l'icône **Couche externe**.

2.  Cliquez sur **Éditer** pour ajouter une nouvelle couche.

3.  Sélectionnez une couche de la liste.

    ![](resources/images/content/user/gis/gis_external_layers1.png)

4.  Cliquez sur **Mettre à jour**.

    Pour supprimer une couche, cliquez sur **Supprimer**.

    Pour masquer une couche, allez au volet du menu **Empilage de couches/Opacité** et décochez la case **Couche externe**.

Voici quelques exemples de couches externes :

![](resources/images/content/user/gis/gis_administrative_boundaries.png)

![](resources/images/content/user/gis/gis_aerial_imagery.png)

![](resources/images/content/user/gis/gis_black_basemap_and_nighttime_lights.png)

![](resources/images/content/user/gis/gis_world_time_zones.png)

> **Note**
>
> Pour définir des couches externes, reportez-vous à [Documentation de l'Application de maintenance](https://dhis2.github.io/dhis2-docs/master/en/user/html/manage_ext_maplayer.html).

## Gérer les cartes favorites

<!--DHIS2-SECTION-ID:using_gis_favorites-->

![](resources/images/content/user/gis/gis_favorites.png)

L'enregistrement de vos cartes en tant que favoris facilite leur restauration ultérieure. Cela vous vous permet également de les partager avec d'autres utilisateurs sous forme d'interprétation ou de les mettre sur le tableau de bord. Vous pouvez enregistrer tous les types de couches en tant que favoris. Un favori s'ouvre toujours avec la carte de fond par défaut.

### Enregistrer une carte en tant que favori

Lorsque vous avez créé une carte, il est pratique de l'enregistrer en tant que favori :

1.  Cliquez sur **Favoris**.

    La boîte de dialogue **Gérer les favoris** s'ouvre.

2.  Cliquez sur **AJOUTER**.

    La boîte de dialogue **Enregistrer comme nouveau favori** s'ouvre.

3.  Dans le champ de texte, saisissez le nom que vous voulez donner à votre carte.

4.  Cliquez sur **CRÉER**.

    Votre favori est ajouté à la liste.

### Ouvrir un favori

1.  Cliquez sur **Favoris**.

    La boîte de dialogue **Gérer les favoris** s'ouvre.

2.  Recherchez le favori que vous souhaitez ouvrir. Vous pouvez soit utiliser **précédent** ou **Suivant** ou le champ de recherche pour trouver un favori préalablement enregistré. La liste est filtrée chaque fois que vous entrez un caractère.

3.  Cliquez sur le nom pour ouvrir ce favori.

### Renommer un favori

1.  Cliquez sur **Favoris**.

    La boîte de dialogue **Gérer les favoris** s'ouvre.

2.  Recherchez le favori que vous souhaitez renommer.

    Vous pouvez soit utiliser **Précédent** et **Suivant** ou le champ de recherche pour trouver un favori enregistré.

3.  Cliquez sur l'icône grise à côté du nom du favori pour renommer.

    La boîte de dialogue **Renommer favori** s'ouvre.

4.  Saisissez le nouveau nom et cliquez sur **Mettre à jour**.

### Remplacer un favori

Pour enregistrer la carte actuelle dans un favori existant (écraser) :

1.  Cliquez sur **Favoris**.

    La boîte de dialogue **Gérer les favoris** s'ouvre.

2.  Recherchez le favori que vous souhaitez écraser.

    Vous pouvez soit utiliser **Précédent** ou **Suivant** soit le champ de recherche pour trouver un favori enregistré.

3.  Cliquez sur l'icône de remplacement verte à côté du nom du favori.

4.  Cliquez sur **OK** pour confirmer que vous souhaitez écraser le favori.

### Partager l'interprétation d'une carte

<!--DHIS2-SECTION-ID:gisInterpretation-->

Pour certaines ressources liées à l'analyse dans DHIS2, vous pouvez partager des données d'interprétation. Une interprétation est un lien vers la ressource pertinente avec un texte donnant une information sur les données.

Pour créer une interprétation d’une carte et la partager avec tous les utilisateurs du système :

1.  Ouvrez ou créez une carte favorite.

2.  Cliquez sur **Partager** \> **Écrire une interprétation**.

    La boîte de dialogue **Écrire interprétation** s'ouvre.

3.  Dans le champ de texte, saisissez un commentaire, une question ou une interprétation.

4.  Cliquez sur **Partager**.

    La boîte de dialogue se ferme automatiquement. Vous pouvez visualiser l'interprétation sur le **Tableau de bord**.

### Modifier les paramètres de partage d'un favori

Après avoir créé une carte et l'avoir enregistrée en tant que document favori, vous pouvez la partager avec tous les utilisateurs ou un groupe d'utilisateurs. Pour modifier les paramètres de partage :

1.  Cliquez sur **Favoris**.

2.  Recherchez le favori que vous souhaitez partager.

    Vous pouvez utiliser soit **Précédent** ou **Suivant** soit le champ de recherche pour trouver un favori enregistré.

3.  Cliquez sur l'icône de partage bleue à côté du nom du favori.

4.  Dans la zone de texte, saisissez le nom du groupe d'utilisateurs avec qui vous souhaitez partager votre favori et cliquez sur l'icône **+**.

    Le groupe d'utilisateurs choisi est donc ajouté à la liste des destinataires.

    Répétez cette étape pour ajouter plus de groupes d'utilisateurs.

5.  Si vous souhaitez autoriser l'accès externe, cochez la case correspondante.

6.  Pour chaque groupe d'utilisateurs, choisissez un paramètre d'accès. Les options possibles sont les suivantes :

    - Aucun

    - Lecture seule

    - Lecture et écriture

7.  Cliquez sur **Sauvegarder**.

### Supprimer un favori

1.  Cliquez sur **Favoris**.

    La boîte de dialogue **Gérer les favoris** s'ouvre.

2.  Recherchez le favori que vous souhaitez supprimer.

    Vous pouvez utiliser soit **Précédent** ou **Suivant** soit le champ de recherche pour trouver un favori enregistré.

3.  Cliquez sur l'icône de suppresion rouge à coté du nom du favori.

4.  Cliquez sur **OK** pour confirmer que vous souhaitez supprimer la favori.

## Enregistrer une carte en tant qu'image

<!--DHIS2-SECTION-ID:using_gis_image_export-->

1.  Faîtes une capture d'écran de la carte avec l'outil de votre choix.

2.  Enregistrez la capture d'écran au format souhaité.

## Intégrer une carte dans une page Web externe

<!--DHIS2-SECTION-ID:using_gis_embed-->

Certaines ressources liées à l'analyse dans DHIS2, telles que les tableaux croisés dynamiques, les graphiques et les cartes, peuvent être intégrées à n'importe quelle page Web à l'aide d'un plug-in. Vous trouverez plus d'informations sur les plug-ins dans le chapitre API Web du _Manuel du développeur DHIS2_.

Pour générer un fragment HTML que vous pouvez utiliser pour afficher la carte dans une page web externe :

1.  Cliquez sur **Partager** \> **Intégrer dans une page Web**.

    La fenêtre **Intégrer dans une page Web** s'ouvre.

2.  Cliquez sur **Sélectionner** pour mettre en évidence le fragment HTML.

## Rechercher un emplacement

<!--DHIS2-SECTION-ID:using_gis_search-->

La fonction de recherche d'emplcaement vous permet de rechercher presque n'importe quel lieu ou adresse. La recherche d'emplacement est optimisée par la plateforme de cartographie Mapzen. Cette fonction est utile pour localiser par exemple des sites, structures sanitaires, villages ou villes sur la carte.

![](resources/images/content/user/gis/gis_place_search.png)

1.  Sur le côté gauche de la fenêtre SIG, cliquez sur l'icône loupe.

2.  Saisissez l'emplacement que vous recherchez.

    Une liste des emplacements correspondants apparaît au fur et à mesure que vous saisissez.

3.  Dans la liste proposée, sélectionnez un emplacement. Une épingle indique l'emplacement sur la carte.

## Mesurer des distances et des surfaces sur une carte

<!--DHIS2-SECTION-ID:using_gis_measure_distance-->

1.  Dans le coin supérieur gauche de la carte, placez le curseur sur le bouton **Mesurer distances et surfaces** et cliquez sur **Créer une nouvelle mesure**.

2.  Ajouter des points à la carte.

3.  Cliquez sur **Terminer la mesure**.

## Obtenir la latitude et la longitude d'un emplacement

<!--DHIS2-SECTION-ID:using_gis_latitude_longitude-->

Faites un clique droit sur un point de la carte et sélectionnez **Afficher la longitude/latitude**. Les valeurs s'affichent dans une fenêtre pop-up.

![](resources/images/content/user/gis/gis-latitude-longitude.png)

## Visualiser une carte sous forme de tableau croisé dynamique ou de graphique

<!--DHIS2-SECTION-ID:using_gis_integration-->

Lorsque vous avez créé une carte, vous pouvez la visualiser sous forme de tableau croisé dynamique, graphique et visualisation cartographique de vos données. La fonction est inactive si les données de la carte est basée sur "ne peut pas être rendue sous forme de graphique ou de tableau".

### Ouvrir une carte en tant que graphique

1.  Cliquez sur **Graphique** \> **Ouvrez cette carte en tant que graphique**.

    Votre carte actuelle s'ouvre en tant que graphique.

### Ouvrir une carte en tant que tableau croisé dynamique

1.  Cliquez sur **Tableau croisé dynamique** \> **Ouvrez cette carte en tant que tableau croisé dynamique**.

    Votre carte actuelle s'ouvre en tant que tableau croisé dynamique.

## Voir également

- [Gérer les légendes](https://docs.dhis2.org/master/en/user/html/manage_legend.html)

# Utiliser l'application Maps

<!--DHIS2-SECTION-ID:using_maps-->

## À propos de l'application Maps

<!--DHIS2-SECTION-ID:about_maps-->

L'application Maps est introduite dans la version 2.29 et sert de remplacement de l'application SIG en offrant une interface plus intuitive et conviviale.

Avec l'application Maps, vous pouvez superposer plusieurs couches et choisir parmi différentes cartes de base. Vous pouvez créer des cartes thématiques de zones et de points, visualiser les structures sanitaires en fonction des classifications et visualiser les bassins versants pour chaque structure. Vous pouvez marquer les zones et les points et effectuer une recherche et filtrer en utilisant divers critères. Vous pouvez déplacer des points et définir des emplacements à la volée. Les cartes peuvent être enregistrées en tant que favorites et partagées avec d'autres utilisateurs et groupes d'utilisateurs.

> **Note**
>
> Pour utiliser des légendes prédéfinies dans l'application **Maps**, vous devez tout d'abord les créer dans l'application de **Maintenance**.

![](resources/images/content/user/maps/maps_main.png)

- Le panneau **couche** situé à gauche de l'espace de travail affiche un aperçu des couches cartographiques pour la carte actuelle :

  - Au fur et à mesure que vous ajoutez des couches, utilisez le bouton (+) Ajouter une couche. Elles sont alors organisées et gérées dans ce panneau.

  - La **carte de référence** est toujours affichée dans le panneau. La carte de référence est OSM Light et est sélectionnée par défaut. OpenStreetMap Detaild, Google Streets et Google Hybrid sont également disponibles. Vous pouvez utiliser ces cartes comme cartes ou couches d'arrière-plan. Passez d'une carte à une autre en séléctionnant l'image souhaitée.

  - La petite flèche situé à droite du panneau des couches, au niveau supérieur, permet de masquer ou d'afficher le panneau.

<!-- end list -->

- Le bouton **Favoris** en haut à gauche vous permet de sauvegarder et d'ouvrir les cartes :

  - Nouveau

    effacera toutes les couches existantes pour créer une nouvelle carte thématique.

  - Ouvrir

    affichera une boîte de dialogue **Favoris** pour sélectionner une carte thématique. Les favoris peuvent également être renommés, partagés et supprimés à travers la boîte de dialogue Favoris. _Le titre du favori actuel s'affiche dans l'en-tête au-dessus du bouton Favoris._

  - Sauvegarder

    enregistrera toutes les modifications apportées au favori actuel.

  - Enregistrer sous

    enregistrera la carte thématique actuelle en tant que nouveau favori.

  - Écrire l'interprétation

    ouvrira un dialogue où l'on peut rédiger une interprétation pour le favori actuel.

  - Obtenir le lien

    fournira un lien direct et un lien API vers le favori actuel.

<!-- end list -->

- Les boutons **+** et **-** sur la carte vous permettent de zoomer respectivement avant et arrière la carte. La molette de la souris peut également être utilisée pour modifier le zoom.

- **Zoom sur le contenu** (symbole de la loupe délimitée) ajuste automatiquement le niveau de zoom et la position centrale de la carte pour mettre en avant les données sur votre carte.

- **Rechercher** (symbole de la loupe) permet de rechercher et de sauter à un endroit sur la carte.

- Le bouton **règle** vous permet de calculer la distance entre deux endroits sur la carte.

- Pour afficher des informations d'un événement, cliquez simplement dessus.

- Faites un clic droit sur la carte pour afficher la longitude et la latitude de cet emplacement.

- L'icône d'accueil en haut à droite de l'espace de travail vous ramènera dans le tableau de bord DHIS2.

- Le bouton À propos affiche les informations sur la version du système.

**Cartes de référence**

Les couches de la carte de référence sont représentées par des _cartes_ de couche dans le panneau comme :

![](resources/images/content/user/maps/maps_basemap_card.png)

En haut de la carte de référence, de gauche à droite, se trouvent :

- Le titre de la carte de référence sélectionnée

- Un symbole d'oeil pour basculer la visibilité de la couche

- Un symbole de flèche pour réduire et agrandir la carte de fond de référence

Au milieu de la carte de fond de référence figure la liste des cartes de référence disponibles. La carte de référence actuelle est mise en surbrillance.

En bas de la carte de fond de référence se trouvent :

- Un curseur pour modifier la transparence de la couche

## Créer une nouvelle carte

<!--DHIS2-SECTION-ID:using_maps_create_map-->

1.  Dans le menu **Applications**, cliquez sur **Cartes**. La fenêtre **DHIS2 Maps** s'ouvre.

2.  Cliquez sur le bouton (+) Ajouter une couche en haut à gauche. Le dialogue de sélection de couche apparaît :

    ![](resources/images/content/user/maps/maps_layer_selection.png)

3.  Sélectionnez une couche à ajouter à la carte actuelle. Les options possibles sont les suivantes :

    - [Événements](#using_maps_event_layer)

    - [Infrastructures](#using_maps_facility_layer)

    - [Thématique](#using_maps_thematic_layer)

    - [Frontières](#using_maps_thematic_layer)

    En outre, il existe plusieurs couches fournies par Google Earth et autres services :

    - Densité de population

    - Altitude

    - Température

    - Précipitation

    - Couverture terrestre

    - Lumières nocturnes

    _Superposition de couches_ est une [couche externe] (#using_maps_external_map_layers) définie dans la base de données utilisée pour l'exemple ci-dessus.

## Gérer les couches d'évènements

<!--DHIS2-SECTION-ID:using_maps_event_layer-->

La couche d'évènements affiche l'emplacement géographique des évènements enregistrés dans le tracker de DHIS2. À condition que les évènements aient des coordonnées GPS associées, vous pouvez utiliser cette couche pour passer des données agrégées affichées dans les couches thématiques aux événements sous-jacents.

Vous pouvez également afficher des évènements agrégés sur le site ou au niveau de la frontière. Vous faites cela à travers une couche thématique en utilisant des éléments de données d'évènements. Ceci est utile lorsque vous n’avez que les coordonnées de l’unité d'organisation sous laquelle sont enregistrés les événements.

![](resources/images/content/user/maps/maps_event_layer.png)

Les couches d'évènements sont représentées par des couches _cartes_ dans le panneau des couches, par exemple :

En haut de la carte d'évènement, de gauche à droite, se trouvent :

- un champ de saisie permettant de faire glisser et de réorganiser les couches avec la souris

- Le titre et la période associés à la couche

- Un symbole d'oeil pour basculer la visibilité de la couche

- Un symbole de flèche pour réduire et développer la carte d'évènement

Au centre de la carte d'évènement se trouve une légende indiquant le style de la couche.

En bas de la carte d'évènement, de gauche à droite, se trouvent :

- Un bouton d'édition (crayon) pour ouvrir la boîte de dialogue de configuration de la couche

- Un curseur pour modifier la transparence de la couche

- Une icône de suppression (corbeille) pour supprimer la couche de la carte actuelle.

### Créer une couche d'évènements

<!--DHIS2-SECTION-ID:maps_create_event_layer-->

Pour créer une couche d'évènements, choisissez **Évènements** dans la fenêtre **Ajouter une couche**. La boîte de dialogue de configuration de la couche d'évènements s'ouvre.

1.  Dans l'onglet **DATA**:

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

3.  Dans l'onglet **FILTRE**:

    ![](resources/images/content/user/maps/maps_event_layer_dialog_FILTER.png)

    - Cliquez sur AJOUTER UN FILTRE et sélectionnez un élément de données disponible pour ajouter un nouveau filtre à l'ensemble de données.

      - Pour les données de type _texte_, vous aurez deux choix : **Contient** implique que la requête correspond à toutes les valeurs qui contiennent la valeur de votre recherche, et **Est exact** implique que seules les valeurs qui sont complètement identiques à la valeur de votre requête seront renvoyées.

      - Pour les données de type _ensemble d'options_, vous pouvez sélectionner les options de la liste déroulante en utilisant la flèche vers le bas ou en commençant à saisir directement dans la case pour filtrer les options.

      Plusieurs filtres peuvent être ajoutés. Cliquez sur le X à l'extrême droite du filtre pour le suprimer.

4.  Dans l'onglet **Unités d'Org.**:

    ![](resources/images/content/user/maps/maps_event_layer_dialog_ORG_UNITS.png)

    - Sélectionnez les unités d'organisation que vous souhaitez inclure dans la couche. Il est possible de sélectionner :

      - une ou plusieurs unités d'organisation spécifiques, ou

      - Un niveau relatif dans la hiérarchie des unités d'organisation, par rapport à l'utilisateur. En sélectionnant une **unité d'organisation d'un utilisateur**, les données cartographiques apparaîtront différemment pour les utilisateurs à différents niveaux dans la hiérarchie de l'unité d'organisation.

5.  Dans l'onglet **STYLE**:

    ![](resources/images/content/user/maps/maps_event_layer_dialog_STYLE.png)

    - Sélectionnez **Évènements de groupe** pour regrouper des évènements à proximité, ou **afficher tous les évènements** pour afficher les évènements individuellement.

    - Sélectionnez une couleur pour les points d'évènements ou regroupement d'évènements.

    - Sélectionnez le rayon (entre 1 et 20) pour les événements regroupés , également connus sous le nom de **clusters**.

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

### Effacer une couche d'évènements

Pour effacer toutes les données de la couche d'un événement d'une carte :

1.  Dans le panneau des couches, cliquez sur l'icône de suppression (corbeille) de la couche d'un évènement d'une carte.

    La couche est supprimée de la carte actuelle.

## Gérer les couches d'infrastructures

<!--DHIS2-SECTION-ID:using_maps_facility_layer-->

La couche d'infrastrctures affiche des icônes représentant les types d'établissements. Les polygones n'apparaissent pas sur la carte, assurez-vous donc de sélectionner un niveau de l'unité d'organisation incluant des intrastructures.

_Un polygone est une zone fermée sur une carte représentant un pays, un quartier ou un parc._

![](resources/images/content/user/maps/maps_facility_layer.png)

Les couches d'infrastructures sont représentées par des _cartes_ de couche comme par exemple :

En haut de la carte des infrastructures, de gauche à droite, se trouvent :

- Un champ de saisie permettant de faire glisser et de réorganiser les couches avec la souris

- Le titre **Infrastructures**

- Un symbole d'oeil pour basculer la visibilité de la couche

- Un symbole de flèche pour réduire et agrandir la carte des infrastructures

Au centre de la carte des infrastructures se trouve une légende indiquant la représentation de l'ensemble de groupes.

En bas de la carte des infrastructures, de gauche à droite, se trouvent :

- Un bouton d'édition (crayon) pour ouvrir la boîte de dialogue de configuration de la couche

- Un bouton **tableau de données** pour afficher ou masquer le tableau de données associé à la couche

- Un curseur pour modifier la transparence de la couche

- Une icône de suppression (corbeille) pour supprimer la couche de la carte actuelle.

### Créer une couche d'infrastructures

Pour créer une couche d'infrastructures, choisissez **Infrastructures** dans **Ajouter une couche**. La boîte de dialogue de configuration de la couche de l'infrastructure s'ouvre.

1.  Dans l'onglet **ENSEMBLE DE GROUPES**:

    ![](resources/images/content/user/maps/maps_facility_layer_dialog_GROUPSET.png)

    - Sélectionnez un **ensemble de groupes** dans la liste des ensembles de groupes d'unités d'organisation définis pour votre instance de DHIS2.

2.  Dans l'onglet **UNITÉ D'ORGANISATION**

    ![](resources/images/content/user/maps/maps_facility_layer_dialog_ORG_UNITS.png)

    - sélectionnez le(s) niveau(x) et/ou le(s) groupe(s) de l'unité d'organisation dans la liste de sélection sur le côté droit.

    - Sélectionnez les unités d'organisation que vous souhaitez inclure dans la couche. Il est possible de sélectionner :

      - une ou plusieurs unités d'organisation spécifiques, ou

      - un niveau relatif dans la hiérarchie des unités d'organisation, par rapport à l'utilisateur. En sélectionnant une **unité d'organisation d'un utilisateur**, les données cartographiques apparaîtront différemment pour les utilisateurs à des niveaux différents dans la hiérarchie des unités d'organisation.

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

- en cliquant sur un titre, le tableau sera trié en fonction de cette colonne ; tout en ayant la possibilité de basculer entre un classement ascendant et descendant.

- entrer un texte ou des expressions dans les champs de filtre sous les titres appliquera ces filtres aux données, et l'affichage s'ajustera selon le filtre. Les filtres sont appliqués comme suit :

  - NOM

    filtrer par nom contenant ledit text

  - Identifiant

    filtrer par Identifiant contenant ledit texte

  - TYPE

    filtrer par types d'affichage SIG contenant ledit texte

> **Note**
>
> Les filtres des tableaux de données sont temporaires et ne sont pas enregistrés avec les couches de la carte en tant que favori.

### Rechercher une infrastructure

Le champ filtre de NOMS dans le tableau de données constitue un moyen efficace de rechercher des infrastructures individuellement.

### Supprimer une couche d'infrastructures

Pour effacer toutes les données d'une couche d'infrastructures :

1.  Dans le panneau Couche, cliquez sur l'icône Supprimer (corbeille) sur la carte de la couche d'infrastructures

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
<caption> Afficher les informations de l'unité d'organisation </caption>
<colgroup>
<col width="40%"/>
<col width="59%"/>
</colgroup>
<thead>
<trclass ="header">
<th>Fonction</th>
<th>Action</th>
</tr>
</thead>
<tbody>
<trclass="impair">
<td><p> Afficher les informations pour la période en cours </p></td>
<td><ol style="list-style-type: decimal">
<li><p> Cliquez sur une infrastructure.</p></li>
</ol></td>
</tr>
<trclass="even">
<td><p> Afficher les informations pour une période sélectionnée </p></td>
<td><ol style="list-style-type: decimal">
<li><p> Faites un clique droit sur une infrastructure, puis cliquez sur <strong> Afficher les informations </strong>.</p> </li>
<li><p> Dans la section <strong> Données de l'infrastructure </strong>, sélectionnez une période. </p> </li>
</ol>
<blockquote>
<p><strong> Remarque </strong></p>
<p> Vous configurez les données d'infrastructure affichées dans l'application <strong> Paramètres système </strong>.</p>
</blockquote></td>
</tr>
</tbody>
</table>

## Gérer les couches thématiques

<!--DHIS2-SECTION-ID:using_maps_thematic_layer-->

_Les couches thématiques_ représentent la variation spatiale des distributions géographiques. Sélectionnez votre combinaison indicateur/élément de donnée, période et niveau de l'unité d'organisation. Si votre base de données contient des coordonnées et des valeurs de données agrégées pour ces unités d'organisation, elles apparaîtront sur la carte.

> **Note**
>
> Vous devez actualiser les tableaux d'analyse DHIS2 pour rendre disponibles les valeurs des données agrégées.

![](resources/images/content/user/maps/maps_thematic_mapping.png)

Les couches thématiques sont représentés par des _ cartes _ de couches dans le panneau des couches, comme par exemple :

En haut de la carte thématique, de gauche à droite, vous trouverez :

- un champ de saisie permettant de faire glisser et de réorganiser les couches avec la souris

- Le titre et la période associés à la couche

- Un symbole d'oeil pour basculer la visibilité de la couche

- Un symbole de flèche pour réduire et agrandir la carte thématique

Au centre de la carte thématique se trouve une légende indiquant les plages de valeurs affichées sur la couche.

En bas de la carte thématique, de gauche à droite, vous trouverez :

- Un bouton d'édition (crayon) pour ouvrir la boîte de dialogue de configuration de la couche

- Un bouton **tableau de données** pour afficher ou masquer le tableau de données associé à la couche

- Un curseur pour modifier la transparence de la couche

- Une icône de suppression (corbeille) pour supprimer la couche de la carte actuelle.

### Créer une couche thématique

Pour créer une couche d'événements, choisissez **Thématique** dans la section **Ajouter une couche**. Cela ouvre la boîte de dialogue de configuration d'une couche d'événements.

1.  Dans l'onglet **DONNÉES**:

    ![](resources/images/content/user/maps/maps_thematic_layer_dialog_DATA.png)

    - Sélectionnez un type de données puis sélectionnez respectivement le groupe et l'élément cible. Les champs disponibles dépendent du type d'article sélectionné.

    - Sélectionnez une valeur dans le champ **Type d'agrégation** pour les valeurs de données à afficher sur la carte. Par défaut, "Par élément de donnée" est sélectionné. Les valeurs alternatives sont : Nombre ; Moyenne ; Somme ; Écart type ; Variance ; Min ; Max. Voir également [Aggregation operators](https://dhis2.github.io/dhis2-docs/master/en/user/html/ch10s05.html#d0e8082).

2.  Dans l'onglet **PÉRIODE**

    ![](resources/images/content/user/maps/maps_thematic_layer_dialog_PERIOD.png)

    - sélectionnez la période sur laquelle les données thématiques sont agrégées. Vous pouvez sélectionner une période fixe ou une période relative.

      - Période fixe

        Dans le champ **Type de période**, sélectionnez la durée de la période, puis sélectionnez la cible dans le champ **Période**.

      - Période relative

        Dans le champ **Type de période**, sélectionnez **Relatif**, puis sélectionnez l'une des périodes relatives, par exemple **Ce mois** ou **L'année dernière**, dans le champ **Période**.

3.  Dans l'onglet **Unités d'Org.**:

    ![](resources/images/content/user/maps/maps_thematic_layer_dialog_ORG_UNITS.png)

    - Sélectionnez les unités d'organisation que vous souhaitez inclure dans la couche. Il est possible de sélectionner :

      - Une ou plusieurs unité(s) d'organisation spécifiques, ou

      - un niveau relatif dans la hiérarchie des unités d'organisation, par rapport à l'utilisateur. En sélectionnant une **unité d'organisation d'un utilisateur**, les données cartographiques apparaîtront différemment pour les utilisateurs à différents niveaux dans la hiérarchie de l'unité d'organisation.

4.  Dans l'onglet **STYLE**:

    ![](resources/images/content/user/maps/maps_thematic_layer_dialog_STYLE.png)

    - Sélectionnez la légende **Automatique** ou **Prédéfinie**.

      - Les types de légendes automatiques signifient que l'application va créer une légende en fonction de votre méthode, nombre de classes, les couleurs légères et profondes que vous sélectionnez. La méthode fait désigne la taille des classes de légende. Configurez :

        - Intervalles égaux

          la plage de chaque intervalle sera **(la plus haute valeur de données - la plus basse valeur de données / nombre de classes)**

        <!-- end list -->

        - Nombres égaux

          le créateur de la légende va tenter de répartir les unités d'organisation uniformément.

      - Si vous avez des infrastructures dans votre couche thématique, vous pouvez définir le rayon pour les valeurs minimales et maximales en modifiant les valeurs dans les cases **Taille basse** et **Taille haute** respectivement.

5.  Cliquez sur **AJOUTER UNE COUCHE**.

### Modifier une couche thématique

1.  Dans le panneau des couches, cliquez sur l'icône Édition (crayon) sur la carte de la couche thématique.

2.  Modifiez le paramètre des onglets DONNÉES, PÉRIODE, UNITÉS D'ORG et STYLE comme vous le souhaitez.

3.  Cliquez sur **METTRE À JOUR LA COUCHE**.

### Filtrer les valeurs dans une couche thématique

Les couches thématiques ont une option **tableau de données** qui peut être activée ou désactivée à partir de la carte de couche thématique.

![](resources/images/content/user/maps/maps_thematic_layer_data_table0.png)

La table de données affiche les données qui forment la couche thématique

- en cliquant sur un titre, le tableau sera trié en fonction de cette colonne, tout en donnant la possibilité de basculer entre un classement ascendant et descendant.

- entrer du texte ou des expressions dans les champs de filtre sous les titres appliquera ces filtres aux données et l'affichage s'ajustera selon le filtre. Les filtres sont appliqués comme suit :

  - NOM

    filtrer par noms contenant ce texte

  - VALEUR

    filtrer les valeurs par des nombres et/ou des plages de valeurs données, par exemple : 2,\>3&\<8

  - LÉGENDE

    filtrer par légendes contenant ce texte

  - INTERVALLE

    filtrer par plages contenant ce texte

  - NIVEAU

    filtrez le niveau par des nombres et/ou des plages de valeurs, par exemple : 2,\>3&\<8

  - PARENT

    filtrer par noms de parent contenant ce texte

  - Identifiant

    filtrer par Identifiants contenant ce texte

  - TYPE

    filtrer par types d'affichage SIG contenant ce texte

  - COULEUR

    filtrer par noms de couleurs contenant ce texte

![](resources/images/content/user/maps/maps_thematic_layer_data_table1.png)

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

1.  Dans le panneau de couches, cliquez sur l'icône Supprimer (corbeille) sur la carte de la couche thématique.

    Le calque est supprimé de la carte actuelle.

## Gérer les calques frontières

La couche frontière affiche les bordures et les emplacements de votre unité d'organisation. Cette couche est particulièrement utile si vous êtes hors ligne et n'avez pas accès aux cartes d'arrière-plan.

![](resources/images/content/user/maps/maps_bound_layers.png)

Les couches frontières sont représentées par des _cartes_ de couche dans le panneau de couches, par exemple :

En haut de la carte frontière, de gauche à droite, se trouvent :

- un champ de saisie permettant de faire glisser et de réorganiser les couches avec la souris

- Le titre **Frontières**

- Un symbole d'oeil pour basculer la visibilité de la couche

- Un symbole de flèche pour réduire et agrandir la carte frontière

Au bas de la carte frontière, de gauche à droite, se trouvent :

- Un bouton d'édition (crayon) pour ouvrir la boîte de dialogue de configuration de la couche

- Un bouton **tableau de données** pour afficher ou masquer le tableau de données associé à la couche

- Un curseur pour modifier la transparence de la couche

- Une icône de suppression (corbeille) pour supprimer la couche de la carte thématique actuelle.

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

1.  Dans le panneau Couche, cliquez sur l'icône Supprimer (corbeille) sur la carte de la couche frontière.

    La couche est supprimée de la carte actuelle.

## Gérer une couche Earth Engine

<!--DHIS2-SECTION-ID:using_maps_gee-->

![](resources/images/content/user/maps/maps_earth_eng_layer.png)

La couche Google Earth Engine vous permet d'afficher des images satellites et des ensembles de données géospatiales du vaste catalogue de Google. Ces couches sont utiles lorsqu'elles sont combinées avec des couches thématiques et d'événements pour améliorer l'analyse. Les couches compatibles sont les suivantes :

- L'estimation de la densité de population avec les totaux nationaux ajustés pour correspondre aux estimations de la Division de la population des Nations Unies. Population dans des cellules de grille de 100 x 100 m (à partir de 2010).

- Altitude par rapport au niveau de la mer. Vous pouvez ajuster les valeurs min et max afin de les adapter à la réalité dans votre région.

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

- Un symbole d'oeil pour basculer la visibilité de la couche

- Un symbole de flèche pour réduire et agrandir la carte de superposition

En bas de la carte de superposition, de gauche à droite, se trouvent :

- Un curseur pour modifier la transparence de la couche

- Une icône de suppression (corbeille) pour supprimer la couche de la carte actuelle.

Voici quelques exemples de couches externes :

![](resources/images/content/user/maps/maps_black_basemap_and_nighttime_lights.png)

![](resources/images/content/user/maps/maps_terrain_imagery.png)

![](resources/images/content/user/maps/maps_aerial_imagery.png)

> **Note**
>
> Pour définir des couches de carte externes, reportez-vous à [???](#manage_external_maplayer).

## Gérer les favorites de cartes

<!--DHIS2-SECTION-ID:using_maps_favorites-->

L'enregistrement de vos cartes en tant que favoris facilite leur restauration ultérieure. Cela vous vous permet également de les partager avec d'autres utilisateurs sous forme d'interprétation ou de les mettre sur le tableau de bord. Vous pouvez enregistrer tous les types de configurations de couche en tant que favoris.

### Ouvrir un favori

1.  Sélectionnez **Ouvrir** dans le menu **Favoris**.

    La boîte de dialogue **Favoris** s'ouvre.

2.  Recherchez le favori que vous souhaitez ouvrir. Vous pouvez soit utiliser **\<** et **\>** ou le champ de recherche pour trouver un favori préalablement enregistré. La liste est filtrée par chaque caractère que vous saisissez.

3.  Cliquez sur le nom pour ouvrir ce favori.

### Enregistrer une carte en tant que nouveau favori

Lorsque vous avez créé une carte, il est pratique de l'enregistrer en tant que favori :

1.  Sélectionnez **Enregistrer sous** dans le menu **Favoris**.

    La boîte de dialogue **Enregistrer comme nouveau favori** s'ouvre.

2.  Dans le champ de texte, saisissez le nom que vous voulez donner à votre favori de carte.

3.  Cliquez sur **SAUVEGARDER**.

    Votre favori est ajouté à la liste.

### Écraser le favori actuel

Sélectionnez **Sauvegarder** dans le menu **Favoris**.

### Renommer un favori

1.  Sélectionnez **Ouvrir** dans le menu **Favoris**.

    La boîte de dialogue **Favoris** s'ouvre.

2.  Recherchez le favori que vous souhaitez renommer.

    Vous pouvez utiliser **\<** et **\>** ou le champ de recherche pour trouver un favori enregistré.

3.  Cliquez sur l'icône Plus d'options (trois points) à droite de la ligne du favori et sélectionnez **Renommer**.

    La boîte de dialogue **Renommer le favori** s'ouvre.

4.  Modifiez le nom et/ou la description.

5.  Cliquez sur **SAUVEGARDER**.

    Le favori est mis à jour.

### Supprimer un favori

1.  Sélectionnez **Ouvrir** dans le menu **Favoris**.

    La boîte de dialogue **Favoris** s'ouvre.

2.  Recherchez le favori que vous souhaitez supprimer.

    Vous pouvez utiliser **\<** et **\>** ou le champ de recherche pour trouver un favori enregistré.

3.  Cliquez sur l'icône Plus d'options (trois points) à droite de la ligne du favori et sélectionnez **Supprimer**.

    Une boîte de dialogue de confirmation s'affiche.

4.  Cliquez sur **SUPPRIMER** pour confirmer que vous souhaitez supprimer le favori.

### Modifier les paramètres de partage d'un favori

Après avoir créé une carte et l'avoir enregistrée en tant que document favori, vous pouvez la partager avec tous les utilisateurs ou un groupe d'utilisateurs. Pour modifier les paramètres de partage :

1.  Sélectionnez **Ouvrir** dans le menu **Favoris**.

    La boîte de dialogue **Favoris** s'ouvre.

2.  Recherchez le favori que vous souhaitez partager.

    Vous pouvez utiliser **\<** et **\>** ou le champ de recherche pour trouver un favori enregistré.

3.  Cliquez sur l'icône Plus d'options (trois points) à droite de la ligne du favori et sélectionnez **Partager**.

    La boîte de dialogue **Paramètres de partage** s'ouvre.

4.  Dans la zone de texte, recherchez le nom de l'utilisateur ou du groupe d'utilisateurs avec lequel vous souhaitez partager votre favori et sélectionnez-le.

    L'utilisateur ou le groupe choisi est ajouté à la liste des destinataires.

    Répétez cette étape pour ajouter plus de groupes d'utilisateurs.

5.  Si vous souhaitez autoriser l'accès externe, cochez la case correspondante.

6.  Pour chaque groupe d'utilisateurs, choisissez un paramètre d'accès. Les options possibles sont les suivantes :

    - Aucun (uniquement pour les groupes par défaut, car ils ne peuvent pas être supprimés)

    - Lecture seule

    - Lecture et écriture

7.  Cliquez sur **FERMER** pour fermer la boîte de dialogue.

### Partager l'interprétation d'une carte

<!--DHIS2-SECTION-ID:mapsInterpretation-->

Pour certaines ressources liées à l'analyse dans DHIS2, vous pouvez partager des données d'interprétation. Une interprétation est un lien vers la ressource pertinente avec un texte exprimant un aperçu des données.

Pour créer une interprétation d’une carte et la partager avec tous les utilisateurs du système :

1.  Sélectionnez **Écrire une interprétation** dans le menu **Favoris**.

    La boîte de dialogue **Écrire interprétation** s'ouvre.

2.  Dans le champ de texte, saisissez un commentaire, une question ou une interprétation.

3.  Cliquez sur **SAUVEGARDER**.

    La boîte de dialogue se ferme automatiquement. Vous pouvez visualiser l'interprétation sur le **Tableau de bord**.

## Enregistrer une carte en tant qu'image

<!--DHIS2-SECTION-ID:using_maps_image_export-->

1.  Faîtes une capture d'écran de la carte avec l'outil de votre choix.

2.  Enregistrez la capture d'écran au format souhaité.

## Rechercher un emplacement

<!--DHIS2-SECTION-ID:using_maps_search-->

La fonction de recherche d'emplacement vous permet de rechercher presque n'importe quel lieu ou adresse. Cette fonction est utile pour localiser par exemple des sites, structures sanitaires, villages ou villes sur la carte.

![](resources/images/content/user/maps/maps_place_search.png)

1.  Sur le côté droit de la fenêtre Cartes, cliquez sur l'icône loupe.

2.  Tapez l'emplacement que vous recherchez.

    Une liste des emplacements correspondants apparaît au fur et à mesure que vous tapez.

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

Le tableau de bord dispose de deux modes : visualiser et éditer/créer. Quand vous vous connectez sur DHIS2, votre dernier tableau de bord utilisé s'affiche en mode visualisation, si vous êtes connecté depuis le même ordinateur. Si vous utilisez un autre ordinateur, le premier tableau de bord marqué s'affiche. S'il n'y a pas de tableaux de bord marqué, le premier tableau de bord s'affiché. Les tableaux de bord marqués apparaissent toujours en premier dans la liste des tableaux de bord.

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

La liste des éléments du menu déroulant affiche initialement les 5 premiers éléments disponibles dans chaque catégorie, en fonction du texte de recherche que vous avez entré. Des adresses mail, des zones de texte et des éléments d'espacement se trouvent également dans la liste déroulante. Pour afficher plus d'éléments, cliquez sur **AFFICHER PLUS**, et la liste pour ce type sera étendue à 15 articles. Si vous ne trouvez toujours pas l'article que vous cherchez, essayez alors avec un texte de recherche plus spécifique.

![](resources/images/content/user/dashboard/dashboard-item-selector.png)

Une fois que vous avez sélectionné un élément, il sera ajouté en haut à gauche du tableau de bord. Les éléments ajoutés peuvent être déplacés à l'aide de la souris en en cliquant sur l'élément et en le faisant glisser vers l'emplacement souhaité. Il est également possible de modifier la taille d'un élément avec la souris en faisant un clique droit sur la poignée de glissement dans le coin inférieur droit de l'élément et en glissant la souris jusqu'à la taille souhaitée.

### Eléments d'espacement

Le tableau de bord est configuré avec le paramètre "anti-gravité" pour le positionnement des éléments. Cela signifie que les élément "monteront" vers le haut jusqu'à ce qu'ils atteignenet un autre élément. Afin de forcer un espace vertical vide entre deux éléments (comme une rangée vide), vous pouvez ajouter des éléments d'espacement au tableau de bord. Ils ne sont visibles qu'en mode édition/création. En mode affichage, ils ne sont pas visibles, mais occupent l’espace défini.

**Elément d'espacement en mode édition/création:**

![](resources/images/content/user/dashboard/dashboard-spacer-edit-mode.png)

**Elément d'espacement en mode affichage :**

![](resources/images/content/user/dashboard/dashboard-spacer-view-mode.png)

\</section\>

## Supprimer des éléments

Supprimer des éléments en cliquant sur la corbeille rouge en haut à droite de chaque élément. Sachez qu’en raison du paramètre "anti-gravité" dans le tableau de bord, lorsque vous supprimez un élément, les éléments positionnés en dessous "montent" vers le haut.

## Sauvegarder le tableau de bord

Lors de la création ou de la modification d'un tableau de bord, les modifications ne sont enregistrées que si vous cliquez sur le bouton **ENREGISTRER LES MODIFICATIONS** dans la barre de modification du tableau de bord en haut de la page. Si vous ne souhaitez pas enregistrer vos modifications, cliquez sur le bouton **QUITTER SANS ENREGISTRER** en haut à droite. Vous serez alors renvoyé en mode affichage avec le tableau de bord que vous consultiez précédemment.

\</section\>

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

\</section\>

## Afficher un tableau de bord

En mode affichage, vous pouvez afficher la description, marquer un tableau de bord, appliquer un filtre de tableau de bord et le partager le tableau de bord avec d’autres utilisateurs et groupes d'utilisateurs.

Pour afficher la description, cliquez sur le bouton **i** situé à droite du titre.

![](resources/images/content/user/dashboard/dashboard-title-bar.png)

### Tableaux de bord marqués

Vos tableaux de bord marqués sont répertoriés en premier dans la liste des tableaux de bord. Pour marquer un tableau de bord, cliquez sur le bouton étoile à droite du titre. Lorsque l’étoile est «coloriée», cela signifie que le tableau de bord a été marqué. Le marquage d'un tableau de bord ne s'applique qu'à vous, et non aux autres utilisateurs.

### Filtrer un tableau de bord

Pour filtrer un tableau de bord par unité d'organisation, cliquez sur le bouton **FILTRER** à droite du titre du tableau de bord. Sélectionnez l'unité d'organisation que vous souhaitez appliquer au tableau de bord. Cela ne concerne que vous, et n'affecte pas les autres utilisateurs. Les seuls éléments du tableau de bord concernés par le filtre d’unité d’organisation sont les éléments de visualisation (tableau croisé dynamique, graphiques, cartes et plans) dont l’unité d’organisation est configurée au niveau de "Unité d'organisation d'utilisateur". Le filtre s'efface si vous rechargez le tableau de bord.

![](resources/images/content/user/dashboard/dashboard-orgunit-filter-dialog.png)

## Éléments de tableau de bord montrant les graphiques, tableaux croisés dynamiques et cartes

### Basculer entre les visualisations

Les éléments du tableau de bord montrant les graphiques, les tableaux croisés dynamiques et les cartes peuvent être basculés entre ces visualisations. Cliquez sur les boutons en haut à droite de chaque élément pour basculer entre les visualisations.

![](resources/images/content/user/dashboard/dashboard-pluginitem-buttons.png)

## Interprétations

Vous pouvez écrire des interprétations pour les graphiques, tableaux croisés dynamiques, cartes, rapports d'événements et graphiques d'événements. Cliquez sur le bouton d'interprétations ![](resources/images/content/user/dashboard/dashboard-interpretations-button.png), et l'élément s'agrandit verticalement en dessous pour afficher les interprétations et réponses. Vous pouvez aimer une interprétation, répondre à une interprétation et ajouter votre propre interprétation. Vous pouvez supprimer vos propres interprétations et réponses, et si vous disposez d'un accès modérateur, vous pouvez supprimer les interprétations des autres utilisateurs.

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

\</section\>

# Messagerie

<!--DHIS2-SECTION-ID:messages-->

<!--DHIS2-SECTION-ID:dashboard_messages-->

## À propos des messages et des commentaires

![](resources/images/content/user/dashboard/dashboard_messages_queue.png)

Dans DHIS2, vous pouvez envoyer des messages et des commentaires aux utilisateurs, à des groupes d'utilisateurs et aux unités d'organisation. Lorsque vous envoyez un commentaire, il est routé vers un groupe d'utilisateurs particulier appelé groupe de destinataires. Si vous êtes membre de ce groupe d'utilisateurs, vous avez alors accès aux outils de gestion des commentaires. Vous pouvez, par exemple, définir le statut d'un nouveau commentaire à "En attente" pendant que vous attendez d'avoir plus d'informations.

En plus des messages entre utilisateurs et des commentaires, en fonction de votre configuration, le système vous enverra également des messages génériques. Ces messages peuvent être déclenchés par différents événements, y compris les échecs et défaillances de tâches en arrière-plan et la validation des résultats d'analyse. Les outils de gestion des commentaires sont également disponibles pour les résultats de validation et la priorité sera attribuée à l'importance de la règle de validation violée.

> **Note**
>
> Les messages et les commentaires ne sont pas envoyés aux courrierx électroniques des utilisateurs. Les messages n'apparaissent que dans DHIS2.

## Créer un message

![](resources/images/content/user/dashboard/dashboard_message.png)

1.  Dans le **Tableau de bord**, cliquez sur **Messages**.

2.  Cliquez sur **Écrire un message**.

3.  Définissez à qui vous souhaitez envoyer le message. Vous pouvez envoyer un message aux unités d'organisation, aux utilisateurs ainsi qu'à des groupes d'utilisateurs.

    - Dans le champ **À unité d'org**, sélectionnez les unités d'organisation ou groupes d'unités d'organisation auxquels vous souhaitez envoyer le message.

    - Dans le champ **À l'utilisateur**, sélectionnez les utilisateurs ou les groupes d'utilisateurs auxquels vous souhaitez envoyer le message.

4.  Saisissez un objet et le corps du message.

5.  Cliquez sur **Envoyer**.

## Lire un message

1.  Dans le **Tableau de bord**, cliquez sur **Messages**.

2.  Cliquez sur un message.

    Si le message fait partie d'une conversation, vous verrez tous les messages de cette conversation.

## Créer un commentaire

1.  Dans le **Tableau de bord**, cliquez sur **Rédiger un commentaire**.

2.  Saisissez un objet et un commentaire.

3.  Cliquez sur **Envoyer**.

    Le commentaire apparaîtra dans toutes les boîtes de réception de tous les utilisateurs concernés.

## Gérer les commentaires

> **Note**
>
> Vous ne verrez les commentaires et aurez accès aux outils de gestion de commentaires que si vous êtes membre du groupe d'utilisateurs mis en place pour les gérer.

![](resources/images/content/user/dashboard/dashboard_messages_manage.png)

Vous recevrez des commentaires dans votre boîte de réception **Messages**. Pour commentaires, vous disposez des options suivantes en plus des options standards valables pour les messages :

<table>
<caption>Outils de gestion des commentaires</caption>
<colgroup>
<col largeur="23%"/>
<col width="76%"/>
</colgroup>
<thead>
<trclass="header">
<th>Fonction</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<trclass="impair">
<td><p><strong>Priorité</strong></p></td>
<td><p>Vous pouvez marquer un commentaire avec différentes priorités : <strong>neutre</strong>, <strong>Faible</strong>, <strong>Moyenne</strong> ou <strong>Élevée</strong>.</p>
<p>Définir la priorité facilite la distinction du commentaire que vous devez résoudre en premier et ceux pouvant attendre.</p></td>
</tr>
<trclass="even">
<td><p><strong>État</strong></p></ td>
<td><p>Tous les commentaires reçoivent le statut <strong>Ouvert</strong> à la création.</p>
<p>Pour faire le suivi des commentaires existants, vous pouvez définir le statut sur <strong>En attente</strong> , <strong>non valide</strong> ou <strong>Résolu</strong>.</p>
<p>Vous pouvez filtrer les commentaires dans votre boîte de réception en fonction de leur statut. Cela facilite le basculement entre les commentaires et les messages normaux.</p></td>
</tr>
<tr class="impair">
<td><p><strong>Attribué à</strong></p></td>
<td><p>Vous pouvez affecter un commentaire à n'importe quel membre du groupe d'utilisateurs configuré autorisé à les gérer</p>
<p><strong>Aucun</strong> signifie que vous n'avez affecté aucun utilisateur au commentaire.</p></td>
</tr>
<tr class="even">
<td><p><strong>Réponse interne</strong></p></td>
<td><p>Lorsque vous travaillez dans une équipe de traitement des commentaires, vous pouvez en discuter avant de répondre à l'expéditeur. Vous pouvez conserver cette discussion dans la même conversation que le commentaire lui-même.</p>
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

Dans **Paramètres du compte**, vous pouvez réinitialiser votre mot de passe.
