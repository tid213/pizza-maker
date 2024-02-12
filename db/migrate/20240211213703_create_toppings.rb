class CreateToppings < ActiveRecord::Migration[7.1]
  def change
    create_table :toppings do |t|
      t.string :name
      t.references :pizza, null: false, foreign_key: true

      t.timestamps
    end
  end
end
