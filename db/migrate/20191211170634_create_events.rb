class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :image_url
      t.string :location
      t.string :date
      t.string :artist_id
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
