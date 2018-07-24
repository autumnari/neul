class CreateTapes < ActiveRecord::Migration
  def change
    create_table :tapes do |t|

      t.string :title
      t.integer :user_id
      
      #upload할 image
      t.string :image
      
      t.string :m1_title
      t.string :m1_singer
      t.integer :m1_like
      
      t.string :m2_title
      t.string :m2_singer
      t.integer :m2_like
      
      t.string :m3_title
      t.string :m3_singer
      t.integer :m3_like
      
      t.string :m4_title
      t.string :m4_singer
      t.integer :m4_like
      
      t.string :m5_title
      t.string :m5_singer
      t.integer :m5_like
      
      t.string :m6_title
      t.string :m6_singer
      t.integer :m6_like
      
      t.string :m7_title
      t.string :m7_singer
      t.integer :m7_like
      
      t.string :m8_title
      t.string :m8_singer
      t.integer :m8_like
      
      t.string :m9_title
      t.string :m9_singer
      t.integer :m9_like
      
      t.string :m10_title
      t.string :m10_singer
      t.integer :m10_like
      t.timestamps null: false
    end
  end
end
