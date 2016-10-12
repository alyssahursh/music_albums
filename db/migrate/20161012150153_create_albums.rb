class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.references :artist, index: true, foreign_key: true
      t.string :publisher
      t.decimal :price

      t.timestamps null: false
    end
  end
end
