class DestroyUrlFromPictures < ActiveRecord::Migration[5.2]
  def change
    remove_column :pictures, :url
  end
end
