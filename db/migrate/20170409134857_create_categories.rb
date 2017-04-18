class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
        t.string :email,              null: false, default: ""
        t.string :cateName
        
  
      t.timestamps null: false
    end
  end
end
