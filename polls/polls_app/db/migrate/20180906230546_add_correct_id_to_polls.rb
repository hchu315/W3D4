class AddCorrectIdToPolls < ActiveRecord::Migration[5.1]
  def change
    add_column :polls, :user_id , :integer
  end
end
