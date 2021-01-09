# Swift IAP: Beginner Session Notes

## Overview
For this beginner workshop we would be creating an Add 1 game. 

The goal of the game is to add one to each digit of a randomly generated 4-digit number, as many times as possible in 60 seconds.

__TODO: Add Photos to the sections!__

## Set Up the iOS App Project
Follow the steps below to set up an iOS Project in Xcode.

1. Start Xcode
2. Create a new project by choosing `File -> New -> Project` from the menu.
3. Choose the *Single View App* template under the *iOS* category, then click Next.
4. Name the project *Add 1*, then choose *Storyboard* for the User Interface. Leave the other fields to their defaults!
5. Choose any location to store the project.
6. Click Create!

Next, we need to modify some of the project settings for the game.

1. Click on the *Add 1* project in the Project Navigator on the left.
2. Click on *Add 1* below *Targets* in the sidebar.
3. Select the General tab at the top and scroll down to the *Deployment Info section*.
4. Ensure that **only** *Portrait* is selected for *Device Orientation*.
5. Ensure that *Hide status bar* is enabled.

![Image](https://learnappmaking.com/wp-content/uploads/2019/11/ios-game-app-swift-xcode-2.jpg)
*Modify this to an annotated screenshot of someone else's IDE, this one is the old Xcode!*

## **(Optional)** Pair an iOS device with Xcode

**Should we still add this in?**

Feel free to skip this section if you wish to run the game on an Xcode simulator.


## Configuring the Game View Controller
A view controller is a common component in iOS apps. It typically manages a single User Interface (UI) or “screen” in your app.

> For those with background in Android development, the View Controller in Swift is equivalent to an Activity or Fragment. (I think, someone please correct me if I'm wrong)

```
class MainViewController: UIViewController {
    @IBOutlet weak var textLabel:UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()

        textLabel?.text = "Click the button..."
    }

    // Bind an action to the button
    @IBAction func onButtonTap(sender: UIButton) {
        textLabel?.text = "Hello world!"
    }
}
```

For more information on View Controllers, you can read more at this [website](https://learnappmaking.com/view-controller-uiviewcontroller-ios-swift/#whats-a-view-controller).

## Getting Started with the Interface Builder
