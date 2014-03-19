Code Test
====

Preface:

You're allowed to google, read the docs, use whatever editor you like, and install gems to accomplish things.  Feel free to ask questions.

Most importantly, know that we're more interested in seeing a working product than we are about adhereing to standards and conventions and the like.

0. This test is designed to be atypical. Think about the absolutely minimal amount of code needed to complete the requirements. Ask questions. Read the Docs. Be efficient with our time and show us what you can do.
1. Clone this repository to the pairing station.
2. Using Sinatra, we've build out a (buggy and minimal) yet mostly functioning User registration system
  - Database is in memory only and as such needs to be reconstructed every time the server starts
  - Database is initially constructed out of a DATA section at the end of the sinatra file.
3. Extend this to store encrypted passwords instead of plain text. Use whatever encryption method you wish.
4. Extend this to allow a user to sign in and out.
