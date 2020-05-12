class AddDateToYipeng < ActiveRecord::Migration
  def change
    add_column :yipengs, :date, :datetime
  end
end
