class AddIconToServices < ActiveRecord::Migration
  def change
    add_column :services, :icon_name, :string
  end
end
