class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :firstName
      t.string :lastName
      t.string :alias
      t.string :birthday
      t.integer :gender
      t.integer :rank
      t.string :cursed
      t.boolean :super_strength
      t.boolean :healing_factor
      t.boolean :invulnerability
      t.boolean :duplication
      t.boolean :dynamic_camouflage
      t.boolean :invisibility
      t.boolean :enhanced_awarness
      t.boolean :enhanced_durability
      t.boolean :enhanced_marksmanship
      t.boolean :enhanced_reflexes
      t.boolean :enhanced_senses
      t.boolean :clairvoyance
      t.boolean :energy_manipulation
      t.boolean :immortality
      t.boolean :mental_projection
      t.boolean :psychic
      t.boolean :superhuman_intelligence
      t.boolean :time_travel
      t.boolean :telepathy
      t.boolean :teleportation
      t.integer :searching_for
      
      
      t.timestamps
    end
  end
end
