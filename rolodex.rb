class Rolodex
	@@ids = 1001
	def initialize
		@contacts = []
		#@ids = 1001
	end
	def add_contact (contact)
		contact.id << @ids
		@contacts << contact
		@@ids += 1
		contact
	end
end