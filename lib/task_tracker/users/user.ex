defmodule TaskTracker.Users.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :admin, :boolean, default: false
    field :email, :string

    has_many :underlings, TaskTracker.Users.User
    has_one :manager, TaskTracker.Users.User
    
    has_one :manager_managements, TaskTracker.Managements.Management, foreign_key: :underling_id
    has_many :underlings_managements, TaskTracker.Managements.Management, foreign_key: :manager_id
    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email, :admin])
    |> validate_required([:email, :admin])
    |> validate_format(:email, ~r/@/)
    |> unique_constraint(:email)
  end
end
