class CreatePostOffices < ActiveRecord::Migration[5.0]
  def change
    create_table :post_offices do |t|
      t.string :postcode
      t.text :post_office_info

      t.timestamps
    end
  end
end
