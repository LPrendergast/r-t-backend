class CreateEventStyles < ActiveRecord::Migration[6.0]
  def change
    create_table :event_styles do |t|
      t.string :website_colour
      t.string :background_colour
      t.string :font_family
      t.string :font_colour
      t.integer :event_id

      t.timestamps
    end
  end
end
