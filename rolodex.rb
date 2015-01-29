class Rolodex
	def initialize
		@contacts = []
		@@id = 1000
	end

	def contacts
		@contacts
	end

	def add_contact(contact)
		contact.id = @@id
		@contacts << contact
		@@id += 1	
	end

	def current_id
		@@id
	end

	def modify_contact(contact)

		puts "\nChoose an attribute to modify: \n[1] First Name \n[2] Last Name \n[3] Email \n[4] Note"
		answer = gets.chomp.to_i

		case answer
		when 1 
			puts "Enter a modified First Name"
			firstname = gets.chomp.capitalize
			contact.first_name = firstname
		when 2
			puts "Enter a modified Last Name"
			lastname = gets.chomp.capitalize
			contact.last_name = lastname
		when 3 
			puts "Enter a modified Email Address"
			emailaddress = gets.chomp
			contact.email = emailaddress
		when 4 
			puts "Enter a modified note"
			newnote = gets.chomp
			contact.note = newnote
		end
		
	end
	def display_all_contacts
		contacts.each do |c|
			puts "Name #{c.first_name} #{c.last_name}"
			puts "Email #{c.email}"
			puts "Note #{c.note}"
			puts "ID #{c.id}"
		end	
	end

	def find_contact(id)
		@contacts.select{ |contact| contact.id == id}.first
	end

	def display_a_contact(id)
		c = find_contact(id)
		puts "Name #{c.first_name} #{c.last_name}"
		puts "Email #{c.email}"
		puts "Note #{c.note}"
		puts "ID #{c.id}"
	end

def modify_a_contact(contact)

		puts "\nChoose an attribute to modify: \n[1] First Name \n[2] Last Name \n[3] Email \n[4] Note"
		answer = gets.chomp.to_i

		case answer
		when 1 
			puts "Enter a modified First Name"
			firstname = gets.chomp.capitalize
			contact.first_name = firstname
		when 2
			puts "Enter a modified Last Name"
			lastname = gets.chomp.capitalize
			contact.last_name = lastname
		when 3 
			puts "Enter a modified Email Address"
			emailaddress = gets.chomp
			contact.email = emailaddress
		when 4 
			puts "Enter a modified note"
			newnote = gets.chomp
			contact.note = newnote
		end
		
	end

	
	def display_attribute(contact)

		puts "\nChoose attribute to display: \n[1] First Name \n[2] Last Name \n[3] Email Address \n[4] Note"
		option = gets.chomp.to_i

		case option
		when 1 
			puts "#{contact.first_name}"
		when 2 
			puts "#{contact.last_name}"
		when 3
			puts "#{contact.email}"
		when 4
			puts "#{contact.note}"
		end
		
	end


	def delete_contact(id)
		contact = find_contact(id)
		@contacts.delete(contact)
	end
end