class CreateGcapacities < ActiveRecord::Migration[5.2]
  def change
    create_table :gcapacities do |t|
      t.string :descripcion
      t.references :User, foreign_key: true
      t.references :Capacity, foreign_key: true

      t.timestamps
    end
  end
end
