class User < ApplicationRecord
    
  has_one :account
  has_one :accounthistory, through: :account
  
  has_and_belongs_to_many :course ,counter_cache: true
end
