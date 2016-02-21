class AddSoundCloudUserIdAndSoundCloudAccessTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :soundcloud_user_id, :intger
    add_column :users, :soundcloud_access_token, :string
  end
end
