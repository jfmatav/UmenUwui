class CreateSnacks < ActiveRecord::Migration
  def change
    create_table :snacks do |t|
      t.string :nombre
      t.integer :precio
      t.integer :soda_id

      t.timestamps
    end
  end
end
