class Rolodex
	def initialize
		@contacts = []
		@id = 1000
	end

	def contacts
		@contacts
	end

	def add_contact(contact)
		contact.id = @id
		@contacts << contact
		@id += 1
		contact
	end

	def display_contacts
		contacts.each do |c|
			puts "Name #{c.first_name} #{c.last_name}"
			puts "Email #{c.email}"
			puts "Note #{c.note}"
			puts "ID #{c.id}"
		end	
	end

	def display_contact(id)
		c = @contacts.select{ |contact| contact.id == id}.first
		puts "Name #{c.first_name} #{c.last_name}"
		puts "Email #{c.email}"
		puts "Note #{c.note}"
		puts "ID #{c.id}"
	end

	def display_info_by_attribute
	end

	def delete_contact
	end
end