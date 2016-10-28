class Inventory < ActiveRecord::Base
	after_destroy :msgDelete

  belongs_to :category

  has_one :work, dependent: :delete

  validates :size, numericality: {greater_than: 0}

  scope :tam_x, ->(x){where(:size => x )}
 
 # validate :valid_size
  
 # def valid_size
 # 	if self.size.nil? || self.size <= 0
 # 		errors.add(:size, 'must be greater than 0')
 #	end  
 #end

 	def msgDelete
 		Log.create(description: "La pieza con serial #{self.serial} ha sido borrado")
 	end

end
