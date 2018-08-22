class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :nombre
      t.string :direccion
      t.string :localidad
      t.string :ciudad
      t.string :telefono
      t.float :latitud
      t.float :longitud
      t.string :horario
      t.boolean :estado
      t.string :web
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
