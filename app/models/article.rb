class Article < ActiveRecord::Base
    belongs_to :brand
    belongs_to :customer
end