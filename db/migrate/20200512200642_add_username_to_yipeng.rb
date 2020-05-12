class AddUsernameToYipeng < ActiveRecord::Migration
  def change
    add_column :yipengs, :username, :string
  end
end
