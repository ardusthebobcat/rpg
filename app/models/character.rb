class Character < ActiveRecord::Base
  #belongs_to :user
  #has_many :items

  validates :name, :type, :presence =>true

end
