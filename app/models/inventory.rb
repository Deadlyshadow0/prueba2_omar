class Inventory < ActiveRecord::Base
  belongs_to :category

  has_one :work, dependent: :delete_all 

  validates :size, numericality: {greater_than: 0}

  scope :tam_x, ->(x){where(:size => x )}
 
 # validates :valid_size
  
 # def valid_size
 # 	if self.size.nil? || self.size <= 0
 # 		errors.add(:size, 'must be greater than 0')
 #	end  
 #end

end
