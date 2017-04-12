class CreateFollowings < ActiveRecord::Migration[5.0]
  def change
    create_table :followings do |t|
      t.integer :person_id
      t.integer :follower_id
      t.boolean :blocked
      t.references :villains, foreign_key:true
      t.timestamps
    end
  end
end
