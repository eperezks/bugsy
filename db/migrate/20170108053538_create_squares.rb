class CreateSquares < ActiveRecord::Migration
  def change
    create_table :squares do |t|
      t.string :team1
      t.string :team2
      t.datetime :game_time
      t.boolean :locked
    end
  end
end
