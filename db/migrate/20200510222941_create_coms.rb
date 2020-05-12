class CreateComs < ActiveRecord::Migration
  def change
    create_table :coms do |t|
      t.string :user
      t.text :body
      t.references :yipeng, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
