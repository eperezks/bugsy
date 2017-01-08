class CreateSquareBoxes < ActiveRecord::Migration
  def change
    create_table :square_boxes do |t|
      t.integer :square_id
      t.integer :user_id
      t.integer :x
      t.integer :y
      t.integer :name
    end
  end
end
