class Category < ActiveRecord::Base
	has_many :inventories, dependent: :delete_all

	validates :name, presence: true
end
