class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :artist
      t.string :album
      t.integer :popularity
      t.float :acousticness
      t.float :danceability
      t.float :energy
      t.float :instrumentalness
      t.float :loudness
      t.float :tempo
      t.integer :playlist_id
    end
  end
end
