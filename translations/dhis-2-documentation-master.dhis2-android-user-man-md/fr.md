---
title: DHIS 2 Android guide
---

<!--DHIS2-SECTION-ID:index-->

# A propos de ce guide

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

# Configure DHIS2 programs to work on Android apps

<!--DHIS2-SECTION-ID:android_config_program-->

To use event programs and tracker programs on the Android **Event Capture** and **Tracker Capture** apps, you must configure both the programs and the users' profiles on your DHIS2 web instance. You do this in the **Users** and **Program** web apps.

> **Note**
>
> - To work on an Android device you must assign the same **Data capture and maintenance organisation units** as the organisation units you've assigned the program to.
>
> - In the Android apps you want to save as much data as possible. Therefore, the user can only download and capture data against the **Data capture and maintenance organisation units**. You configure these organisation units in the **Users** app.
>
> - If you select the top organisation unit as the **Data capture and maintenance organisation units**, the user can only download and capture data on the top organisation unit.
>
> - To give the user access to download and capture data on all organisation units, you must assign all organisation units as **Data capture and maintenance organisation units**.

1.  In the **Users** app, create a new or update an existing user with the following settings:

    - **Available roles**: Assign a user role that allow the user to access programs.

    - **Data capture and maintenance organisation units**: Select the organisation units that are relevant for your program.

      The **Data capture and maintenance organisation units** control for which organisation units the user can do data entry. You must assign at least one data capture and maintenance organisation unit to each user.

    ![](resources/images/content/android/android/common/config_program_user_setting.png)

2.  In the **Users** app, assign programs to the user role you selected in the previous step.

    ![](resources/images/content/android/android/common/config_program_userrole_setting.png)

3.  In the **Program** app, assign your programs to the same organisation units as the **Data capture and maintenance organisation units** you selected in the **Users** app.

    ![](resources/images/content/android/android/common/config_program_orgunit_setting.png)

4.  Open the relevant Android app and log in with the user you created.

5.  Pull down to synch with the DHIS2 web instance.

    The app downloads all programs and organisation units the user has access to.

> **Note**
>
> ![Error](resources/images/content/android/android/common/config_error_program.png)
>
> - Error message: "You don't have any programs assigned to the organisation unit"
>
> - Solution: In the **Program** app, assign programs to the relevant organisation units.

See also:

[Manage programs](https://ci.dhis2.org/docs/master/en/user/html/manage_tracker_programs.html)

[Manage users, user roles and user groups](https://ci.dhis2.org/docs/master/en/user/html/mgt_user_role_group.html)

# Android Event Capture App

<!--DHIS2-SECTION-ID:android_event_capture-->

## Overview

<!--DHIS2-SECTION-ID:android_event_capture_overview-->

The event capture Android app allows you capture, modify and list events. The event capture app works with event-based programs in DHIS2, which handles anonymous events not linked to registered entities. These programs are suitable for handling scenarios such as facility surveys, hospital registry summaries and training events. However the app is not tied to any specific domain and can potentially be utilized for any scenario of event-based information.

The event capture app allows you to capture events offline, i.e. without Internet connectivity. The app will automatically synchronize events with the online DHIS2 server automatically when connectivity is present. This makes the app suitable for environments where Internet connectivity is scarce or unstable.

## Installing and logging in

<!--DHIS2-SECTION-ID:android_event_capture_installing-->

The event capture add can be found on Google Play under the name "Event Capture for DHIS 2".

[Event Capture on Google Play](https://play.google.com/store/apps/details?id=org.hisp.dhis.android.eventcapture)

You can download the APK file directly from the GitHub release page.

[Event Capture GitHub releases](https://github.com/dhis2/dhis2-android-eventcapture/releases)

Click on the app to open it after the installation is done. This will bring up the login screen.

![](resources/images/content/android/android/ec/android-ec-login.png)

In the _URL_ field, enter the full URL to the DHIS2 instance (server) for which you want to capture and manage events for. Be careful to enter the _http://_ or _https://_ part of the URL as well. In the _username_ and _password_ field, enter the username and password for your account at the given DHIS2 instance. Note that you can use this login on the online DHIS2 server as well, i.e. you will be using the same account as you will use when logging into DHIS2 using a Web browser. After logging in the first time, the app will download meta-data from the online instance. This could take a few minutes so please be patient.

## Viewing events

<!--DHIS2-SECTION-ID:android_event_capture_viewing-->

The main screen will show an overview of events, as well as links to creating new ones. Start by selecting organisation unit and program from the selectors at the upper part of the screen.

![](resources/images/content/android/android/ec/android-ec-event-list.png)

The _+_ button below the selectors will take you to the new event screen. Below this button, all events which have been registered for the selected organisation unit and program will be listed. Each column is configurable, and could show various types of information from each event. The column to the far right shows the synchronization status. _Sent_ means that the event has been uploaded to the server, whereas _Offline_ means that the event is so far only stored at your device. Events will be synchronized automatically once an Internet connection is present. You can swipe down on the screen in order to trigger a synchronization attempt.

## Creating events

<!--DHIS2-SECTION-ID:android_event_capture_creating-->

Click on the _+_ button to go to the new event form. The new event will be associated with the organisation unit and program you selected previously. The new event screen has a range of functions:

![](resources/images/content/android/android/ec/android-ec-new-event-top.png)

The back button in the top top-left corner will take you back to the main screen (list of events). For programs that have specified sections, these sections will be displayed as a selector at the centre of the top bar. There are also right and left arrows which you can use to move between sections. You can use this selector and arrows to quickly navigate between form sections. The save button in the top-right corner will save what you have entered for the event so far. Data is also saved when you switch between sections.

The _Complete_ button on the second bar will mark the event as complete. The Validate button will trigger a check for validity of the information you have entered based on the validation rules which have been set up for the program.

The first form field contains a date selector and indicators the time of when the event took place. The label is customizable and will vary from system to system. The _Enter coordinates_ field, which will be displayed if the program is configured to store coordinates, lets you use the GPS capability of your device to set the longitude and latitude of your current location by pressing the circle-like symbol to its right. You can alternatively enter the coordinates directly.

The event entry form itself will be rendered below. The type of input field selector will depend on the type of the data element representing the input field. For example, you will see date selectors, free text input and numeric input fields. Data elements with predefined options will be rendered using a special dialog where you can either click directly on options or use a text input field to search for a specific option (useful if there is a high number of options).

![](resources/images/content/android/android/ec/android-ec-option-set-selector.png)

## Modifying events

<!--DHIS2-SECTION-ID:android_event_capture_modifying-->

After an event has been created you can go back to or modify the event by simply clicking on it in the event list. This will open the event form pre-populated with information that has been captured so far.

![](resources/images/content/android/android/ec/android-ec-event-form.png)

## Settings

<!--DHIS2-SECTION-ID:android_event_capture_settings-->

The settings screen lets you do configure synchronization frequency and log out.

![](resources/images/content/android/android/ec/android-ec-settings.png)

The _frequency of automatic synchronization attemps_ can be set form the drop-down, where options range from one minute to one day. This affects the battery usage and bandwidth consumption. The default of one hour is a sensible choice.

The _log out_ button will log you out of the app, and request you to enter the login information again. You are not intended to log out of the application between each session. This is mostly useful when you want to log into another DHIS2 online instance.

# Android aggregate data capture app

<!--DHIS2-SECTION-ID:android_aggregate-->

## Overview

<!--DHIS2-SECTION-ID:android_overview-->

The Data Capture for DHIS2 app allows you to enter data into a DHIS2 server with an Android device. The app downloads instances of forms which are required to enter data from the server, and stores them on the device. This means that you can enter data offline and then upload it to the DHIS2 server when you have network coverage.

## Installation

<!--DHIS2-SECTION-ID:android_installation-->

You can easily install the Data Capture for DHIS2 app by logging into the Google play store and searching for "[Data Capture for DHIS2](https://play.google.com/store/apps/details?id=org.dhis2.mobile)"

## Logging in

<!--DHIS2-SECTION-ID:android_logging_in-->

After you install and launch the Data Capture app on your device, when you launch it for the first time, you will be required to enter the server URL address of the DHIS2 server and your user name and password. Be sure to specify the full address of the server and protocol (either https or http). Once you have specified all details, press "Log in" to authenticate with the server.

![](resources/images/content/android/android/dc/android_dc_login.png)

## Entering and saving data

<!--DHIS2-SECTION-ID:android_entering_data-->

Once you login, you will need to select the organisation unit, dataset and time period for which you wish to enter data. Once you have selected all of this, press the highlighted area to proceed to the data entry screen.

![](resources/images/content/android/android/dc/android_dc_select.png)

Data entry in the android app is very straight-forward. Data elements are listed along with their category combination option. Just select the field for which you want to enter data by clicking it and entering the correct data value. Values will be saved locally to your device. When you finish entering data, press "Save" and data will be saved to the server.

![](resources/images/content/android/android/dc/android_dc_enter.png)

# Android Tracker Capture App

<!--DHIS2-SECTION-ID:android_tracker_capture-->

## Overview

<!--DHIS2-SECTION-ID:android_tracker_capture_overview-->

The Tracker Capture Android app allows you capture, modify and list tracked entity instances with its enrolments and events. The Tracker Capture app works with multiple event-based programs in DHIS2, which handles events linked to registered entities. These programs are suitable for handling disease programmes where multiple visits is required. The Tracker Capture app can be used for disease programmes such as tuberculosis and malaria. However the app is not tied to any specific domain and can potentially be utilized for any scenario of multiple event-based information.

The Tracker Capture app allows you to capture events offline, i.e. without Internet connectivity. The app will automatically synchronize events with the online DHIS2 server automatically when connectivity is present. This makes the app suitable for environments where Internet connectivity is scarce or unstable.

## Installing and logging in

<!--DHIS2-SECTION-ID:android_tracker_capture_installing-->

The Tracker Capture app can be found on Google Play under the name "DHIS2 Tracker Capture".

[Tracker Capture on Google Play](https://play.google.com/store/apps/details?id=org.hisp.dhis.android.trackercapture)

You can download the APK file directly from the GitHub release page.

[Tracker Capture GitHub releases](https://github.com/dhis2/dhis2-android-trackercapture/releases)

Click on the app to open it after the installation is done. This will bring up the login screen.

![](resources/images/content/android/android/tc/android-tc-login.png)

In the _URL_ field, enter the full URL to the DHIS2 instance (server) for which you want to capture and manage data for. Be careful to enter the _http://_ or _https://_ part of the URL as well. In the _username_ and _password_ field, enter the username and password for your account at the given DHIS2 instance. Note that you can use this login on the online DHIS2 server as well, i.e. you will be using the same account as you will use when logging into DHIS2 using a Web browser. After logging in the first time, the app will download meta-data from the online instance.

## Viewing Enrollments

<!--DHIS2-SECTION-ID:android_tracker_capture_enrollments-->

The main screen will show an overview of enrollments, as well as links to creating new ones. After the first login, there will be _no_ enrollments showing up in the list. Start by selecting organisation unit and program from the selectors at the upper part of the screen. For downloading existing tracker data from the server on to your device, press the middle button.

![](resources/images/content/android/android/tc/android-tc-tei-list.png)

The _+_ button below the selectors will take you to the new enrollment screen. Below this button, all enrollments which have been registered for the selected organisation unit and program will be listed. Each column is configurable, and could show various types of information from each enrollment. The column to the far right shows the synchronization status. _Sent_ means that the enrollment has been uploaded to the server, whereas _Offline_ means that the enrollment is so far only stored at your device. Locally stored data will be synchronized automatically once an Internet connection is present. You can swipe down on the screen in order to trigger a synchronization attempt.

## Creating and enrolling a tracked entity instance

<!--DHIS2-SECTION-ID:android_tracker_capture_creating-->

Click on the _+_ button to go to the new enrollment form. The new enrollment will be associated with the organisation unit and program you selected previously and the tracked entity instance that you create with this form. The new enrollment screen has a range of functions:

![](resources/images/content/android/android/tc/android-tc-new-enrollment.png)

The back button in the top top-left corner will take you back to the main screen (list of enrollments). The save button in the top-right corner will automatically save what you have entered for the enrollment so far.

The first form field contains a date selector and indicators the time of when the enrollment took place. If your program is selected to accept incident date, this will also be displayed. The labels is customizable and will vary from system to system.

The enrollment data entry form itself will be rendered below. The type of input field selector will depend on the type of the data element representing the input field. For example, you will see date selectors, free text input and numeric input fields. Data elements with predefined options will be rendered using a special dialog where you can either click directly on options or use a text input field to search for a specific option (useful if there is a high number of options).

![](resources/images/content/android/android/tc/android-tc-option-set-selector.png)

## Downloading tracker data from the online DHIS2 instance

<!--DHIS2-SECTION-ID:android_tracker_capture_downloading-->

From the main screen press the middle button for querying the server. Since this task requires an Internet connection, please make sure that you have one. This task will query the server with the organisation unit and programme that you have selected from the main screen. After you have pressed this button a dialog appears. In this dialog you can either specify your search by pressing the _detailed search_ button. The detailed search queries the server for tracked entity instances that contains the values that you have specified in your query. When you are finished with your query, press the globe for displaying the results from the server. If you want to display all tracked entity instances from the selected organisation unit and programme, you can simply press the globe button without entering any details. Depending on your Internet connection, this task can take some time so please be patient. A new dialog will present a list of results from your query containing tracked entity instances. Select the tracked entity instances that you want to download by tapping on them (A green tick on the right side will indicate that you have selected the tracked entity instance). After you have selected all your tracked entity instances that you want to download, press the download button, that has an icon with a downwards arrow, at the top of the dialog screen. The tracked entity instances will be downloaded in the background and the synchronization wheel will be displayed. When a tracked entity instance is finished downloading it will appear in the list at the bottom of the main screen.

![](resources/images/content/android/android/tc/android-tc-detailed-query.png)

## Modifying enrollment and tracked entity instance attribute values

<!--DHIS2-SECTION-ID:android_tracker_capture_modifying-->

After an enrollment has been created you can go back to or modify the event by simply clicking on it in the enrollment list. This will open an overview screen of the enrolled tracked entity instance with information that has been captured so far. To change the tracked entity instance attribute values that has been captured, simply press the profile box and a new screen will appear. By default the data entry rows will be disabled. To enable the data entry rows press the edit button in the top-right corner. This form will save whenever you do any changes. To change enrollment details, press the Enrollment box from the overview screen. To make the rows editable, press the edit button in the top-right corner. Data is automatically saved whenever changes is done. In the Overview screen you can also choose to complete or terminate the enrollment for the tracked entity instance. When an enrollment is completed or terminated, you will not be able to modify the data

![](resources/images/content/android/android/tc/android-tc-tei-profile.png)

## Creating new events for Enrollment

<!--DHIS2-SECTION-ID:android_tracker_capture_new_events-->

In the main screen click on any enrollment in the list to go into the Overview screen. This screen displays the information of the enrollment and the tracked entity instance with its relationships and active events. Some events is auto generated with the enrollment and therefore is already displayed in the list. This is customizable from the server side. Click on the _new_ button to generate a new event and go to the event form. The new event will be associated with the enrollment that you selected previously. The new event screen has a range of functions:

![](resources/images/content/android/android/tc/android-tc-dataentry.png)

The back button in the top top-left corner will take you back to the main screen (list of events). For programs that have specified sections, these sections will be displayed as a selector at the centre of the top bar. There are also right and left arrows which you can use to move between sections. You can use this selector and arrows to quickly navigate between form sections. The save button in the top-right corner will save what you have entered for the event so far. Data is also saved when you switch between sections.

The _Complete_ button on the second bar will mark the event as complete. The Validate button will trigger a check for validity of the information you have entered based on the validation rules which have been set up for the program.

The first form field contains a date selector and indicators the time of when the event took place. The label is customizable and will vary from system to system. The _Enter coordinates_ field, which will be displayed if the program is configured to store coordinates, lets you use the GPS capability of your device to set the longitude and latitude of your current location by pressing the circle-like symbol to its right. You can alternatively enter the coordinates directly.

The event entry form itself will be rendered below. The type of input field selector will depend on the type of the data element representing the input field. For example, you will see date selectors, free text input and numeric input fields. Data elements with predefined options will be rendered using a special dialog where you can either click directly on options or use a text input field to search for a specific option (useful if there is a high number of options).

![](resources/images/content/android/android/ec/android-ec-option-set-selector.png)

## Create relationships

<!--DHIS2-SECTION-ID:android_tracker_capture_relationships-->

Relationships let you create links between different tracked entity instances. This could be useful in cases where you want to map the relationships between parents and children or persons with malaria breeding sites. To add a new relationship, first press the 'new' button on the relationship box. Now a dialog is presented where you can choose which relationship you want to create from the 'Select relationship type' input field. Below there is a list of tracked entity instances that are already enrolled in the same programme and thus can be chosen. After choosing a tracked entity instance and confirming the relationship then it will show up in the Overview screen.

![](resources/images/content/android/android/tc/android-tc-register-relationship.png)

## Settings

<!--DHIS2-SECTION-ID:android_tracker_capture_settings-->

The settings screen lets you do configure synchronization frequency and log out.

![](resources/images/content/android/android/ec/android-ec-settings.png)

The _frequency of automatic synchronization attemps_ can be set form the drop-down, where options range from one minute to one day. This affects the battery usage and bandwidth consumption. The default of one hour is a sensible choice.

The _log out_ button will log you out of the app, and request you to enter the login information again. You are not intended to log out of the application between each session. This is mostly useful when you want to log into another DHIS2 online instance.
