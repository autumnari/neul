class CreateDailies < ActiveRecord::Migration
  def change
    create_table :dailies do |t|
      t.string :title
      t.integer :user_id
      t.string :music
      t.string :singer
      t.text :content
      
      t.timestamps null: false
    end
  end
end
