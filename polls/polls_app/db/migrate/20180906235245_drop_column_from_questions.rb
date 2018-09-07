class DropColumnFromQuestions < ActiveRecord::Migration[5.1]
  def change
    remove_column :questions, :answerchoices_id
  end
end
