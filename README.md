# iOS & Swift Development Basics Examination (rev. 9)
Fork this repository, complete the tasks, and submit a pull request when you're done.

This repository is just a series of tasks to test your profiency in iOS programming and some other areas. 
As you go through the tasks, be sure to fix any bugs that may pop up.
If you can't finish everything within the allotted time, that's ok.

<img src="https://swift.org/assets/images/swift.svg" alt="Swift logo" height="70" >

## General Rules:
- [ ] You are not allowed to modify Gimme.swift
- [ ] You have to finish Task 1 first and Task "submission" last, otherwise, work in whatever order you like
- [ ] You don't have to finish everything, you can pick and choose the most interesting ones/the ones you think will best showcase your skills (of course, finishing more is obviously better for you)
- [ ] Pretend this is a real production program
- [ ] Pretend you're working with a team consisting of other iOS developers that you hardly know
- [ ] Feel free to Google things/use Stack Overflow/ask me if you need help
- [ ] Any bugs you encounter should be fixed (talk about them in your commits)
- [ ] Any memory leaks you encounter should also be fixed (talk about them in your commits)
- [ ] Feel free to break any of the rules here to fix bugs or memory leaks (talk about rules you broke in your commits)
- [ ] When you start, the repo is good, so any bugs or memory leaks you encounter are produced by you <img src="http://i0.kym-cdn.com/entries/icons/mobile/000/017/403/218_copy.jpg" alt="kappa face" height="15" >
- [ ] Every time you finish a task, commit it to your repo with the task name in the commit message title (so your commit history should look like: "Task 1, broccoli, orange, kale, ...")
- [ ] If you believe this is a waste of time, let me know why
- [ ] If you learn anything new, let me know in your commit messages
- [ ] Go ahead and show off, but don't go overboard (don't spend too much time on this)

### Task 1:
- [ ] Read the general rules
- [ ] Fork this repository (create a new GitHub account if necessary)
- [ ] Work out of master (or start from the latest master commit)
- [ ] Run the project on your computer
- [ ] Make a random comment and commit with the commit title "Task 1"

### Task "banana":
- [ ] Create a collection view in the magenta area on VCMain.swift
- [ ] The magenta area should always be hidden under the collection view, that is, no magenta should ever show no matter what
- [ ] Cell width should be the same as the collection view so there is 1 cell per row
- [ ] Cells should be spaced 3 apart

### Task "orange":
- [ ] Fill section 0 of the collection view with CVAutomobile cells
- [ ] Populate the cells using the return value from Gimme.the.collectionViewDataForSection0() using the cell's populate(using:\_) function
- [ ] Give CVAutomobile a static function that returns a height equivalent to its intrinsic height
- [ ] Use that static function to define each CVAutomobile cell's height in VCMain

### Task "tomato":
- [ ] Fill section 1 of the collection view with data from Gimme.the.collectionViewDataForSection1()
- [ ] Make your own cell to display the numbers
- [ ] Cell height doesn't matter, just don't make them ridiculously tall while also making sure the numbers don't get cut off
- [ ] Make all even numbered cells have a green background color
- [ ] Make all odd numbered cells have a red background color
- [ ] Make all numbered cells that are a multiple of 23 have a orange background color (fizzbuzz anyone?)
- [ ] You should be able to scroll quickly without any visual bugs

### Task "papaya":
- [ ] Link the left button on the CVAutomobile cells to push VCTireModal modally
- [ ] Pass data the cell is holding to VCTireModal's automobile property
- [ ] Implement some way to dismiss the modal view controller (you can use whatever, like a button, backswipe, random gesture, etc...)

### Task "durian":
- [ ] Visually represent punctured tires on VwTire by making the appropriate rectangle red
- [ ] Change the date format for each tire's label to 05 Apr 18 format (not this exact date, obviously)

### Task "rambutan":
- [ ] Link the right button on the CVAutomobile cells to push VCNumberPushed (the new view controller slides in from the right)
- [ ] Have the view controller adopt the SouperKoolDelegate protocol
- [ ] When the view is summoned, call Gimme.the.loadingSequence(forThePushedVC:), giving the appropriate parameter
- [ ] Update the numberLbl property using the delegate
- [ ] In your commit message, describe what Gimme.the.loadingSequence(forThePushedVC:) is doing

### Task "broccoli":
- [ ] Read the comments in Swiftly_Test_Your_MightTests.swift
- [ ] Create your own unit test that tests whatever you want
- [ ] Make sure it passes
- [ ] Name the unit test "testBroccoli"

### Task "kale":
- [ ] Pass the first unit test

### Task "lettuce":
- [ ] Pass the second unit test

### Task "carrot":
- [ ] Pass the third unit test

### Task "spinach":
- [ ] Pass the fourth unit test

### Task "asparagus":
- [ ] Create a function that has a callback
- [ ] This function can do whatever you want (except crash the program)
- [ ] Create this function anyhwere
- [ ] Call this function on a background thread, and name the thread "weesnaw"
- [ ] Consider using your function to fire off events for task "carambola"

### Task "potato":
- [ ] Merge branch "submission" into your project fork
- [ ] Keep all of the new features and functionality that branch "submission" implemented and introduced while keeping all of the work you've done as well

### Task "submission":
- [ ] Make sure you can build and run your project fork
- [ ] Try and make sure there are no bugs or memory leaks
- [ ] Consider completing task "pepper" before you submit
- [ ] Submit a pull request to incorporate your work into the "submission" branch

## Bonus Tasks:

### Task "strawberry":
- [ ] Make it so UI elements on TireVw don't overlap each other when switching to landscape

### Task "carambola":
- [ ] Add an image of any kind of star you like to the project
- [ ] Randomly have your star fly across the screen at least once every 60 seconds
- [ ] Have it fly in from a random direction
- [ ] Have its trajectory be random
- [ ] You decide its starting size (just don't make it ridiculously big)
- [ ] Have its speed be random
- [ ] Every time its tapped, have it grow 1.2 times its size
- [ ] Have it play any sound you like when it's tapped
- [ ] Reset the star's size if it's going to grow past 12 times its original size
- [ ] Persist the star's size between app launches

### Task "pepper":
- [ ] Merge branch "pepper" into your work
- [ ] Successfully build and run your project afterwards
- [ ] Make sure all features from "pepper" are not lost in the merge
- [ ] Make sure none of your work is lost either
- [ ] Remove the 1:1 aspect ratio constraint on the "Modal" button in CVAutomobile.xib
- [ ] Replace it with a fixed width constraint with constant 100
- [ ] Remove the 1:1 aspect ratio constraint fon the "Push" button in CVAutomobile.xib
- [ ] Replace it with a fixed width constraint with constant 100
- [ ] When committing, if your git client auto generates your commit message, use that

### Task "cactus"
- [ ] Solve the travelling salesman problem
- [ ] Give me full credit for your work

### Task "cornucopia":
- [ ] Add a label or textview to display an Automobile's description
- [ ] Constrain the new label so that it sits just under the modelLbl, is centered horizontally with the modelLbl, and has the same width as the modelLbl
- [ ] Dynamically size each CVAutomobile cell so that the description is not cut off without adjusting font size

### Task "momordicaDioica"
- [ ] Pass the last unit test
