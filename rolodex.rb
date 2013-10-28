class Rolodex 
  @contacts = []
  @id = 1000

  def self.add_contact(contact)
    contact.id = @id
    @contacts << contact
    @id += 1
  end

  def self.display_all_contacts
    puts "#{@contacts}"
  end

  def self.delete_selected_contact

  end

  def self.find_contact(contact_id)
    @contacts.find do |x| if x.id.to_i == contact_id
      puts "please enter the new information"
      puts "First name: "
      new_first_name = gets.chomp
      puts "Last name: "
      new_last_name = gets.chomp
      puts "email: "
      new_email = gets.chomp
      puts "note: "
      new_note = gets.chomp
      x.id = contact_id
      x.first_name = new_first_name
      x.last_name = new_last_name
      x.email = new_email
      x.note = new_note
      end 
    end
  end

  def self.contacts
    @contacts
  end

end