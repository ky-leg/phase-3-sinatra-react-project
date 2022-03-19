class Brand < ActiveRecord::Base
    has_many :customers, through: :articles
    has_many :reviews, through: :articles
    has_many :articles
end