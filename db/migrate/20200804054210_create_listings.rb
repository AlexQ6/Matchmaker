class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.text :description
      t.integer :level
      t.float :price
      t.integer :term
      t.string :time
      t.string :location
      t.references :coach, null: false, foreign_key: true

      t.timestamps
    end
  end
end
