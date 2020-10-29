# Triveous News
A News App which shows news of various Categories like Top Stories, Business, Health, Science, Technology, Entertainment, Bitcoin, Wall Street Journal, TechCrunch and users can see the detail of a particular article which will open a Web View inside the app redirected to that article source website. Also users can see news based on the Countries.

## -Used PROVIDER State Management Technique
## -Clean and Optimized code

## Packages Used
- flutter_launcher_name: "^0.0.1"
- webview_flutter: ^1.0.5
- intl: ^0.16.1
- http: ^0.12.2
- provider: ^4.3.2+2
- google_fonts: ^1.1.1
## NOTE:
 IF THE APP SHOWS "NO ARTICLES TO SHOW" THEN IT'S PROBABLY MEAN THAT THE LIMITED REQUESTS QUOTA OF THAT DAY HAS BEEN USED AS THE API newsapi.org PROVIDES 100 REQUESTS PER DAY ONLY. ALSO ONE OF THE CATEGORY BITCOIN GIVES NEWS OF THAT PARTICULAR DAY SO THIS CATEGORY WILL SHOW "NO ARTICLES TO SHOW" BECAUSE IT IS SET TO FETCH NEWS ONLY FOR 28th OCTOBER.
-  App name ['Trevious_News']
-  Used custom icon for the app
-  changed Splash Screen to custom Splash Screen(Actual Launcher Screen)
-  Used newsapi.org API for the the data
-  Used to Two Screens- Home Page and Detail Screen

          - Home Page: Used Tabs for to show various news of categories
          - Details Screen: To show Web View of a particular article redirected to the source website

-  Home page shows list of articles and each article shows Image, Title, Published Time & Date, Author Name
-  Covered all Error Handling Scenarios

## FEATURE
 -  show particular country's news on various topics
 -  Added total 54 Countries

## Platforn Android arm apk size:5.8mb
