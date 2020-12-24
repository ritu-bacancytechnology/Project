class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :location
      t.integer :cost
      t.integer :people
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.references :sub_category, null: true, foreign_key: true
      t.timestamps
    end
  end
end
