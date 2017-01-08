class CreateSquares < ActiveRecord::Migration
  def change
    create_table :squares do |t|
      t.string :home
      t.string :away
      t.datetime :game_time
      t.boolean :locked
    end
  end
end
