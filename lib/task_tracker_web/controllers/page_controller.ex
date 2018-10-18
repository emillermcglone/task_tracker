defmodule TaskTrackerWeb.PageController do
  use TaskTrackerWeb, :controller

  alias TaskTracker.Tasks
  alias TaskTracker.Users

  def index(conn, _params) do
    if Plug.Conn.get_session(conn, :user_id) do
      redirect(conn, to: "/home")
    end
    render conn, "index.html"
  end

  def home(conn, _params) do
    if !Plug.Conn.get_session(conn, :user_id) do
      redirect(conn, to: "/index")
    end
    user_tasks = Tasks.list_assigned_tasks(conn)
    render conn, "home.html", user_tasks: user_tasks
  end

end

