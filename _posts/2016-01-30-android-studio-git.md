---
layout: tutorial
title: Android Studio - Saving to the Cloud with Git
authors:
  - name: Alex Shafer 
    username: enzanki-ars 
    role: Author 
sections:
  - number: 1
    title: "Initial Setup"
    steps: 
      - part: a
        title: "Gitlab Desktop"
        text: >
          Before we start, download and install 
          [GitHub Desktop](https://desktop.github.com). This will take some 
          time to install, so continue on with the rest of the instructions.
      
      - part: b
        title: "Sign Up for GitLab"
        text: >
          First, we will need an account to use to save your code to.  Head to 
          [GitLab](https://gitlab.com/users/sign_in) and select `Sign in with your Google 
          Account`.  Enter your school email address and login with your school account. 
        image: android-studio-git/step1b.png
      
      - part: c
        title: "Allow Google Request"
        text: >
          When asked to allow account access, click allow.
        image: android-studio-git/step1c.png
  
  - number: 2
    title: "GitLab Setup"
    steps: 
      - part: a
        title: "GitLab Account Settings"
        text: >
          Because we signed up with a Google account, no password was set, but we will 
          need a password to continue. Open your account settings.
        image: android-studio-git/step2a.png
      
      - part: b
        title: "GitLab Account Password"
        text: >
          Inside your account settings, select password and set the password. It will 
          log you out, so log back in the same way as in step 1b.
        image: android-studio-git/step2b.png
        
      - part: c
        title: "Create a Repository"
        text: >
          All code is stored in repositories. While in your dashboard, select 
          new project. Name it the same as your program name. 
          
          <div class="alert alert-warning" role="alert"><strong>Warning:</strong> 
          Make sure you name it the same as what you want. It is harder to rename it 
          later.</div>
        image: android-studio-git/step2c.png

  - number: 3
    title: "GitHub Desktop Setup"
    steps: 
      - part: a
        title: "Install GitHub Desktop"
        text: >
          Once GitHub Desktop installs and opens, skip the logon screen. We will not 
          need to sign on with GitHub as we are using GitLab.
        image: android-studio-git/step3a.png
      
      - part: b
        title: "Set Git Name/Email"
        text: >
          Open the settings and set your name and email. 
          
          <div class="alert alert-warning" role="alert">
          <strong>Warning:</strong> Make sure this email matches your school email address. 
          Issues may arise if they do not match.</div>
        image: android-studio-git/step3b.png
  - number: 4
    title: "Android Studio Setup"
    steps: 
      - part: a
        title: "Open VCS Settings"
        text: >
          In Android Studio, select in the menu bar `VCS -> Enable Version Control Integration`. 
        image: android-studio-git/step4a.png
      
      - part: b
        title: "Set VCS to Git"
        text: >
          In the window that opens, select `Git`.
        image: android-studio-git/step4b.png
      
      - part: c
        title: "Potential Git Issue"
        text: >
          <div class="alert alert-warning" role="alert">
          <strong>Warning:</strong> 
          If the following window shows up, click the "No git.exe Found" button below.</div>
        image: android-studio-git/step4c.png
        extrainfo: 
          buttontext: "No git.exe Found"
          steps: 
            - part: d
              title: "Potential Git Issue - Set Path"
              text: >
                Click the fix it link and in the settings window that opens, click the `...` to set 
                the path to `git.exe`
              image: android-studio-git/step4d.png
            
            - part: e
              title: "Potential Git Issue - Set Path"
              text: >
                Click the `Show hidden files/folders` button on the top and find git.exe as shown.
              image: android-studio-git/step4e.png
            
            - part: f
              title: "Potential Git Issue - Set Path"
              text: >
                Click on the test button. The following message should appear. 
                again.
              image: android-studio-git/step4f.png
            
            - part: g
              title: "Open VCS Settings"
              text: >
                In Android Studio, select in the menu bar `VCS -> Enable Version Control Integration`. 
              image: android-studio-git/step4a.png
            
            - part: h
              title: "Set VCS to Git"
              text: >
                In the window that opens, select `Git`.
              image: android-studio-git/step4b.png
  - number: 5
    title: "Saving Changes"
    steps: 
      - part: a
        title: "Saving Changes to Git"
        text: >
          At the bottom of the screen, click `9: Version Control`.  After expanding the 
          `untracked files` list, hold <kbd>Shift</kbd> and select all of your project 
          files. Then click the `Commit` button.
        image: android-studio-git/step5a.png
      
      - part: b
        title: "Commit and Push"
        text: >
          Make sure all files are checkmarked and set the author in the top right to the form
          `Full Name <email.address@hilliardschools.org>`.
          
          <div class="alert alert-danger" role="alert">
          <strong>Warning:</strong> 
          Select the checkmarks as shown, otherwise, the commit will not work.</div>
          
          Add a commit message and then push `Commit and Push`. The better the message, the easier it will
          be to find this save state. 
        image: android-studio-git/step5b.png
  - number: 6
    title: "Pushing Changes"
    steps: 
      - part: a
        title: "Define Remote"
        text: >
          Click `Define remote`.
        image: android-studio-git/step6a.png
      
      - part: b
        title: "Define Remote"
        text: >
          Head back to GitLab.  Click the `SSH` dropdown and change it to `HTTPS` and copy the
          link.  
        image: android-studio-git/step6b.png
      
      - part: c
        title: "Define Remote"
        text: >
          Paste this into the URL field.
        image: android-studio-git/step6c.png
      
      - part: d
        title: "Remote Login"
        text: >
          Type in your Login info using your full email as the login. Click `OK` and **Do NOT set 
          a master password.** We don't want to have to deal with you forgetting that... 
        image: android-studio-git/step6d.png
  - number: 7
    title: "Finish"
    steps: 
      - part: a
        title: "Finish"
        text: >
          If you see this, it worked!
        image: android-studio-git/step7a.png
---

## Intro

Saving to the cloud is a great way to back up your program files, but how do you
do it without wasting space and time constantly zipping up your application?
Using a program called [Git](https://git-scm.com/about), you can easily
save your programs with minimal space and time travel back to older
versions of your code.

## Tutorial

In this tutorial, we will guide you through the process of using Git with
Android Studio.  There are many choices of code storage websites using Git, such
as GitHub, GitLab, or BitBucket, but for the purposes of of this tutorial, we
will use GitLab.  All of these platforms allow you to save your code to the cloud
for free, but GitLab allows you to save your code privately and share it to whom
ever you wish for free, much like Google Docs.
