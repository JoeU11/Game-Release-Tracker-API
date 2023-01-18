class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :description
      t.datetime :release_date
      t.integer :anticipation

      t.timestamps
    end
  end
end
