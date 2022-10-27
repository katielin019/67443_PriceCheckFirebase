PriceCheck Firebase: A Class Exercise
---

As you may recall from a previous class exercise, we had you build out the PriceCheck app using a static JSON file and a helper function from [@twostraws](https://github.com/twostraws).  That code has now gone away and we want to get the data from an actual online source.  This is the starter code for a version of PriceCheck that uses Firebase to retrieve data.  Most of the code is here and ready to run, but to make it work, you will need to:

1. Add Firebase via Swift Package Manager.  Be sure to add `Firebase` as well as `FirebaseFirestore` and `FirebaseFirestoreSwift`.

1. Add the `GoogleService-Info.plist` file that was provided on Slack.

1. Make sure that those modules are added to both the `PriceCheckFBApp` and the `LocationRepository`.

1. Fix the code in `LocationRepository` so that it can retrieve the data from this Firestore instance. (See comments provided; the BookManager example could also be helpful here.)

    This is what the Firestore instance looks like:
    <img src="https://i.imgur.com/lRqafZY.png" width="90%"/>
 

If this is all done correctly, when you build the project, it should properly populate from Firestore and build an app with the same output as the last PriceCheck exercise.

<img src="https://i.imgur.com/3RUrLaU.png" width="50%"/>