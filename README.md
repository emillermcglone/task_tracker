# Design 
The user starts at an index page where they can either log in or create a new account. Users must provide
a valid email address (it must include @) to create an account. Once logged in, users are redirected 
to a home page, displaying the tasks they are assigned to. They can update or delete tasks assigned to them. The time input must be in increments of 15 minutes. Users may also view all tasks where they can delete or edit tasks that they have created. On both the home and all tasks pages, users can create new tasks. Once finished, users can log out. 

# TaskTracker

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
