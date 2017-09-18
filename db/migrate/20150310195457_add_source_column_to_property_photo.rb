class AddSourceColumnToPropertyPhoto < ActiveRecord::Migration
  def change
    add_column :property_photos, :source, :string
  end
end
