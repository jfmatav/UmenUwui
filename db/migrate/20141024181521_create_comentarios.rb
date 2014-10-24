class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :comentario
      t.integer :puntos
      t.integer :usuario_id
      t.integer :plato_id

      t.timestamps
    end
  end
end
