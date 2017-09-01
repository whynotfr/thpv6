class Survey
	include ActiveModel::Model
	attr_accessor :first_name, :last_name, :age, :email, :body
	validates :first_name, :last_name, :age, :email, :body, presence: true
end
