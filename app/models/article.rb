class Article < ActiveRecord::Base
    belongs_to :brand
    belongs_to :customer
    has_many :reviews
end