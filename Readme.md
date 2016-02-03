Code Test
====

Preface:

You're allowed to google, read the docs, use whatever editor you like, and install gems to accomplish things.  Feel free to ask questions.

**Things to keep in mind:**

0. This test is designed to be atypical. While this isn't a Golf exercise, think about the *minimal* amount of code needed to complete the requirements.
1. Try not to let scope creep dominate just because certain things might be bad practice in a production app. 
2. Ask questions. Read the Docs.
3. You need not complete the whole task in the allotted time. It is designed to be a series of tasks which increase in difficulty as you progress.
4. Let's talk: What do you know about code reloading in a rails vs sinatra app?

**Task list:**

1. Clone this repository to the pairing station.
2. We've built out a mostly functioning User registration system
  - [Sinatra](http://www.sinatrarb.com/intro.html) is being used to serve requests.
  - ORM is [Sequel](http://sequel.jeremyevans.net/rdoc/).
  - Database is in sqlite, in memory only.
3. Make Sequel persist data across launches by writing to a .sqlite file.
4. Extend the application to allow a user to sign in and out.
6. Create an endpoint which renders the currently logged in user object in JSON, to be consumed by a third party app.
5. Rewrite to store and verify encrypted passwords instead of plain text. Use the bcrypt library.
7. Implement cookies to remember a logged in user.
8. Write tests.
