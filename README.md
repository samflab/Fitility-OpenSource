# Fitility

A Flutter application for dance and fitness training.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Following is the structure of the number of files/screens in the app.

## main.dart :
returns the splashscreen and the named routes

## icons/fitility_icons.dart :
 this page has the list of custom icons which are not available in flutter.
 
 Alphabetical order of the screens
## screens/all.dart :
A page shows all the workout videos and their information.

## screens/blank.dart :
For navigating to different pages using the bottom nav bar. It has the common UI for the pages after the authentication phase.

## screens/bolly-aero.dart :
A page that shows the workout videos relating to bolly-aero.

## screens/bootcamp.dart :
A page that shows the information/videos relating to the bootcamps.

## screens/dance.dart :
A page that shows all the dance videos.

## screens/diet.dart :
A page that contains all the diet plans.

## screens/forgot_password.dart :
Where user can reset their passwords incase they forget it.

## screens/hiit.dart :
A page that shows all the videos relating to hiit.

## screens/home.dart :
 The first page that appears after the user logs into the app.

## screens/login.dart :
 Self explanatory, again, a page where a user can login himself into the app.
 
 ## screens/onboarding.dart :
 This screen will appear when the user installs the app for the very first time. You can also call this one time intro screen.
 
 ## screens/pillates.dart :
A page that shows all the videos relating to pillates.
 
## screens/diet.dart :
A page that contains all the fitness plans in which the user can enrol in.

## screens/settings.dart :
The user can edit their personal information, they can also view other app settings.

## screens/sign_up.dart :
 This is self explanatory, a page where a new user can register himself, otherwise login.
 
 ## screens/splashscreen.dart :
 Code for auto login, checks if the user has already logged, will take him to the home page otherwise redirect him to the login page.
 
 ## screens/steppers.dart :
A page that shows all the videos relating to steppers.

## screens/workout.dart :
A screen that manages all the other screens relating to workout.

## screens/zumba.dart :
A page that shows all the zumba videos.

## services/get_initials.dart :
This is return the initials of the user's name after the user logs in, these initials will be present in a CircleAvatar, beside their name in the settings.dart page
