class ContactObserver < ActiveRecord::Observer
	observe Contact
	def after_create(contact)
		UserMailer.registration_confirmation(contact).deliver
end
end
