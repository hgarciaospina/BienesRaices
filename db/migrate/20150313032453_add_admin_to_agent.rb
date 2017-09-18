class AddAdminToAgent < ActiveRecord::Migration
  def up
    add_column :agents, :admin, :boolean, default: false
    drop_table :admins
  end

  def down
    remove_column :agents, :admin
  end
end
