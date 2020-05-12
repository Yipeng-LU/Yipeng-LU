class CreateYipengs < ActiveRecord::Migration
  def change
    create_table :yipengs do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
