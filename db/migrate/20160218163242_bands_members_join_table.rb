class BandsMembersJoinTable < ActiveRecord::Migration
  def change
    create_join_table :bands, :members do |t|
      t.integer :band_id
      t.integer :member_id
    end
  end
end
