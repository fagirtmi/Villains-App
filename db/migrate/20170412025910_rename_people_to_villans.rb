class RenamePeopleToVillans < ActiveRecord::Migration[5.0]
   def self.up
    rename_table :people, :villains
  end

  def self.down
    rename_table :villains, :people
  end
end
