class Genre < ActiveRecord::Base
  has_many :diaries
end
