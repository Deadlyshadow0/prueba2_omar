class User < ActiveRecord::Base
	has_many :works, dependent: :delete_all

	validates :name, presence: true
end
