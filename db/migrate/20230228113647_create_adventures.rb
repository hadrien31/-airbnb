class CreateAdventures < ActiveRecord::Migration[7.0]
  def change
    create_table :adventures do |t|
      t.string :title
      t.string :decription
      t.string :price
      t.string :integer
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
