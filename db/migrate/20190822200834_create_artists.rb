class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :artist_name

      t.timestamps
    end
  end
end
