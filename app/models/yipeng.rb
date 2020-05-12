class Yipeng < ActiveRecord::Base
    has_many :coms
    validates :title, presence:true, length:{maximum:50}
    validates :body, length:{minimum:5}
    validates :date, presence:true
    validates :username, presence:true,length:{maximum:20}
end
