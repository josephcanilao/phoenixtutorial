# defmodule Rumbl.Repo.Migrations.CreateCategory do
#   use Ecto.Migration

#   def change do
#     create table(:categories) do
#       add :name, :string

#       timestamps()
#     end

#   end
# end


defmodule Rumbl.Repo.Migrations.CreateCategory do
use Ecto.Migration

	def change do
		create table(:categories) do
			add :name, :string, null: false
			timestamps
		end
		create unique_index(:categories, [:name])
	end
end