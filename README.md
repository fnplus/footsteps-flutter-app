# 👣 Footsteps Android App
A search 🔎engine for community-made 🧑‍🤝‍🧑learning resources for the 21st-century learner.👨‍💻👩‍💻Learn by following the footsteps (resources) of experts or make your own, giving others the right advice/resources to learn.

Find more information and documentation [here](https://fnplus.github.io/) .

[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)][license]

[license]:https://github.com/fnplus/footsteps-flutter-app/blob/master/LICENSE

## 🤷 About
This is the companion native app for  [footsteps-app](https://github.com/fnplus/footsteps-app) .This cross-platform application is being developed for the Android and iOS platforms using the Flutter SDK by Google. 

With Footsteps [app](https://github.com/fnplus/footsteps-flutter-app) & [browser extension](https://github.com/fnplus/footsteps-extension), we take a mentor/subject knowledge expert first approach to solve the problem. This flutter app would help individuals to add/manage links in their learning paths. It works just like the browser extension is working right now.

## 🧐 The Need (as seen on the web)

Here are few examples of why we came up with footsteps:

[**Reddit thread - "About IBMs Data Science Certification"**](https://www.reddit.com/r/datascience/comments/eleuz9/about_ibms_data_science_certification/)

## ⏪ Prerequisites

![Pass](https://media.giphy.com/media/Z9cRCMdAMzXi25dwhE/giphy.gif)


* Make sure you have Flutter installed (https://flutter.dev/docs/get-started/install)
* Try installing and experimenting with the development version on your phone
* Don't hesitate in asking questions, we'll be happy to help

## Installation 

    $ git clone https://github.com/fnplus/footsteps-flutter-app.git
    $ cd footsteps-flutter-app/
    $ flutter run

## Install Dependencies
Below are the dependencies you will need for most FlutterFire apps, assuming you are using Firestore and Google SignIn.

<b>pubspec.yaml</b>
```
dependencies:
  flutter:
    sdk: flutter

  firebase_core: ^0.4.0
  firebase_analytics: ^1.0.4

  firebase_auth:  ^0.6.6
  google_sign_in: ^3.2.4

```

## Android Setup

1. Make sure you have an Android emulator installed and running.
2. ### SHA1 Certificate
   * First, you need to fill a form to request access to the test firebase app.
   * Next, generate an <i>SHA1 certificate</i> to allow Firebase to provision an OAuth2 client and API key when using Google Sign-in and/or dynamic links.
3. ### Download and save the google-services.json
   * Download the <b>google-services.json</b> file to the <b>android/app</b> directory. At this point, you can skip all remaining steps in the Firebase console (Flutter does this stuff automatically).

   <img src="https://fireship.io/img/snippets/android-flutter-file-dir.png">
4. ### Update the build.gradle files
    * Now we need to register our Google services in the Gradle build files.

    <b>android/build.gradle</b>
    ```

    buildscript 
    {
   dependencies
    {
       // ...
       classpath 'com.google.gms:google-services:3.2.1'   // <-- here
    }
    }
    ```

 5. That’s it. Try executing flutter run with an Android device emulated or plugged-in to verify the setup worked.

## iOS Setup

 The iOS setup is less tedious and can be completed in one step.

 * ### Register and Download the <b>GoogleService-Info.plist</b>
 Click <i>add your app to iOS</i> then download the <b>GoogleService-Info.plist</b> file into the ios/Runner/Runner directory from XCode.


## Troubleshooting
At this point, you should be able to serve the app by running <b>flutter run.</b>

* Run <i><b>flutter doctor</b><i> and resolve any detected issues 
* Open the app in Android Studio or XCode and build it. Inspect the logs.
* If your app crashes at startup without logs it may be because you changed the id in the <i><b>AndroidManifest.xml</b></i> file.

## 🏆 Contributing
Please read [CONTRIBUTING.md](https://github.com/fnplus/footsteps-flutter-app/blob/master/CONTRIBUTING.md) for information on how to contribute to footsteps-extension.


## Steps ☘️:

![Steps](https://media.giphy.com/media/o5BzNDDFQnepi/giphy.gif)


*  Fork [this](https://github.com/fnplus/footsteps-flutter-app.git) repository :fork_and_knife:

<img src="https://user-images.githubusercontent.com/41269164/70219309-9a3eca80-176a-11ea-8a4d-1bd701d07314.png" width=300>

*  Clone the forked repository :busts_in_silhouette:
    ```
    git clone https://github.com/<your_user_name>/footsteps-flutter-app.git
    ```
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT5N0HJ9db7jSvcL4dsDscZQBzqQqqKVs0BnO1OVz26glLWKJRY&usqp=CAU" width="300">
    
* Navigate to the project directory.
    ```
    cd footsteps-flutter-app/
    ```
* Add reference to original repository
    ```
    git remote add upstream https://github.com/fnplus/footsteps-flutter-app.git
    ```
* See changes using
    ```
    git remote -v
    ```
* Create a new branch.
    ```
    git checkout -b <your_branch_name>
    ```
* Always take pull from the upstream repo to your      master branch in order to keep it at par with the main project. 
    ```
    git pull upstream master
    ```
*  Before creating an issue, discuss it withe project mentors in the [Slack Channel](https://gssoc20.slack.com)
* Make changes in the source code after getting yourself assigned by the mentors.

    ![changes](https://media.giphy.com/media/QNFhOolVeCzPQ2Mx85/200w_d.gif)


* Commit your changes.
    ```
    git add .
    git commit -m "<your_commit_message>"
    ```
* Push your local branch to the remote repository.
    ```
    git push -u origin <your_branch_name>
    ```
* Create a Pull Request!

Finally, go to your repository in browser and click on `compare and pull requests`.
Then add a title and description to your pull request that explains your precious effort.

<img src="https://user-images.githubusercontent.com/41269164/70219707-47194780-176b-11ea-96c2-d0c401ddb1e0.png" width=600>
		
click on `Compare and Pull Request`
		
<img src="https://user-images.githubusercontent.com/41269164/70219836-8d6ea680-176b-11ea-81d5-549093bf0954.png" width=600>

**Congratulations!** Sit and relax, you've made your contribution to [Footsteps Flutter App](https://github.com/fnplus/footsteps-flutter-app/) project.


## 👨 Project Admin

- Abhishek Uniyal <p>[<img src="https://img.icons8.com/windows/32/000000/github-2.png" display = "inline-block">](https://github.com/xlogix) [<img src="https://img.icons8.com/ios-glyphs/30/000000/linkedin-2.png" display = "inline-block">](https://www.linkedin.com/in/abhishek-uniyal)</p>


## 👬  Mentors

- Dev Daksan  <p>[<img src="https://img.icons8.com/windows/32/000000/github-2.png" display = "inline-block">](https://github.com/R3l3ntl3ss) [<img src="https://img.icons8.com/ios-glyphs/30/000000/linkedin-2.png"/>](https://in.linkedin.com/in/dev-daksan)</p>
- Praveen Kumar    <p>[<img src="https://img.icons8.com/windows/32/000000/github-2.png" display = "inline-block">](https://github.com/praveenscience) [<img src="https://img.icons8.com/ios-glyphs/30/000000/linkedin-2.png"/>](https://uk.linkedin.com/in/praveentech)</p> 
- Sudipto Ghosh  <p>[<img src="https://img.icons8.com/windows/32/000000/github-2.png" display = "inline-block">](https://github.com/pydevsg) [<img src="https://img.icons8.com/ios-glyphs/30/000000/linkedin-2.png"/>](https://www.linkedin.com/in/sudipto-ghosh-48a71a161/)</p>
- Tarun Nagpal    <p>[<img src="https://img.icons8.com/windows/32/000000/github-2.png" display = "inline-block">](https://github.com/tarun-nagpal-github) [<img src="https://img.icons8.com/ios-glyphs/30/000000/linkedin-2.png"/>](https://www.linkedin.com/in/tarunnagpal1/)</p>

Feel free to ask your queries!! 🙌


 ## License ⚙

Licensed under the [GPL v3 License](./LICENSE).

## :heart: Thanks

Thanks to our many contributors.
