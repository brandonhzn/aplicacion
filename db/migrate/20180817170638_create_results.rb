class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.string :valor
      t.references :User, foreign_key: true
      t.references :Place, foreign_key: true

      t.timestamps
    end
  end
end
