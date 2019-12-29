class CreateStyles < ActiveRecord::Migration[6.0]
  def change
    create_table :styles do |t|
      t.string :website_colour
      t.string :background_colour
      t.string :font_family
      t.string :font_colour
      t.integer :artist_id

      t.timestamps
    end
  end
end
