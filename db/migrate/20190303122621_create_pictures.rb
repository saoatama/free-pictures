class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :name
      t.references :genre, foreign_key: true
      t.string :url
      t.integer :download

      t.timestamps
    end
  end
end
