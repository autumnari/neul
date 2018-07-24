class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      
      t.string :title
      t.string :singer
      
      t.timestamps null: false
    end
  end
end
