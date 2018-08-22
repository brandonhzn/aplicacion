class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido
      t.string :email
      t.string :documento
      t.string :tipodoc
      t.string :telefono
      t.string :rol
      t.boolean :estado
      t.string :descripcion
      t.string :calificacion
      t.boolean :estadoGuia
      t.string :password_digest
      t.timestamps
    end
  end
end
