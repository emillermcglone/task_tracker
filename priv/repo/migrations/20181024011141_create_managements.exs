defmodule TaskTracker.Repo.Migrations.CreateManagements do
  use Ecto.Migration

  def change do
    create table(:managements) do
      add :manager_id, references(:users, on_delete: :delete_all), null: false
      add :underling_id, references(:users, on_delete: :delete_all), null: false

      timestamps()
    end

    create index(:managements, [:manager_id])
    create index(:managements, [:underling_id])
  end
end
