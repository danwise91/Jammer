class AddMembersGenreAndShowsToBands < ActiveRecord::Migration
  def change
    add_column :bands, :group_members, :string
    add_column :bands, :genre, :string
    add_column :bands, :shows, :string
  end
end
