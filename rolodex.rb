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

  def self.delete_selected_contact(contact_id_delete)
    @contacts.find do |y| if y.id.to_i == contact_id_delete
      puts "are you sure you want to delete the selected id?"
      puts "select 1 for yes, 2 for no"
      final_answer = gets.chomp.to_i
      contacts.delete_if{|i| i.id.to_i == contact_id_delete}
      # if final_answer == 1
      #   contacts.delete_at(contact_id_delete)
      # else
      #   puts "taking you back to the menu"
      # end
    end
    end
  end

  def self.modify_selected_contact(contact_id)
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