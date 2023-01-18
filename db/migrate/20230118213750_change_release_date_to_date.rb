class ChangeReleaseDateToDate < ActiveRecord::Migration[7.0]
  def change
    change_column :games, :release_date, :date
  end
end
