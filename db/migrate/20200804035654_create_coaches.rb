class CreateCoaches < ActiveRecord::Migration[6.0]
  def change
    create_table :coaches do |t|
      t.string :business_name
      t.boolean :children_check
      t.integer :business_mobile
      t.text :bio

      t.timestamps
    end
  end
end
