Code Test
====

**Preface:**

You're allowed to google, read the docs, use whatever editor you like, and install gems to accomplish things.  Feel free to ask questions.

**Things to keep in mind:**

0. You need **not** complete the whole task list in the hour provide. The list is a series of tasks which increase in difficulty as you progress.
1. Think about the *minimal* amount of code needed to complete the requirements. While this isn't a Golf exercise, it also isn't an exercise in demonstrating production quality error handling.
2. Ask questions. Read the Docs. We're here so I can see how you learn, not what you have memorized.
3. The atypical components have excellent documentation linked below.
4. Try not to let **scope creep** dominate just because certain things might be bad practice in a production app. It is important to complete the tasks, not build a perfect production-quality app.

**Application:**

We've built out a buggy User registration system out of the following components:
  - [Sinatra](http://www.sinatrarb.com/intro.html) is being used to serve requests.
  - ORM is [Sequel](http://sequel.jeremyevans.net/rdoc/).
  - Database is sqlite, currently operating *in memory only*.

**Necessary Background:**

Sinatra is a minimalist ruby web framework. It does not have any builtin code-reloading mechanism like rails does. Any time you change a ruby file, the server must be restarted manually. Thankfully, Sinatra also boots in a fraction of the time it often takes rails.

**Task list:**

1. Clone this repository to the pairing station.
2. Poke around, exercise the app. See how it behaves.
3. Make Sequel persist data across launches by writing to a .sqlite file.
4. Extend the application to allow a user to sign in and out.
6. Create an endpoint which renders the currently logged in user object in JSON, to be consumed by a third party app.
5. Rewrite to store and verify encrypted passwords instead of plain text. Use the bcrypt library.
7. Implement cookies to remember a logged in user.
8. Write tests using MiniTest.
