class Todo < ActiveRecord::Base
  validates :todo_text, presence: true
  validates :todo_text, length: { minimum: 2 }
  validates :due_date, presence: true


  belongs_to :user
    def pls_string
    is_completed = completed ? "[x]": "[]"
    "#{id}.#{due_date.to_s(:long)}.#{todo_text}.#{is_completed}"
    end
    
    def self.overdue
        all.where("due_date < ? and (not completed)", Date.today)
    end
    def self.of_user(user)
      all.where(user_id: user.id)
    end
    
      def self.due_today
        all.where("due_date = ?", Date.today)
      end
    
      def self.due_later
        all.where("due_date > ?", Date.today)
      end
      def due_today?
        due_date == Date.today
      end
    
      def self.completed
        all.where(completed: true)
      end


end
