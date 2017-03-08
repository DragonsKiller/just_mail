class CreateEmails < ActiveRecord::Migration[5.0]
  def change
    create_table :emails do |t|
      t.string :to
      t.string :user_full_name
      t.string :addressee
      t.text :text

      t.timestamps
    end
  end
end
