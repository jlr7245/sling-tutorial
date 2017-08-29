defmodule Sling.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :username, :string, null: false
      add :email, :string, null: false
      add :password_digest, :string, null: false

      timestamps()
    end
    create unique_index(:users, [:username])
    create unique_index(:users, [:email])
  end
end
