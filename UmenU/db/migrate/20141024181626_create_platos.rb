class CreatePlatos < ActiveRecord::Migration
  def change
    create_table :platos do |t|
      t.string :nombre
      t.integer :precio
      t.string :categoria
      t.string :tipo
      t.integer :calificaciones
      t.integer :total
      t.integer :soda_id

      t.timestamps
    end
  end
end
