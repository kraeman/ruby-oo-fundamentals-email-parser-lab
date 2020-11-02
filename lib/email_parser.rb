# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    def initialize(email_addresses)
        @emails = email_addresses
    end

    def parse
        array_of_emails_with_potential_commas = @emails.split(" ")
        new_array = []
        array_of_emails_with_potential_commas.each do |email|
            if email.end_with?(",")
                mod = email.split("")
                mod.delete_at(-1)
                new_array.push(mod.join)
            else
                new_array.push email
            end
        end
        new_array.uniq
    end

    attr_accessor :emails
end