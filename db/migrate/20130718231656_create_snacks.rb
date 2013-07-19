class CreateSnacks < ActiveRecord::Migration
  def change
    create_table :snacks do |t|
      t.string :name
      t.text :description
      t.integer :calories
      t.integer :restock_frequency_days
      t.date :last_restock_date

      t.timestamps
    end
  end
end
