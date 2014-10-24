class CreateSodas < ActiveRecord::Migration
  def change
    create_table :sodas do |t|
      t.string :nombre
      t.float :long
      t.float :lat
      t.string :descripcion

      t.timestamps
    end
  end
end
