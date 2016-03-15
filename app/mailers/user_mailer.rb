class UserMailer < ApplicationMailer
	def registration_confirmation(contact)
		@contact = contact
		mail(to: "rsd2878@gmail.com", subject: "new contact created")
	end
end
