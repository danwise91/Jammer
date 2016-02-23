class AddBandToBandsMembers < ActiveRecord::Migration
  def change
    add_column :bands_members, :band, :string
  end
end
