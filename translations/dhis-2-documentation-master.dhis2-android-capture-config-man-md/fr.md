---
title: DHIS 2 configuration guide for the Android capture app
---

<!--DHIS2-SECTION-ID:index-->

# À propos de ce guide

<!--DHIS2-SECTION-ID:about_this_guide_-->

La documentation de DHIS2 est un effort collectif est a été développée par l'équipe de développement mais aussi par les utilisateurs. Bien que ce guide vise à être complet, il se peut que certaines fonctionnalités aient été omises ou doivent encore être documentées. Cette section explique certaines des conventions utilisées dans le document.

DHIS2 est une application fonctionnant dans un navigateur. Dans la plupart des cas, des impressions d'écran ont été incluse pour une meilleure compréhension. Des raccourçis vers diverses fonctionnalités sont affiché comme **Élément de donnée** \> **Groupe d'éléments de données**. Le symbole "\>" indique que vous devez cliquer sur **Élément de donnée** et ensuite sur **Groupe d'éléments de données**.

Différents styles de texte ont été utilisés pour mettre en avant des parties importantes ou des types particuliers de texte comme par exemple du code source. Chaque convention est expliquée ci-dessous :

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

> **Danger**
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

# Introduction

This guide is designed to assist you in configuring DHIS2 for use with the Android Capture App.

It is not a tutorial or training manual; it is designed to complement the core DHIS2 documentation and training materials with specific reference material for the Android application.

The document is divided into sections, which are intended to describe all the features that have been implemented in the app, those that have not yet been implemented and those that will not be supported. Where applicable, an explanation of problems with the use of a particular feature in Android app will be provided. Recommendations or tips will also be presented for a better understanding and use of the app.

In addition, the document has sections for new features in the login, visual configurations, synchronization management and a list of known important errors.

<!-- PALD: we should reuse the standard "asides" used for DHIS 2 documentation (Note, Tip, Caution, etc.)
- Any issues around using a particular feature with Android are highlighted with an exclamation mark \!
- Every time the icon ![](resources/images/content/android/image1_icon.png) is presented, a tip will be provided for a better use and understanding of the feature.
-->

- When there is an error or issue in which we are currently working , you will find this icon ![](resources/images/content/android/image3_icon.png)

# Recommendations for a DHIS2 mobile deployment

## Mobile device specifications

The Android App is compatible with DHIS2 2.29, 2.30 and 2.31.

It requires a device that is running Android v4.4 or higher.

In [this link](https://www.google.com/url?q=https://docs.google.com/document/d/1jZjw-hb1W8sszkPU9yPWrPoow91gEkTb0nyZJh3IJQQ/edit%23&sa=D&ust=1557433016128000) you will find recommendations for new mobile device acquisitions for a Dhis2 Android deployment.

## Testing and Piloting

If you plan to deploy the DHIS2 Android App in the field, you should first do a full round of testing of the app in you own configuration.

The app has been extensively tested with the demo servers, and during Beta testing it was tested against some real configurations as well. We know, however,  that every DHIS2 configuration is special in many senses, and might cause inconsistencies that we have not being able to identify.

It is strongly advised to carry out a comprehensive testing of the app in your own server before piloting it.

## How to migrate to Android Capture App

If you are ready for deploying the new Android App in the field and your users are already using Event Capture or Tracker Capture, you should follow these steps:

1.  Sync data of the current app you are using

    > **Caution**
    >
    > Deleting the app without syncing can cause information loss.

2.  Download and install the DHIS2 Android App
3.  Login using your credentials and all data will be synced.

# Contribute to the App

## How to report a bug

First of all, please check the [List of already reported bugs](https://www.google.com/url?q=https://jira.dhis2.org/issues/?filter%3D10872&sa=D&ust=1557433016131000)

The list is always updated as you add new bugs and we work on them. You need an active, free DHIS2 Jira account.

When reporting a bug please specify together with your description:

- DHIS2 version and build revision
- DHIS2 Android App version
- Android OS version
- Device (when possible)
- Error log (when possible)

## How to suggest Icons to the library

DHIS2 and the new DHIS2 Android App allows you to select icons for programs, datasets and the options of an optionset. DHIS2.30 incorporates 125 icons. We plan to expand the collection of icons on each future version of DHIS2- for that we need your help: we are seeking ideas for new icons - please submit yours using [this form](https://www.google.com/url?q=https://drive.google.com/open?id%3D1LmfYJQAu3KyDfkY3X6ne7qSsuTa9jXZhoQHzkDxeCdg&sa=D&ust=1557433016134000).

## How to add translations

You can contribute to the current translations of the App or add a new language. Just contact us (<android@dhis2.org>) and we will set up the translation server and send you instructions.

# NEW Visual configurations

## Meta data sync error

In case of errors during the sync process, a message is displayed in the home screen which takes you to the sync error log. The sync error log gives details about the error and is prepared to be shared with admins.

![](resources/images/content/android/image43.png){ width=35%} ![](resources/images/content/android/image11.png){ width=35%}

You can also open the sync errors log from **Settings**:

![](resources/images/content/android/image15.png){ width=35%}

## Personalize your Icon

You can set your icon in the wallpaper using the DHIS2 App Widget. The icon will be the flag configured in your server.

![](resources/images/content/android/image32.png){ width=35%}

How to add a widget:

- Long press in your wallpaper
- Select Widgets
- Look for the DHIS2 Widget
- Select

It will add a shortcut to your app.

## Personalise the colour of the App

You can set the generic theme of the app by configuring the them in our server:

![](resources/images/content/android/image28.png){width=80% }

- Go to **System Settings > Appearance > Style**
- Select your style:
  - Green
  - India (Orange)
  - Light Blue
  - Myanmar (red)
  - Vietnam
- Select your flag

![](resources/images/content/android/image23.png){ width=35%}

## Icon library for metadata

There are currently 134 icons available that you can choose from. You can search by name in the icon picker widget. Icons are available in positive, negative and outlined shapes. We will be adding many more icons in future releases.

Icons can be associated to programs, stages, data elements and the options of an option set. This is configurable through the Maintenance App.

> **Note**
>
> This feature is available from DHIS 2 2.30 onwards

![](resources/images/content/android/image13.png){width=80% }

In the Android App icons render in the home screen to illustrate all the programs available to a user, or while adding an stage. For data elements and options, the icons render for single event programs, when a section contains a single DE, showing the option set as a matrix or sequence of images.

![](resources/images/content/android/image19.png){ width=35%} ![](resources/images/content/android/image26.png){ width=35%}

![](resources/images/content/android/image36.png){ width=35%}

> **Note**
>
> Icons will initially only render in the new Android app. The new web-based Capture App will incorporate them in the near future.

We plan to expand the collection of icons on each future version of DHIS2- for that we need your help: we are seeking ideas for new icons - please submit yours using [this form](https://www.google.com/url?q=https://drive.google.com/open?id%3D1LmfYJQAu3KyDfkY3X6ne7qSsuTa9jXZhoQHzkDxeCdg&sa=D&ust=1557433016147000).

## Colour palette for metadata

Tracker and Event capture now have the ability to render colours for programs, stages, data elements and options in option sets. A colour picker is integrated in the Maintenance App, which shows as a palette, except for options which allows the selection of any colour.

![](resources/images/content/android/image20.png){width=80% }

In the Android App, the color will be rendered as background color for programs and stages combined with an icon (if selected). For options it renders as the background colour during data entry form for single event programs. When the user selects a program with an assigned colour, that colour becomes the background theme for all screens in the domain of the program.

![](resources/images/content/android/image19.png){ width=35%} ![](resources/images/content/android/image2.png){ width=35%}

> **Note**
>
> Colours will first be available in the new Android app, followed in future releases by the new web-based Capture App.

## Rendering Types for Program Sections

![](resources/images/content/android/image16.png){width=80% }

**Program Section**: when used in combination with icons, a Program Section with a single data element and associated Option Set can render the options in sequential or matrix layout (see screenshots).

![](resources/images/content/android/image26.png){ width=35%} ![](resources/images/content/android/image36.png){ width=35%}

> **Note**
>
> Render type for sections will first be available in the Android app, followed in future releases by the new web-based Capture App UI.

# NEW Android specific features

## Login

![](resources/images/content/android/image39.png){width=35%}

There are two ways to access the application:

1. Manual: The user must type the corresponding URL of the server to be used and enter the username and password.

   > **Note**
   >
   > Take note that the login only possible with 2.29, 2.30 and 2.31 servers.

2. QR: The user can use a QR code instead of typing the URL. Username and password must be entered manually.

> **Note**
>
> After the first login, the app will suggest URL and username of all successful connections.
>
> You are able to make an _offline_ login only if using the same user as the last online session.

## Blocking session (PIN)

User is able to lock the session using a 4 digit PIN. This allows to move to other apps in your phone without deleting the local data. If the user forgets the PIN number, log in by entering the credentials is also available.

![](resources/images/content/android/image18.png){width=35%} ![](resources/images/content/android/image24.png){width=35%}

## Instructions/ information buttons

A contextual guide opens the first time the user opens the App.

![](resources/images/content/android/image42.jpg){width=35%} ![](resources/images/content/android/image12.png){width=35%}

> **Tip**
>
> User is able to re-open<!-- PALD: unnecessary: (trigger)--> the instructions by clicking on the three dots at the top right corner of the screen.

## Filter

<!-- PALD alternative: "The Filter allows you to narrow down the data available from the ..." -->

Allows the user to filter data from the available programs based on periods (specific day, week, month, or year) or organisation units.

![](resources/images/content/android/image10.jpg){width=35%} ![](resources/images/content/android/image4.jpg){width=35%} ![](resources/images/content/android/image8.jpg){width=35%}

## Org unit

![](resources/images/content/android/image30.png){width=35%}

The whole organisation unit tree is displayed. Organisation units not available for data entry will be colored in grey. User must check the box to select the org unit wanted.

> **Caution**
>
> Mobile users are not expected to access the org. unit hierarchy of a whole country. Maximum number of org units is difficult to set, as the App does not set the limit, but the resources on the device (memory, processor). We could say below 250 org units should be safe, but still believe that is a very big number for a mobile use case.

## Differentiating tracker and event programs

![](resources/images/content/android/image33.png){width=35%}

> **Tip**
>
> An easy way to differentiate program is by looking at the word at the bottom left corner. The word 'Event' will always be in event programs. In tracker will appear the name of the tracked entity type (person, patient, building, etc.).

## Sharing Data

![](resources/images/content/android/image9.png){width=35%} ![](resources/images/content/android/image21.jpg){width=35%}

## Program with registration specific features

### Complete event

User must enter the event and then click the 'Done' button in the bottom right corner.

![](resources/images/content/android/image37.png){width=35%} ![](resources/images/content/android/image6.png){width=35%}

Three options will be presented:

1. Complete
2. Complete and add new
3. Complete later

![](resources/images/content/android/image5.png){width=35%}

> **Note**
>
> To verify if an event is completed look at the color of the box, it must be grey; and also have the label 'Event Completed' on it. It applies the same legend set than the web UI.

### Reset search fields

![](resources/images/content/android/image25.png){width=35%}

All tracker programs will take the user to the search screen. The search fields are used to look up for a specific entity, and the circled arrow at the top right corner to reset the search. All fields will be in blank for the user to make a new search.

### Search screen for all Tracked Entity Type

User is able to search across all program of one tracked entity type (TET). In the Search screen there is a drop down which shows all the programs available for the active TET (active TET is defined by the selection of the program in the home screen). That drop down should also have an option with TET name. (for example: person)

When the user selects that option, the search fields available will only be the TET attributes (no program specific attributes). Search restrictions do not apply, because they belong to the programs.

![](resources/images/content/android/image44.png){width=35%} ![](resources/images/content/android/image22.png){width=35%}

The search will return the found TEI's in the local database and also those in the Search OU of the user (when user is online). For those found online, the user will have to select them and the whole record will be downloaded.

> **Note**
>
> When configuring search org. units, make sure that your capture org. units are contained in your search org. units, to do that capture org. units have to be selected as well as search org. units.

### TEI Dashboard across programs

User can see the TEI dashboard without any program by selecting the TEI in the list if the search was without program.

The dashboards will show the list of active enrollments.

![](resources/images/content/android/image22.png){width=35%} ![](resources/images/content/android/image38.png){width=35%}

### TEI enrollment history and new enrollment

User is able to see the complete historical record of the TEI. By clicking on the top right corner icon they will see a list of Active enrollments, followed by a list of past enrollments (completed or cancelled), followed by the programs in which the TEI could be enrolled. User can also return to the 'TEI Dashboard without any program' by selecting 'All enrollments'.

Users should be able to navigate to the different enrollments from the list.

![](resources/images/content/android/image40.png){width=35%} ![](resources/images/content/android/image7.png){width=35%}

## Program without registration specific features

### Complete event and Field completion percentage

The percentage of data completed in each event is shown in the top right corner of an event when it is opened after first registration.

![](resources/images/content/android/image34.png){width=35%} ![](resources/images/content/android/image27.png){width=35%} ![](resources/images/content/android/image14.png){width=35%}

To complete an event click on the complete button. Three options will be offered

1. Complete
1. Complete and add new
1. Complete later

![](resources/images/content/android/image35.png){width=35%} ![](resources/images/content/android/image31.png){width=35%}

You can also complete by clicking by clicking on the three dots at the top right corner of the screen, then Details, then click on the percentage and select 'complete and close' button.

![](resources/images/content/android/image41.png){width=35%}

> **Note**
>
> The percentages will be adapted according to the effects of the program rules in the forms.

# NEW Settings

![New Settings](resources/images/content/android/image17.png){width=35%}

<!-- PALD: I don't think the next image adds to the manual
![](resources/images/content/android/image29.png){width=35%}
-->

**Data sync process**: User is able to choose from a drop-down list if the data entered in the app is uploaded to the server manually or scheduled every 15 min, 1 hour or 1 Day. By default the app will sync every 24h. This kind of Syncing includes new and updated events and TEI’s.

**Configuration sync process (Metadata syncing)**: User is able to choose from a drop-down list if the data entered in the app is uploaded to the server manually or scheduled every day or week. By default the app will sync every 24h. This sync will update changes in programs or configurations in web.

**Sync Parameters**: these parameters allow the user to specify the maximum number of TEI’s and events that can be stored in the local device. The user can also specify if limits apply per organisation unit or in total. Values can be set to default by clicking on “Reset to default”.

**Reserved Values**: this will specify the number of reserved Id's available in your device and will allow you to refill them.

**Open sync errors log**: The sync error log gives details about the error and is prepared to be shared with admins.

**Delete Data**: this action will delete local data without having to log out.

**Reset App**: this action will log out the user and delete all data and metadata. It is similar to resetting the App.

# Features supported

The following is a comprehensive list of all features available for Programs with and without registration in DHIS2, and notes on whether or not these have been implemented in the Android Capture app.

In the notes, ‘admin’ refers to someone who develops and configures a DHIS2 system, and ‘user’ refers to someone who uses apps to capture data, update it, and review reports.

|                        legend                         | description                                                                                             |
| :---------------------------------------------------: | :------------------------------------------------------------------------------------------------------ |
|                           ✓                           | Feature implemented                                                                                     |
|                        &ndash;                        | Feature not implemented&nbsp;(will be ignored)                                                          |
|                          n/a                          | Not applicable                                                                                          |
| ![](resources/images/content/android/image3_icon.png) | Work in progress. Feature not completely implemented yet or with unexpected behaviour already reported. |

## Program features

| Feature                                             | Description of feature                                                                                                                                                                                          | Program with registration | Program without registration | Notes on implementation                                                                                                                          |
| --------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------- | ---------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| Data entry method for option sets                   | Enables an admin to choose how options will be displayed on-screen across the entire program (ie either as drop-down lists or as radio buttons)                                                                 | &ndash;                   | &ndash;                      | This will be replaced by the new rendering options.                                                                                              |
| Combination of categories<br />(Attribute CatCombo) | Allows an admin to attach a Category (set of Options) to the Program, requiring users to categorize each enrolment. (This is called an Attribute Category Combination in DHIS2.)                                | ✓                         | ✓                            |                                                                                                                                                  |
| Data approval workflow                              | If an admin selects a pre-configured Data Approval Workflow, this will be used to enforce an &lsquo;approval&rsquo; or &lsquo;acceptance and approval&rsquo; cascade, enabling users to sign-off and lock data. | &ndash;                   | &ndash;                      |                                                                                                                                                  |
| Display front page list                             | If this option is ticked, the landing page displays a list of active enrolments once an Org Unit and Program have been chosen. (Attributes shown are those ticked as &lsquo;display in list&rsquo;.)            | ✓                         | n/a                          |                                                                                                                                                  |
| First stage appears on registration page            | When this option is chosen, then during Program enrolment, the screen for the first Program Stage is also shown (enrolment and the first event are captured together on one screen).                            | ✓                         | n/a                          | In Android, this is implemented by opening automatically the event after enrollment is completed, instead of adding the form to the same screen. |
| Completed events expiry days                        | Enables admins to lock data-entry a certain number of days after an event has been completed.                                                                                                                   | ✓                         | ✓                            |                                                                                                                                                  |
| Expiry period type + expiry days                    | Enables admins to set a period (eg weekly, monthly), and to lock data-entry a certain number of days after the end of the period.                                                                               | ✓                         | ✓                            |                                                                                                                                                  |
| Allow future enrolment dates                        | If ticked, this enables a user to enter future Enrolment dates during enrolment in a Program; otherwise users are restricted to today or past dates.                                                            | ✓                         | n/a                          |                                                                                                                                                  |

</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Allow future incident dates</p>
</td>
<td>
<p>If ticked, this enables a user to enter future Incident dates during enrolment in a Program; otherwise users are restricted to today or past dates.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Only enrol once (per tracked entity instance lifetime)</p>
</td>
<td>
<p>If ticked, prevents a TEI (eg person) from being enrolled in this Program more than once.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Show incident date</p>
</td>
<td>
<p>If ticked, both Enrolment and Incident dates are shown to the user for data capture; otherwise, only the Enrolment date is shown/captured.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Description of incident date</p>
</td>
<td>
<p>Allows an admin to customize the label that is used for the incident date.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Description of enrolment date</p>
</td>
<td>
<p>Allows an admin to customize the label that is used for the enrollment date.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Capture coordinates (enrolment)</p>
</td>
<td>
<p>Enables users to capture geographical coordinates during enrolment in the program.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Relationships &ndash; create and update</p>
</td>
<td>
<p>Enables users to create relationship types (eg mother-child, doctor-patient) which link two TEIs (eg patients); users can use this relationship to add links to other TEIs (eg patients).</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Relationships - shortcut link to add a relative</p>
</td>
<td>
<p>This enables admins to add a link for one specific relationship to the Dashboard, enabling users to directly create a linked TEI (eg &lsquo;child&rsquo; patient).</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>&ndash;</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Attributes &ndash; display in list</p>
</td>
<td>
<p>This setting determines whether an Attribute can be viewed in lists such as search results, and whether it can be seen in the shortlist of Attributes shown under &lsquo;Profile&rsquo; in the Dashboard.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>
<p><img title="" src="images/image1.png" alt="" />The first 3 attributes will be shown.</p>
</td>
</tr>
<tr>
<td>
<p>Attributes &ndash; mandatory</p>
</td>
<td>
<p>This enables an admin to mark an Attribute as &lsquo;mandatory&rsquo;, meaning the enrolment can&rsquo;t be saved until a value is captured.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Attributes &ndash; date in future</p>
</td>
<td>
<p>For date Attributes, this enables an admin to either prevent or allow future dates to be captured.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Registration form - default</p>
</td>
<td>
<p>The default data entry form simply lists all attributes defined for the TEI.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Registration form - custom</p>
</td>
<td>
<p>This enables an admin to define a custom layout (using HTML) for the registration form.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>&ndash;</p>
</td>
<td>
<p>Custom layouts are not supported in the Android App.</p>
</td>
</tr>
<tr>
<td>
<p>Program notifications</p>
</td>
<td>
<p>You can set up automated notifications for when program enrolments or completions occur, or at a set interval before/after incident or enrolment dates. These can be sent as internal DHIS2 messages, emails or SMSs.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>
<p><img title="" src="images/image1.png" alt="" />&nbsp;This functionality is executed on the server side, once data is received. Will not work when the app is working offline.</p>
</td>
</tr>
<tr>
<td>
<p>Program without registration</p>
</td>
<td>
<p>✓</p>
</td>
</tr>
<tr>
<td>
<p>Activate/deactivate enrolment</p>
</td>
<td>
<p>Deactivating a TEI dashboard will cause the TEI to become &ldquo;read-only&rdquo;. This means you can&rsquo;t enter data, enrol the TEI or edit the TEI&rsquo;s profile.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Complete allowed only if validation passes</p>
</td>
<td>
<p>Select check box to enforce that an event created by this program is only completed when all validation rules have passed.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>&ndash;</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Program without registration</p>
</td>
<td>
<p>&ndash;</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Org unit opening/closing dates</p>
</td>
<td>
<p>Enables an admin to set opening and closing dates for an Org Unit, which blocks users from adding or editing events outside of these dates.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Program without registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Data sharing levels / Can capture data</p>
</td>
<td>
<p>Enables the user to add new event, edit data and delete events in the program.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Program without registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Data sharing levels / Can view data</p>
</td>
<td>
<p>Enables the user to see list of events within the program.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Program without registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Data sharing levels / No access</p>
</td>
<td>
<p>The user won&rsquo;t be able to see the program</p>
<p>&nbsp;</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Program without registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td colspan="5" rowspan="1">
<h3>Program stage features</h3>
</td>
</tr>
<tr>
<td>
<p>Event form - default</p>
</td>
<td>
<p>The default data entry form simply lists all attributes belonging to a program registration</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Program without registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Event form &ndash; section forms</p>
<p>&nbsp;</p>
</td>
<td>
<p>Sections forms allow you to split existing forms into segments</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Program without registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Event form &ndash; custom</p>
</td>
<td>
<p>Define a custom event form as a HTML page.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>&ndash;</p>
</td>
<td>
<p>Custom layouts are not supported in the Android App.</p>
</td>
</tr>
<tr>
<td>
<p>Program without registration</p>
</td>
<td>
<p>&ndash;</p>
</td>
</tr>
<tr>
<td>
<p>Program stage notifications</p>
<p>&nbsp;</p>
</td>
<td>
<p>You can set up automated notifications for when the program stage is completed, or at a set interval before/after scheduled event dates. These can be sent as internal DHIS2 messages, emails or SMS messages.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>
<p><img title="" src="images/image1.png" alt="" />&nbsp;This functionality is executed on the server side, once data is received. Will not work when the app is working offline.</p>
</td>
</tr>
<tr>
<td>
<p>Repeatable</p>
</td>
<td>
<p>If Repeatable Is ticked, this stage can be repeated during one program enrollment. If t is not, then the stage can only happen once during a program enrollment.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Repeatable + Standard interval days</p>
</td>
<td>
<p>The system will suggest the due date as the calculation of the last event + standard interval dates.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>&nbsp;</p>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Period type</p>
</td>
<td>
<p>Enables an admin to configure a set of periods (e.g. weeks or months) for each event in the program stage, instead of just a date. When creating events, users are then asked to choose a period (instead of a date) for each new event they create within that program stage.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Auto-generate event</p>
</td>
<td>
<p>If ticked, a &lsquo;booking&rsquo; is generated for this Program Stage upon enrolment, based on the &lsquo;Scheduled days from start&rsquo;.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Generate events based on enrolment date (not incident date)</p>
</td>
<td>
<p>Check on it for auto-generating due dates of events from program-stages of this program based on the enrollment date. If it is not checked, the due dates are generated based on incident date.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Open data entry form after enrolment + report date to use</p>
</td>
<td>
<p>If selected, once an enrolment is complete, an event&rsquo;s data entry form should open directly afterwards.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Ask user to complete program when stage is complete.</p>
</td>
<td>
<p>If selected, upon completing the program stage the user should be asked to complete the program. (This setting is ignored if &lsquo;Ask user to create new event&hellip;&rsquo; is also ticked.)</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Ask user to create new event when stage is complete</p>
</td>
<td>
<p>If selected, when the Program Stage is completed the user is prompted to book.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Hide due date</p>
</td>
<td>
<p>Only shows the actual date for events, hiding the due date.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Capture coordinates (event)/ Feature Type-Point</p>
</td>
<td>
<p>Enables the user to capture geographical coordinates when each event is created &ndash; particularly useful in devices that have GPS (eg Android), as instead of having to type in coordinates, the user can automatically populate them with the press of a button.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Program without registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Description of report date</p>
</td>
<td>
<p>Allows an admin to customize the label that is used for the event&rsquo;s date.</p>
<p>&nbsp;</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Program without registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Data elements &ndash; compulsory</p>
</td>
<td>
<p>This enables an admin to mark a data element as &lsquo;compulsory&rsquo;, meaning an event can&rsquo;t be saved until a value is captured.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Program without registration</p>
</td>
<td>
<p>✓</p>
</td>
</tr>
<tr>
<td>
<p>Data elements &ndash; allow provided elsewhere</p>
</td>
<td>
<p>On the form, this places a tick-box next to the selected data element, and enables previous data to be pulled into the data element.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>&ndash;</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Data elements &ndash; display in reports</p>
</td>
<td>
<p>Displays the value of this data element into the single event without registration data entry function</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>&ndash;</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Program without registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Data elements &ndash; date in future</p>
</td>
<td>
<p>For date Data Elements, this enables an admin to either prevent or allow future dates to be captured.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Program without registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Data elements &ndash; render options as radio</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</td>
<td>
<p>Enables an admin to choose how options will be displayed on-screen for each Data Element<br />(i.e. either as drop-down list or as radio buttons).</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>&ndash;</p>
</td>
<td>
<p>This will be replaced by the new rendering options.</p>
</td>
</tr>
<tr>
<td>
<p>Program without registration</p>
</td>
<td>
<p>&ndash;</p>
</td>
</tr>
<tr>
<td>
<p>Block entry form after completed</p>
</td>
<td>
<p>Prevents all edits to events after they have been completed.</p>
</td>
<td>
<p>Program with registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Program without registration</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Event comments</p>
</td>
<td>
<p>Enables the user to add overall comments to an event. These comments are cumulative (new comments are added below existing comments).</p>
</td>
<td>
<p>Program without registration</p>
</td>
<td>
<p>&ndash;</p>
</td>
<td>&nbsp;</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<hr />
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table>
<tbody>
<tr>
<td>
<p>Feature</p>
</td>
<td>
<p>Description of feature</p>
</td>
<td>
<p>Status</p>
</td>
<td>
<p>Notes on implementation</p>
</td>
</tr>
<tr>
<td colspan="4" rowspan="1">
<h3>Program with registration: Tracked entity dashboard features</h3>
</td>
</tr>
<tr>
<td>
<p>Messaging</p>
</td>
<td>
<p>Enables users to send ad-hoc free-text messages to TEIs (e.g. patients) via SMS or email.</p>
</td>
<td>
<p>&ndash;</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Mark for follow-up (button with exclamation triangle)</p>
</td>
<td>
<p>Enables a user to mark a TEI (e.g. patient) as requiring follow-up.</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Display TEI audit history</p>
</td>
<td>
<p>Enables a user to see a history of all edits to Attributes for this TEI (e.g. patient).</p>
</td>
<td>
<p>&ndash;</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Inline program indicators</p>
</td>
<td>
<p>If a program indicator &lsquo;display in form&rsquo; box is ticked, the indicator appears on the Tracker Capture dashboard, and is updated live as data capture occurs.</p>
</td>
<td>
<p>✓</p>
</td>
<td>
<p>! <a href="https://www.google.com/url?q=https://jira.dhis2.org/browse/ANDROAPP-1723&amp;sa=D&amp;ust=1557433016354000">ANDROAPP-1723</a>: Some program indicators are not been shown even if display in form is selected</p>
</td>
</tr>
<tr>
<td>
<p>Delete events</p>
</td>
<td>
<p>Enables the user to delete an event.</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Schedule events</p>
</td>
<td>
<p>In the event generation dialogue, the user should also see the option to schedule an event. The process is like creating an event, but the user will be sent back to the TEI dashboard after the event is scheduled.</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Referral of patients</p>
</td>
<td>
<p>In the event generation dialogue, the user should also see the option to refer a patient. The process is like creating/scheduling an event, but the user can change the org unit and has to specify if is a one-time or permanent referral.<br /><br />One time will just create the event in the specified OU,</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Reset search fields</p>
</td>
<td>
<p>User is able to clean up the search fields by pressing on the rounded arrow icon on the top right corner of the search screen.</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Search screen for all TE Type</p>
</td>
<td>
<p>User is able to search across all program of one tracked entity type (TET). In the Search screen there is a drop down which shows all the programs available for the active TET (active TET is defined by the selection of the program in the home screen). That drop down should also have an option with TET name. (Person in our server)<br /><br />When the user selects that option, the search fields available will only be the TET attributes (no program specific attributes). All search restrictions do not apply, because they belong to the programs.</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>TEI Dashboard without program</p>
</td>
<td>
<p>User can see the TEI dashboard without any program by selecting the TEI in the list if the search was without program.<br /><br />The dashboards will show the TET attributes in the details card followed by a list of active enrollments.</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>TEI enrollment history and new enrollment</p>
</td>
<td>
<p>User is able to see the complete historical record of the TEI. By clicking on the top right corner icon they will see a list of Active enrolments, followed by a list of past enrolments (completed or cancelled), followed by the programs in which the TEI could be enrolled.<br /><br />Users should be able to navigate to the different enrolments from the list.</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td colspan="4" rowspan="1">
<h3>Program without registration: Single event program specific features</h3>
</td>
</tr>
<tr>
<td>
<p>Events listing (grid)</p>
<p>&nbsp;</p>
</td>
<td>
<p>A listing of existing events that is displayed once a program is selected.</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Sort and filter events in grid</p>
</td>
<td>
<p>Allows the user to sort listed events, or to filter events based on keywords or specific ranges of dates/numbers.</p>
</td>
<td>
<p>✓</p>
</td>
<td>
<p><img title="" src="images/image1.png" alt="" />&nbsp;Events are sorted chronologically. The user can filter by period and organisation unit.</p>
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td>
<p>Edit events in grid</p>
</td>
<td>
<p>Allows the user to directly edit the data elements shown in the events listing/grid.</p>
</td>
<td>
<p>&ndash;</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>View event audit history</p>
</td>
<td>
<p>Enables the user to see a history of all changes to the event&rsquo;s data elements.</p>
</td>
<td>
<p>&ndash;</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Show/hide columns [in event list/grid]</p>
</td>
<td>
<p>Enables the user to modify the data elements shown in the event listing/grid (applies to that user only).</p>
</td>
<td>
<p>&ndash;</p>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
<p>Field completion percentage</p>
</td>
<td>
<p>The percentage of data completed in each event is shown in the top right corner of an event when it is opened after first registration.<br /><br />The percentages should be adapted to the effects of the program rules in the forms.</p>
</td>
<td>
<p>✓</p>
</td>
<td>
<p><img title="" src="images/image1.png" alt="" />The percentage of completion does not take into account the not-supported value types in the forms.</p>
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td>
<p>Delete events</p>
</td>
<td>
<p>Enables the user to delete an event.</p>
</td>
<td>
<p>✓</p>
</td>
<td>&nbsp;</td>
</tr>
</tbody>
</table>

# Value types supported

The following is a comprehensive list of all value types available in DHIS2, and notes on whether or not these have been implemented in the Android Capture app.

Any issues around using a particular feature with Android are highlighted with an exclamation mark \!.

|                                                       |                                                                                                        |
| :---------------------------------------------------: | :----------------------------------------------------------------------------------------------------- |
|                           ✓                           | Value type implemented                                                                                 |
|                        &ndash;                        | Value type not implemented, but will be safely ignored (if not compulsory)                             |
| ![](resources/images/content/android/image3_icon.png) | Work in progress. Feature not completely implemented yet or with unexpected behaviour already reported |

| Value type               | Description of value type                                                                                 |               Program with registration               |               Program with registration               |             Program without registration              | Notes on implementation |
| :----------------------- | :-------------------------------------------------------------------------------------------------------- | :---------------------------------------------------: | :---------------------------------------------------: | :---------------------------------------------------: | :---------------------- |
|                          |                                                                                                           |                    **Attributes**                     |                   **Data Elements**                   |                   **Data Elements**                   |
| Time                     | Time only                                                                                                 |                           ✓                           |                           ✓                           |                           ✓                           |                         |
| Date & Time              | Date plus time                                                                                            |                           ✓                           |                           ✓                           |                           ✓                           |                         |
| Date                     | Date only                                                                                                 |                           ✓                           |                           ✓                           |                           ✓                           |                         |
| Age                      | Enables entry of either an age in years/months/days or a date-of-birth (both are stored as date-of-birth) |                           ✓                           |                           ✓                           |                           ✓                           |                         |
| Phone number             | A valid phone number                                                                                      |                           ✓                           |                           ✓                           |                           ✓                           |                         |
| Adresses électroniques                    | An email address in a valid format                                                                        |                           ✓                           |                           ✓                           |                           ✓                           |                         |
| Yes/no                   | Boolean yes/no (or no response)                                                                           |                           ✓                           |                           ✓                           |                           ✓                           |                         |
| Yes only                 | Yes or no response                                                                                        |                           ✓                           |                           ✓                           |                           ✓                           |                         |
| Number                   | Any valid number, including decimals                                                                      |                           ✓                           |                           ✓                           |                           ✓                           |                         |
| Integer                  | Any integer (whole numbers, no decimals)                                                                  |                           ✓                           |                           ✓                           |                           ✓                           |                         |
| Positive Integer         | Only positive integers (no zero or negative values)                                                       |                           ✓                           |                           ✓                           |                           ✓                           |                         |
| Positive or Zero Integer | Only zero or positive integers (no negative values)                                                       |                           ✓                           |                           ✓                           |                           ✓                           |                         |
| Negative Integer         | Only negative integers (no zero or positive values)                                                       |                           ✓                           |                           ✓                           |                           ✓                           |                         |
| Percentage               | Any decimal value between 0 and 100                                                                       |                           ✓                           |                           ✓                           |                           ✓                           |                         |
| Unit interval            | Any decimal value between 0 and 1                                                                         |                           ✓                           |                           ✓                           |                           ✓                           |                         |
| Text                     | Text (length of text up to 50,000 characters)                                                             |                           ✓                           |                           ✓                           |                           ✓                           |                         |
| Long text                | Text (no constraints on length)                                                                           |                           ✓                           |                           ✓                           |                           ✓                           |                         |
| Letter                   | A single letter                                                                                           |                           ✓                           |                           ✓                           |                           ✓                           |                         |
| File                     | Enables upload of files in various formats (requires appropriate storage to be configured)                | ![](resources/images/content/android/image3_icon.png) | ![](resources/images/content/android/image3_icon.png) | ![](resources/images/content/android/image3_icon.png) |                         |
| Organisation unit        | Enables selection of a DHIS2 organisation unit as the chosen value                                        |                           ✓                           |                           ✓                           |                           ✓                           |                         |
| Tracker Associate        | Enables selection of an existing Tracker 'tracked entity instance' (e.g. a person) as the value           |                        &ndash;                        |                        &ndash;                        |                        &ndash;                        |                         |
| Username                 | Enables selection of a valid DHIS2 username as the value                                                  | ![](resources/images/content/android/image3_icon.png) | ![](resources/images/content/android/image3_icon.png) | ![](resources/images/content/android/image3_icon.png) |                         |
| Coordinate               | Enables manual entry of geographical coordinates (doesn't enable automatic capture of coordinates)        |                           ✓                           |                           ✓                           |                           ✓                           |                         |
| URL                      | Enables manual entry of a URL.                                                                            |                           ✓                           |                           ✓                           |                           ✓                           |                         |
| Image                    | Enables upload of images                                                                                  | ![](resources/images/content/android/image3_icon.png) | ![](resources/images/content/android/image3_icon.png) | ![](resources/images/content/android/image3_icon.png) |                         |

# Program rules supported in Android Capture App

The following is a comprehensive list of all Program rule components (variable types and actions) available in DHIS2, and notes on whether or not these have been implemented in the Android Capture app.

Any issues around using a particular feature with Android are highlighted with an exclamation mark !.

Every time the icon ![](resources/images/content/android/image1_icon.png) is presented, a tip will be provided for a better use and understanding of the app.

<table>
<tbody>
<tr>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>Component implemented</p>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>&ndash;</p>
</td>
<td colspan="1" rowspan="1">
<p>Component not implemented (rule fails)</p>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>N/A</p>
</td>
<td colspan="1" rowspan="1">
<p>Non-applicable</p>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>Work in progress. Feature not completely implemented yet or with unexpected behaviour already reported .</p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<h3>Program rule Variable source types supported</h3>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table>
<tbody>
<tr>
<td colspan="1" rowspan="1">
<p>Variable type</p>
</td>
<td colspan="1" rowspan="1">
<p>Description of variable type</p>
</td>
<td colspan="1" rowspan="1">
<p>Program Type</p>
</td>
<td colspan="1" rowspan="1">
<p>Status</p>
</td>
<td colspan="1" rowspan="1">
<p>Notes on implementation</p>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Data element from the newest event for a program stage</p>
</td>
<td colspan="1" rowspan="1">
<p>This source type works the same way as &lsquo;Data element from the newest event in the current program&rsquo;, except that it only evaluates values from a specific program stage.</p>
</td>
<td colspan="1" rowspan="1">
<p>Program with registration</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="2">
<p>Data element from the newest event in the current program</p>
</td>
<td colspan="1" rowspan="1">
<p>This source type is populated with the newest data value collected for the specified data element within the enrolment.</p>
</td>
<td colspan="1" rowspan="1">
<p>Program with registration</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>This program rule variable will be populated with the newest data value found within the 10 newest events in the same organization unit.</p>
</td>
<td colspan="1" rowspan="1">
<p>Program without registration</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="2">
<p>Data element in current event</p>
</td>
<td colspan="1" rowspan="1">
<p>Variable takes the data element&rsquo;s value from the current event.</p>
</td>
<td colspan="1" rowspan="1">
<p>Program with registration</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Contains the data value from the same event that the user currently has open.</p>
</td>
<td colspan="1" rowspan="1">
<p>Program without registration</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="2">
<p>Data element from previous event</p>
</td>
<td colspan="1" rowspan="1">
<p>Program rule variables with this source type will contain the newest value from all previous events for the specified data element. The event currently open is not evaluated</p>
</td>
<td colspan="1" rowspan="1">
<p>Program with registration</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>This program rule variable will be populated with the newest data value found within the 10 events preceding the current event date (i.e. not including the current event).</p>
</td>
<td colspan="1" rowspan="1">
<p>Program without registration</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Tracked entity attribute</p>
</td>
<td colspan="1" rowspan="1">
<p>Populates the program rule variable with a specified tracked entity attribute for the current TEI (e.g. current patient).</p>
</td>
<td colspan="1" rowspan="1">
<p>Program with registration</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="2">
<p>Calculated value</p>
</td>
<td colspan="1" rowspan="2">
<p>Calculated value</p>
</td>
<td colspan="1" rowspan="1">
<p>Program with registration</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Program without registration</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
</tbody>
</table>
<h3>&nbsp;</h3>
<hr />
<h3>&nbsp;</h3>
<h3>Program rule Actions supported (Data element in current event)</h3>
<p>!<a href="https://www.google.com/url?q=https://jira.dhis2.org/browse/ANDROAPP-1793&amp;sa=D&amp;ust=1557433016465000">ANDROAPP-1793</a>&nbsp;Program Rules support names and codes for option sets variables from 1.2.1</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table>
<tbody>
<tr>
<td colspan="1" rowspan="1">
<p>Action</p>
</td>
<td colspan="1" rowspan="1">
<p>Description of action</p>
</td>
<td colspan="1" rowspan="1">
<p>Program with registration</p>
</td>
<td colspan="1" rowspan="1">
<p>Program without registration</p>
</td>
<td colspan="1" rowspan="1">
<p>Notes on implementation</p>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Hide Field</p>
</td>
<td colspan="1" rowspan="1">
<p>Hides an individual data element if the rule is true.</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>! If you change the value after the field is hidden, it will revert the action depending on the value type rule engine default value. We recommend its use combined with the hasvalue function.</p>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Hide Section</p>
</td>
<td colspan="1" rowspan="1">
<p>Hides a whole section and its data elements if the rule is true.</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Hide Option</p>
</td>
<td colspan="1" rowspan="1">
<p>hide a single option for an option set in a given data element/tracked entity attribute.</p>
<p>When combined with show option group the hide option takes precedence</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Hide Option Group</p>
</td>
<td colspan="1" rowspan="1">
<p>hide all options in a given option group and data element/tracked entity attribute</p>
<p>When combined with show option group the hide option takes precedence</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Show option group</p>
</td>
<td colspan="1" rowspan="1">
<p>Used to show only options from a given option group in a given data element/tracked entity attribute. To show an option group implicitly hides all options that is not part of the group(s) that is shown.</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Assign Value</p>
</td>
<td colspan="1" rowspan="1">
<p>Assigns a value to a specified data element or attribute if the rule is true.</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Show Warning</p>
</td>
<td colspan="1" rowspan="1">
<p>Shows pop-up warning to the user if rule is true; does not prevent the user from continuing.</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Warning on Complete</p>
</td>
<td colspan="1" rowspan="1">
<p>Shows a pop-up warning to the user if, at the point &lsquo;complete&rsquo; is clicked, a rule is true; this does not prevent the user from continuing.</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Show Error</p>
</td>
<td colspan="1" rowspan="1">
<p>Shows a pop-up error message to the user as soon as a rule is true, and prevents user from continuing until rule is no longer true.</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Error on Complete</p>
</td>
<td colspan="1" rowspan="1">
<p>Shows a pop-up warning to the user if, when &lsquo;complete&rsquo; is clicked, a rule is true, and prevents user from continuing until rule is no longer true.</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Make Field Mandatory</p>
</td>
<td colspan="1" rowspan="1">
<p>Sets a data element as &lsquo;mandatory&rsquo; if rule is true.</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Display Text</p>
</td>
<td colspan="1" rowspan="1">
<p>Used to display information that is not an error or a warning, for example feedback.</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image1.png" alt="" />Event Programs:&nbsp;text is displayed in all sections</p>
<p>&nbsp;</p>
<p><img title="" src="images/image1.png" alt="" />Tracker Programs:&nbsp;</p>
<ol start="1">
<li>Rules triggered by &lsquo;Current event variables are showing the text ONLY in the form.</li>
<li>Rules triggered by &lsquo;Built-in variables&rsquo; display text ONLY on the indicators tab</li>
<li>The other Program rule variables are displaying the text in BOTH the form and the indicator tab.</li>
</ol>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Display Key Value/Pair</p>
</td>
<td colspan="1" rowspan="1">
<p>Used to display information drawn from a data element.</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image1.png" alt="" />Event Programs:&nbsp;key value / pair is not displayed in event programs</p>
<p>&nbsp;</p>
<p><img title="" src="images/image1.png" alt="" />Tracker Programs:&nbsp;Rules triggered by &lsquo;Current event variables are not showing the key value / pair</p>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Hide&nbsp;Program Stage</p>
</td>
<td colspan="1" rowspan="1">
<p>Hides a whole program stage from the user if the rule is true</p>
</td>
<td colspan="1" rowspan="1">
<p>N/A</p>
</td>
<td colspan="1" rowspan="1">
<p>N/A</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image1.png" alt="" />Action rule only supported for&nbsp;Data element from the newest event in the current program variable type.</p>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Create event</p>
</td>
<td colspan="1" rowspan="1">
<p>Create an event within the same enrollment.</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>This action will be available in future versions of DHIS2. <a href="https://www.google.com/url?q=https://jira.dhis2.org/browse/ANDROAPP-1131&amp;sa=D&amp;ust=1557433016497000">ANDROAPP-1131</a></p>
</td>
</tr>
</tbody>
</table>
<hr />
<h3>Program rule Actions supported (Other variables)</h3>
<p>!<a href="https://www.google.com/url?q=https://jira.dhis2.org/browse/ANDROAPP-1793&amp;sa=D&amp;ust=1557433016498000">ANDROAPP-1793</a>&nbsp;Program Rules support names and codes for option sets variables from 1.2.1</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table>
<tbody>
<tr>
<td colspan="1" rowspan="1">
<p>Action</p>
</td>
<td colspan="1" rowspan="1">
<p>Description of action</p>
</td>
<td colspan="2" rowspan="1">
<p>Data element from the newest event in the current program</p>
</td>
<td colspan="2" rowspan="1">
<p>Data element from previous event</p>
</td>
<td colspan="1" rowspan="1">
<p>Data element from the newest event for a program stage</p>
</td>
<td colspan="1" rowspan="1">
<p>Tracked entity attribute</p>
</td>
<td colspan="1" rowspan="1">
<p>Notes on implementation</p>
</td>
</tr>
<tr>
<td colspan="2" rowspan="1">&nbsp;</td>
<td colspan="1" rowspan="1">
<p>Program with registration</p>
</td>
<td colspan="1" rowspan="1">
<p>Program without registration</p>
</td>
<td colspan="1" rowspan="1">
<p>Program with registration</p>
</td>
<td colspan="1" rowspan="1">
<p>Program without registration</p>
</td>
<td colspan="1" rowspan="1">
<p>Program with registration</p>
</td>
<td colspan="1" rowspan="1">
<p>Program with registration</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Hide Field</p>
</td>
<td colspan="1" rowspan="1">
<p>Hides an individual data element if the rule is true.</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Hide Section</p>
</td>
<td colspan="1" rowspan="1">
<p>Hides a whole section and its data elements if the rule is true.</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Hide Option</p>
</td>
<td colspan="1" rowspan="1">
<p>hide a single option for an option set in a given data element/tracked entity attribute.</p>
<p>When combined with show option group the hide option takes precedence</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Hide Option Group</p>
</td>
<td colspan="1" rowspan="1">
<p>hide all options in a given option group and data element/tracked entity attribute</p>
<p>When combined with show option group the hide option takes precedence</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Assign Value</p>
</td>
<td colspan="1" rowspan="1">
<p>Assigns a value to a specified data element or attribute if the rule is true.</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Show Warning</p>
</td>
<td colspan="1" rowspan="1">
<p>Shows pop-up warning to the user if rule is true; does not prevent the user from continuing.</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Warning on Complete</p>
</td>
<td colspan="1" rowspan="1">
<p>Shows a pop-up warning to the user if, at the point &lsquo;complete&rsquo; is clicked, a rule is true; this does not prevent the user from continuing.</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>N/A</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Show Error</p>
</td>
<td colspan="1" rowspan="1">
<p>Shows a pop-up error message to the user as soon as a rule is true, and prevents user from continuing until rule is no longer true.</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image1.png" alt="" />The rule will let the user to finish the enrollment but will prevent from completing the events until rule is no longer true.</p>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Error on Complete</p>
</td>
<td colspan="1" rowspan="1">
<p>Shows a pop-up warning to the user if, when &lsquo;complete&rsquo; is clicked, a rule is true, and prevents user from continuing until rule is no longer true.</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>N/A</p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Make Field Mandatory</p>
</td>
<td colspan="1" rowspan="1">
<p>Sets a data element as &lsquo;mandatory&rsquo; if rule is true.</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">&nbsp;</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Display Text</p>
</td>
<td colspan="1" rowspan="1">
<p>Used to display information that is not an error or a warning, for example feedback.</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image1.png" alt="" />Event Programs:&nbsp;text is displayed in all sections</p>
<p>&nbsp;</p>
<p><img title="" src="images/image1.png" alt="" />Tracker Programs:&nbsp;</p>
<ol start="1">
<li>Rules triggered by &lsquo;Current event&rsquo; variables are showing the text ONLY in the form.</li>
<li>Rules triggered by &lsquo;Built-in variables&rsquo; display text ONLY on the indicators tab</li>
<li>The other Program rule variables are displaying the text in BOTH the form and the indicator tab.</li>
</ol>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Display Key Value/Pair</p>
</td>
<td colspan="1" rowspan="1">
<p>Used to display information drawn from a data element.</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image1.png" alt="" />Event Programs:&nbsp;key value / pair is not displayed in event programs</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p><img title="" src="images/image1.png" alt="" />Tracker Programs:&nbsp;Rules triggered by built in variables or any variable type, with the exception of &lsquo;Current event&rsquo;, display the key value / pair ONLY in the indicators tab</p>
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Hide&nbsp;Program Stage</p>
</td>
<td colspan="1" rowspan="1">
<p>Hides a whole program stage from the user if the rule is true</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p>N/A</p>
</td>
<td colspan="1" rowspan="1">
<p>N/A</p>
</td>
<td colspan="1" rowspan="1">
<p>N/A</p>
</td>
<td colspan="1" rowspan="1">
<p>N/A</p>
</td>
<td colspan="1" rowspan="1">
<p>✓</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image1.png" alt="" />Action rule only supported for&nbsp;Data element from the newest event in the current program variable type</p>
<p><img title="" src="images/image1.png" alt="" />If the event is auto-generated, the rule won&rsquo;t apply.</p>
</td>
</tr>
<tr>
<td colspan="1" rowspan="1">
<p>Create event</p>
</td>
<td colspan="1" rowspan="1">
<p>Create an event within the same enrollment.</p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p><img title="" src="images/image3.png" alt="" /></p>
</td>
<td colspan="1" rowspan="1">
<p>This action will be available in future versions of the App. <a href="https://www.google.com/url?q=https://jira.dhis2.org/browse/ANDROAPP-1131&amp;sa=D&amp;ust=1557433016558000">ANDROAPP-1131</a></p>
</td>
</tr>
</tbody>
</table>

## Functions to use in program rule expressions

| Function            | Description of function                                                                                                                                                                                                                                  | Status                                                | Notes on implementation |
| ------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------- | ----------------------- |
| d2:ceil             | Rounds the input argument up to the nearest whole number.                                                                                                                                                                                                | ✓                                                     |                         |
| d2:floor            | Rounds the input argument down to the nearest whole number.                                                                                                                                                                                              | ✓                                                     |                         |
| d2:round            | Rounds the input argument to the nearest whole number.                                                                                                                                                                                                   | ✓                                                     |                         |
| d2:modulus          | Produces the modulus when dividing the first with the second argument.                                                                                                                                                                                   | ✓                                                     |                         |
| d2:zing             | Evaluates the argument of type number to zero if the value is negative, otherwise to the value itself.                                                                                                                                                   | ✓                                                     |                         |
| d2:oizp             | Evaluates the argument of type number to one if the value is zero or positive, otherwise to zero.                                                                                                                                                        | ✓                                                     |                         |
| d2:concatenate      | Produces a string concatenated string from the input parameters. Supports any number of parameters.                                                                                                                                                      | ✓                                                     |                         |
| d2:daysBetween      | Produces the number of days between the first and second argument. If the second argument date is before the first argument,  the return value will be the negative number of days between the two dates. The static date format is 'yyyy-MM-dd'.        | ✓                                                     |                         |
| d2:weeksBetween     | Produces the number of full weeks between the first and second argument. If the second argument date is before the first argument,  the return value will be the negative number of weeks between the two dates. The static date format is 'yyyy-MM-dd'. | ✓                                                     |                         |
| d2:monthsBetween    | Produces the number of full months between the first and second argument. If the second argument date is before the first argument the return value will be the negative number of months between the two dates. The static date format is 'yyyy-MM-dd'. | ✓                                                     |                         |
| d2:yearsBetween     | Produces the number of years between the first and second argument. If the second argument date is before the first argument, the return value will be the negative number of years between the two dates. The static date format is 'yyyy-MM-dd'.       | ✓                                                     |                         |
| d2:addDays          | Produces a date based on the first argument date, adding the second argument number of days.                                                                                                                                                             | ✓                                                     |                         |
| d2:count            | Counts the number of values that is entered for the source field in the argument.                                                                                                                                                                        | ✓                                                     |                         |
| d2:countIfValue     | Counts the number of matching values that is entered for the source field in the first argument. Only occurrences that matches the second argument is counted.                                                                                           | ✓                                                     |                         |
| d2:countIfZeroPos   | Counts the number of values that is zero or positive entered for the source field in the argument. The source field parameter is the name of one of the defined source fields in the program.                                                            | ✓                                                     |                         |
| d2:hasValue         | Returns the number of numeric zero and positive values among the given object arguments. Can be provided with any number of arguments.                                                                                                                   | ✓                                                     |                         |
| d2:validatePattern  | Evaluates to true if the input text is an exact match with the supplied regular expression pattern. The regular expression needs to be escaped.                                                                                                          | ✓                                                     |                         |
| d2:left             | Evaluates to the left part of a text, num-chars from the first character.                                                                                                                                                                                | ✓                                                     |                         |
| d2:right            | Evaluates to the right part of a text, num-chars from the last character.                                                                                                                                                                                | ✓                                                     |                         |
| d2:substring        | Evaluates to the part of a string specified by the start and end character number.                                                                                                                                                                       | ✓                                                     |                         |
| d2:split            | Split the text by delimiter, and keep the nth element (0 is the first).                                                                                                                                                                                  | ✓                                                     |                         |
| d2:length           | Find the length of a string.                                                                                                                                                                                                                             | ✓                                                     |                         |
| d2:zpvc             | Returns the number of numeric zero and positive values among the given object arguments. Can be provided any number of arguments.                                                                                                                        | ✓                                                     |                         |
| d2:inOrgUnitGroup\* | Evaluates whether the current organization unit is in the argument group. The argument can be defined with either ID or organization unit group code.                                                                                                    | ![](resources/images/content/android/image3_icon.png) |                         |

\*Available in DHIS2 v2.30

---

## Standard variables to use in program rule expressions

![](resources/images/content/android/image1_icon.png)Available in DHIS2 v2.30

| Variable              | Description of function                                                                                                                                                                                                                                                 | Status | Notes on implementation |
| --------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------ | ----------------------- |
| V{current_date}       | Contains the current date whenever the rule is executed.                                                                                                                                                                                                                | ✓      |                         |
| V{event_date}         | Contains the event date of the current event execution. Will not have a value at the moment the rule is executed as part of the registration form.                                                                                                                      | ✓      |                         |
| V{due_date} \*        | This variable will contain the current date when the rule is executed. Note: This means that the rule might produce different results at different times, even if nothing else has changed.                                                                             | ✓      |                         |
| V{event_count}        | Contains the total number of events in the enrollment.                                                                                                                                                                                                                  | ✓      |                         |
| V{enrollment_date} \* | Contains the enrollment date of the current enrollment. Will not have a value for single event programs.                                                                                                                                                                | ✓      |                         |
| V{incident_date} \*   | Contains the incident date of the current enrollment. Will not have a value for single event programs.                                                                                                                                                                  | ✓      |                         |
| V{enrollment_id} \*   | Universal identifier string(UID) of the current enrollment. Will not have a value for single event programs.                                                                                                                                                            | ✓      |                         |
| V{event_id}           | Universal identifier string(UID) of the current event context. Will not have a value at the moment the rule is executed as part of the registration form.                                                                                                               | ✓      |                         |
| V{orgunit_code}       | Contains the code of the orgunit that is linked to the current enrollment. For single event programs the code from the current event Org Unit will be used instead.                                                                                                     | ✓      |                         |
| V{environment}        | Contains a code representing the current runtime environment for the rules. The possible values is "WebClient", "AndroidClient" and "Server". Can be used when a program rule is only supposed to run in one or more of the client types.                               | ✓      |                         |
| V{program_stage_id}   | Contains the ID of the current program stage that triggered the rules. This can be used to run rules in specific program stages, or avoid execution in certain stages. When executing the rules in the context of a TEI registration form the variable will be empty.   | ✓      |                         |
| V{program_stage_name} | Contains the name of the current program stage that triggered the rules. This can be used to run rules in specific program stages, or avoid execution in certain stages. When executing the rules in the context of a TEI registration form the variable will be empty. | ✓      |                         |

\*Only applies to tracker

---

# Program Indicators

The following is a comprehensive list of all Program indicator variables available in DHIS2, and notes on whether or not these have been implemented in the Android Capture app.

Any issues around using a particular feature with Android are highlighted with an exclamation mark \!.

Everytime the icon ![](resources/images/content/android/image1_icon.png) is presented, a tip will be provided for a better use and understanding of the app.

---

|                                                       |                                                                                                          |
| ----------------------------------------------------- | -------------------------------------------------------------------------------------------------------- |
| ✓                                                     | Component implemented                                                                                    |
| –                                                     | Component not implemented (rule fails)                                                                   |
| N/A                                                   | Non-applicable                                                                                           |
| ![](resources/images/content/android/image3_icon.png) | Work in progress. Feature not completely implemented yet or with unexpected behaviour already reported . |

## Variables to use in a program indicator expression or filter

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>Variable type</p></td>
<td><p>Description of variable type</p></td>
<td><p>Status</p></td>
<td><p>Notes on implementation</p></td>
</tr>
<tr class="even">
<td><p>Event Date<br />
event_date</p></td>
<td><p>The date of when the event took place.</p></td>
<td><p>✓</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Due Date<br />
due_date</p></td>
<td><p>The date of when an event is due.</p></td>
<td><p><img src="resources/images/image3_icon.png" /></p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>Incident date</p>
<p>incident_date</p></td>
<td><p>The date of the incidence of the event.</p></td>
<td><p>✓</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Enrollment date</p>
<p>(not visible on UI)</p>
<p>enrollment_date</p></td>
<td><p>The date of when the tracked entity instance was enrolled in the program.</p></td>
<td><p>✓</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>Enrollment Status<br />
enrollment_status</p></td>
<td><p>Can be used to include or exclude enrollments in certain statuses.</p></td>
<td><p>–</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Current date</p>
<p>current_date</p></td>
<td><p>The current date.</p></td>
<td><p>✓</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>Completed date</p>
<p></p></td>
<td><p>The date the event is completed.</p></td>
<td><p><img src="resources/images/image3_icon.png" /></p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Value Count</p>
<p>value_count</p></td>
<td><p>The number of non-null values in the expression part of the event.</p></td>
<td><p>✓</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>Zero or positive value count</p>
<p>zero_pos_value_count</p></td>
<td><p>The number of numeric positive values in the expression part of the event.</p></td>
<td><p>✓</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Event Count</p>
<p>event_count</p></td>
<td><p>The count of events (useful in combination with filters).</p></td>
<td><p>✓</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>Enrollment Count</p>
<p>enrollment_count</p></td>
<td><p>The count of enrollments (useful in combination with filters).</p></td>
<td><p>N/A</p></td>
<td><p>Indicators in the Android App are calculated in the domain of one TEI enrollment. Value always 1.</p></td>
</tr>
<tr class="odd">
<td><p>TEI Count</p>
<p>tei_count</p></td>
<td><p>The count of tracked entity instances (useful in combination with filters).</p></td>
<td><p>N/A</p></td>
<td><p>Indicators in the Android App are calculated in the domain of one TEI enrollment. Value always 1.</p></td>
</tr>
<tr class="even">
<td><p>Program Stage Name<br />
program_stage_name</p></td>
<td><p>Can be used in filters for including only certain program stages in a filter for tracker programs. </p></td>
<td><p><img src="resources/images/image3_icon.png" /></p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Program stage id</p>
<p>program_stage_id</p></td>
<td><p>Can be used in filters for including only certain program stages in a filter for tracker programs</p></td>
<td><p><img src="resources/images/image3_icon.png" /></p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>Reporting Period Start</p>
<p>reporting_period_start</p></td>
<td><p>Can be used in filters or expressions for comparing any date to the first date in each reporting period.</p></td>
<td><p>N/A</p></td>
<td><p>Indicators in the Android App are calculated in the domain of one TEI enrollment.</p></td>
</tr>
<tr class="odd">
<td><p>Reporting Period End</p>
<p>reporting_period_end</p></td>
<td><p>Can be used in filters or expressions for comparing any date to the last inclusive date in each reporting period.</p></td>
<td><p>N/A</p></td>
<td><p>Indicators in the Android App are calculated in the domain of one TEI enrollment.</p></td>
</tr>
</tbody>
</table>

\*[Documentation Reference](https://www.google.com/url?q=https://docs.dhis2.org/master/en/user/html/configure_program_indicator.html%23program_indicator_functions_variables_operators&sa=D&ust=1557433016643000)

<div>

</div>
