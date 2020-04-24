class User < ActiveRecord::Base
    def to_formatted_string
        "#{id}.  #{name} #{last_name} - #{email}-#{password}"
        end
end