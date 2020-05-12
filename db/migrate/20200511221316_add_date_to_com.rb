class AddDateToCom < ActiveRecord::Migration
  def change
    add_column :coms, :date, :datetime
  end
end
