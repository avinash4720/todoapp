class User < ActiveRecord::Base
    has_many :todos
    def to_formatted_string
        "#{id}.  #{name} #{last_name} - #{email}-#{password}"
        end
end