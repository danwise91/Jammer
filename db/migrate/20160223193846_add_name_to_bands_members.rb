class AddNameToBandsMembers < ActiveRecord::Migration
  def change
    add_column :bands_members, :name, :string
  end
end
