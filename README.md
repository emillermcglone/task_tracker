# Design 
The user starts at an index page where they can either log in or create a new account. Users must provide
a valid email address (it must include @) to create an account. No duplicate email addresses will be allowed. 

Once logged in, users are redirected to a Home page, displaying their manager(s), the tasks they are assigned to, and the tasks assigned to their underlings. Through the home page users can create new tasks or add new underlings. Users can only assign tasks to themselves or their underlings. 

Users can view and update tasks assigned to them. Marking a task complete and entering time spent can only be done after the task is created and only by the user the task is assigned to. Entering time spent is done in the task edit form view. Assigned users can enter time spent as multiple pairs of (start, end) timestamps. Additionally, users assigned to the task can press a "start working" and "stop working" button, creating a block of time spent working on the task. The assigned user can delete the time block if they're wrong and enter a new time block with the correct time spent.

In the All Tasks page, users may view, delete, or edit tasks that they have created. On both the home and all tasks pages, users can create new tasks. Only the task creator may delete the task. 

In the Management page, users can view all users' managers/underlings. Users who are managers can delete underling relationships. From this page, users can add new underlings. 

Once finished, users can log out. 

# Design Choices 
Users can have more than one manager, but duplicate records of manager/underling are not allowed. Users cannot manage themselves. As it was not specified, cyclical relationships of manager/underling are allowed. 

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
