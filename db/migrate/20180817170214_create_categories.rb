class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :tipoest

      t.timestamps
    end
  end
end
