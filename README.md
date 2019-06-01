# FlutterHub

Hackathon 2019


![Meow](https://github.com/markoux/hackathonFlutter/blob/master/icons/difficulty_ui/flutterhublogo.png "Black and orange would be better...")


## Introduction

The FlutterHub collects relative with Flutter information, from selected social media sources, in order to help the new members (but also the veterans) of Flutter community, to have quick access to critical, interesting, fresh (and a lot more adjectives) information about Flutter.

The application can help the user to keep up with all the latest news, find communities and groups, and find tutorials for his current Flutter developer level.

The application has 3 main views:
1. News Feed
2. Community
3. Tutorials

The sources of the gathered information can be selected from the configurations menu.

TODO insert picture.

There is also vote, search, sorting and filtering functionality.

## News Feed

In the News Feed view, the user can see posts, relevant to Flutter from the selected sources. The available sources are:
* Stackoverflow
* Meetup
* Reddit
* Google
* Facebook
* Twitter
* Twitch

## Community

This view will display to the user, community relative with Flutter.
Community means (mainly) a group of people, depending on the source, for example in facebook and meetup there are groups, in twitter are accounts, etc...

## Tutorials

The tutorials are mainly sorted, according to the user's self evaluated developer level.

## Configurations

The configurations menu spotted on TODO location, allow the user to, guess what... optimize the application's functionality, according to his preferences.

### Select Sources

A group of check-boxes, which will define which sources (APIs) should be used or not, in order to mine the Flutter related information. The available sources are:
* Stackoverflow
* Meetup
* Reddit
* Google (TODO den exei posts auth h blakeia re axladia)
* Facebook
* Twitter
* Twitch

### Account

The user's account information and preferences, which the application could use to provide more accurate services:

* Name:  The name of the user.
* Age: The age of the user.
* Sex: The gender of the user. Available options: Male/Female (ONLY!).
* Language: The user's preferred language.

The user can connect his available social media accounts, to increase post visibility and possibly interact with the posts in the future.

### Development

User's development preferences:

* Level 1-3: The user's idea of the level of his skills as a Flutter developer, "Easy", "Medium", "Hard".
* Interested OS: A group of checkboxes (Android, IOS, Web), for the user to select, into which OS specific information he is more interested.

## Functionalities

The available functionalities on the views:

### Sorting

The available sorting options are:

* Default: A mixed combination of rating and datetime of a post.
* New posts: Sorted based on the datetime of a post.
* Best rated: Sorted based on the rating of a post (secondary sorting by datetime).

### Filtering

The filtering is based on the selected sources, from the configurations of the user. For example, the un-selected sources will not be requested, and obviously not shown to the user, and the un-selected OS specific tutorials will not be shown.

#### Like/Dislike

The likes and dislikes of users, are used to rate a post, group or tutorial.

#### Diffculty

Refers on the diffculty of a tutorial. The tutorials that are closer to user's level will appear.
The user can also vote his personal opinion about a difficulty of a tutorial.
