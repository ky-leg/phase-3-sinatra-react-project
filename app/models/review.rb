class Review < ActiveRecord::Base
    belongs_to :article
    belongs_to :customer
end