class Contact < ActiveRecord::Base
	#validations
	validates :name, :last_name, :email, :phone, :gender, :address, presence: true
	#validates :email, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
	validates :phone, length: {is: 10}, numericality: {only_integer: true}
	validates :email, format: { with: /[a-z0-9]+[a-z0-9._]*(@){1}[a-z0-9]{1}[a-z0-9]*(\.){1}[a-z]{2,6}/ }

	#associations
	before_save :name_caps
	def name_caps
		self.name.upcase!
	end
	
	before_update :name_firstletter_caps
	def name_firstletter_caps
		self.name.capitalize!
	end
		#callbacks
	#class-methods
	#sql query => array instance-methods
end
