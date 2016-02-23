class AddInstrumentsToBandsMembers < ActiveRecord::Migration
  def change
    add_column :bands_members, :instruments, :string
  end
end
