class Customer < ActiveRecord::Base
    has_many :articles
    has_many :brands, through: :articles
end