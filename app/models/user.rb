class User < ApplicationRecord
 

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :artists
  has_many :billboards
  

end