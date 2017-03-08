class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.string :track_number
      t.string :track_info

      t.timestamps
    end
  end
end
