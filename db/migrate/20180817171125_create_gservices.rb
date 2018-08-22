class CreateGservices < ActiveRecord::Migration[5.2]
  def change
    create_table :gservices do |t|
      t.string :descripcion
      t.references :User, foreign_key: true
      t.references :Service, foreign_key: true

      t.timestamps
    end
  end
end
