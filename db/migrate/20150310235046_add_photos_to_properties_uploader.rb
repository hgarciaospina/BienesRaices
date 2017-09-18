class AddPhotosToPropertiesUploader < ActiveRecord::Migration
  def change
    add_column :properties, :photos, :string
  end
end
