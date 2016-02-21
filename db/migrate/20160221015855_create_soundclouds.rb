class CreateSoundclouds < ActiveRecord::Migration
  def change
    create_table :soundclouds do |t|
      t.string :client_id
      t.string :client_secret
      t.string :redirect_uri
      t.string :response_type
      t.timestamps null: false
    end
  end
end
