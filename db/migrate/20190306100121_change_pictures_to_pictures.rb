class ChangePicturesToPictures < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :photo, :binary
  end
end
