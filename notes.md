Our app has three pages:
A login page, where the user enters their username. No passwords; we'll just trust them. After they're logged in, users are taken to...
A user homepage, which says, "Hi, #{username}", and has a link to the secret page, which is...
A page with a secret on it, which users must be logged in to see.

INSTRUCTIONS
Use the specs as your guide, but we'd like the following behavior. We should be able to:
Visit the root of the app and be redirected to a login page.
If a user fails to enter their name on the login page, they should be redirected there until they successfully do so.
Once logged in, a user should see the welcome page. This page should greet the user and link them to the secret page.
The content and URL of the secret page are up to you. However, if we visit that URL without logging in, we should be redirected to the login page. Under no circumstances should we allow people who are not logged in to see the secrets.
