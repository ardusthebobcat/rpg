class CreateCharacter < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :type
      t.integer :room_id
      t.integer :attack
      t.integer :defense
      t.integer :health

      t.timestamps
    end
  end
end
