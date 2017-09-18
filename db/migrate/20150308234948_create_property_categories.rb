class CreatePropertyCategories < ActiveRecord::Migration
  def change
    create_table :property_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
