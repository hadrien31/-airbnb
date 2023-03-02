class AddColumnsToAdventure < ActiveRecord::Migration[7.0]
  def change
    add_column :adventures, :duration, :string
  end
end
