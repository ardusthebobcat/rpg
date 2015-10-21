class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :title
      t.string :caption
      t.string :description
    end
  end
end
