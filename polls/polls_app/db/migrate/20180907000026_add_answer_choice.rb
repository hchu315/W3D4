class AddAnswerChoice < ActiveRecord::Migration[5.1]
  def change
    remove_column :questions, :answer_choice
  end
end
