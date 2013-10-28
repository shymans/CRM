require_relative "rolodex"
require_relative "contact"

class CRM 
  attr_accessor :name

  def initialize(name)
    @name= name
  end

  def print_main_menu
    puts "Welcome #{name} to my CRM"
    puts "1 : Add a customer to the CRM"
    puts "2 : Modify a customer in the CRM"
    puts "3 : Display all the contacts in the CRM"
    puts "4 : Delete a contact from the CRM"
    puts "5 : Display an attribute from the CRM"
    puts "6 : Exit the CRM"
    print "Select an option from the menu above: "
  end

  def main_menu
    print_main_menu
    user_selected = gets.to_i
    call_option(user_selected)
  end

  def call_option(user_selected)
    case user_selected
    when 1
      add_new_contact
    when 2
      modify_contact
    when 3
      display_all
    when 4
      delete_contact
    when 5
      display_attribute
    when 6
      exit_crm
    end
  end

  def add_new_contact
    puts "Enter first name: "
    first_name = gets.chomp
    puts "Enter last name: "
    last_name = gets.chomp
    puts "Enter a valid email: "
    email = gets.chomp
    puts "Enter a personal note: "
    note = gets.chomp
    contact = Contact.new(first_name, last_name, email, note)
    Rolodex.add_contact(contact)
    main_menu
  end

  def exit_crm
    abort
  end

  def display_all
    Rolodex.display_all_contacts
    main_menu
  end
  
  def delete_contact
    puts "what is the id of the contact you would like to delete?"
    delete_answer = gets.chomp.to_i
    Rolodex.delete_selected_contact(delete_answer)
    main_menu
  end

  def modify_contact
    puts "what is the id of the contact you would like to change?"
    modify_answer = gets.chomp.to_i
    Rolodex.modify_selected_contact(modify_answer)
    main_menu
  end
end

my_crm = CRM.new("Austin")
my_crm.main_menu