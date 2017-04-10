class CreateNotelists < ActiveRecord::Migration
  def change
    create_table :notelists do |t|
      
      t.string :noteName
      t.string :noteCate
      t.string :noteCont
      t.string :date

      t.timestamps null: false
    end
  end
end
