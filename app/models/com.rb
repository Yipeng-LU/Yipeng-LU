class Com < ActiveRecord::Base
  belongs_to :yipeng
  validates :user, presence:true, length:{maximum:20}
  validates :date, presence:true
  validates :body, presence:true
end
