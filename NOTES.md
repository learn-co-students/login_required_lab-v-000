[] Build out the `SessionsController`.

[] Write a `current_user` method.

[] Write a `SecretsController` using a `before_action` to prevent any route from being accessed without logging in.

user should be able to
	[] Visit the root of the app and be redirected to a login page.
  	[] If a user fails to enter their name on the login page, they should be redirected there until they successfully do so.
  	[] Once logged in, a user should see the welcome page. This page should greet the user and link them to the secret page.
  	[] The content and URL of the secret page are up to you. However, if we visit that URL without logging in, we should be redirected to the login page. Under no circumstances should we allow people who are not logged in to see the secrets.