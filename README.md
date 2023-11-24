

# UC Davis Track Club

## Table of Contents

1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)

## Overview
An app that is a mobile platform for the UC Davis Track team. It would display weekly workouts by calling Strava's API and upcoming races. It can also make the sign up process much more efficient.
### Description

Implements home screen where weekly workouts can be seen as well as popular Davis running routes, and club events all connected through buttons and push navigation to other more specialized screens. 

### App Evaluation

[Evaluation of your app across the following attributes]
- **Category:** Sports
- **Mobile:** There is much more accessibility and traffic on mobile platforms. Plus, our club has a website and its useful but there's just not enough traffic. This would use location and maps for running routes.

- **Story:** Very useful because our club uses a multitude of apps including, Strava, Slack, and Instragram but there is no centralized digital headquarters online besides our website. My teamates would be very impressed and thrille about this idea.
- **Market:** The size of my potential userbase is UCD's runners and the scale is the entire college could visit the app.
- **Habit:** I check slack for updates about the running club once a day, this app would essentially just migrate that attention towards itself. The average user would consume the schedule and also create the schedule for the app.

- **Scope:** This app would be very technically challenging because it would use Strava API requests, push navigation, and table views. Yes the prototype should be fun to build. There are certain features that it must have so its clearly defined enough for me.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can view weekly workouts
* User can enter current mile time
* User can view CoachAI tab


**Optional Nice-to-have Stories**

* User can see photo gallery of club's activities
* User can communicate to club officers
* User can modify weekly workouts
* User can post new announcements 
* User can billboard club fundraisers

### 2. Screen Archetypes

- [X] Home Screen
* User can view weekly workouts
* User can push buttons to navigate to other screens
- [X] CoachAI/Running Screen
* User can enter current mile time and tailor workout pacing
* User can view GPT model's break down of workout

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Workouts (Home Feed)
* CoachAI

**Flow Navigation** (Screen to Screen)

- [X] Home Screen
- [X] Coach AI
   => ChatGPT

## Wireframes

[Add picture of your hand sketched wireframes in this section]
<iframe style="border: 1px solid rgba(0, 0, 0, 0.1);" width="800" height="450" src="https://www.figma.com/embed?embed_host=share&url=https%3A%2F%2Fwww.figma.com%2Ffile%2FEvGWQinbpm5G1HUY0XriOe%2FUCD-TF-Club%3Ftype%3Ddesign%26node-id%3D0%253A1%26mode%3Ddesign%26t%3D1HU8Wo0BuH7MjZx0-1" allowfullscreen></iframe>

## Sprints
Sprint 1: Brainstorm ideas, implement wireframes, create beginning screen
Sprint 2: Created new coach tab in navigation bar, called OpenAI API network request and displayed data
Sprint 3: Added the current mile time text field and added the feature to tailor workout pacing for CoachAI accordingly.
## Schema 

[This section will be completed in Unit 9]

### Models

[Add table of models]

### Networking

- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
