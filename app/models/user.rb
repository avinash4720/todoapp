class User < ActiveRecord::Base
    has_many :todos
    has_secure_password
    def to_formatted_string
        "#{id}.  #{name} #{last_name} - #{email}-#{password}"
        end
end