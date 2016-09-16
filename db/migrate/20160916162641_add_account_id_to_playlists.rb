class AddAccountIdToPlaylists < ActiveRecord::Migration[5.0]
  def change
    add_column :playlists, :account_id, :integer
  end
end
