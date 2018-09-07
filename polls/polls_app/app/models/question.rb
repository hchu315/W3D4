class Question < ApplicationRecord
  
  has_many :answer_choices,
  primary_key: :id,
  foreign_key: :answerchoice_id,
  class_name: :AnswerChoice
  
  belongs_to :poll,
  foreign_key: :poll_id,
  class_name: :Poll
end
