class Response < ApplicationRecord
  validate :do_not_duplicate
  
  belongs_to :answer_choice,
  foreign_key: :answerchoice_id,
  class_name: :AnswerChoice
  
  belongs_to :respondent,
  foreign_key: :user_id,
  class_name: :User
  
  def do_not_duplicate
    user_id = self.user_id
    
    user = User.find_by_id(user_id)
    user.responses.to_a.include?(response_id: self.id)
      
  
  end
end
