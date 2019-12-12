class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :username
      t.string :artist_name
      t.string :portfolio
      t.string :image_url
      t.string :description
      t.string :password_digest

      t.timestamps
    end
  end
end
