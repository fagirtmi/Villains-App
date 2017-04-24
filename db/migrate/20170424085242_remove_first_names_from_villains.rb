class RemoveFirstNamesFromVillains < ActiveRecord::Migration[5.0]
  def change
    remove_column :villains, :firstName, :string
    remove_column :villains, :lastName, :string
  end
end
