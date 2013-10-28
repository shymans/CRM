class Contact
  attr_accessor :note, :email, :first_name, :last_name, :id
  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
  end
end