class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|

        t.string :email,              null: false, default: ""
        t.string :checker
        t.string :dolist
        
      t.timestamps null: false
    end
  end
end
