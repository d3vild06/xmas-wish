class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      
      t.string :wish
      t.string :name

      t.timestamps null: false
    end
  end
end
