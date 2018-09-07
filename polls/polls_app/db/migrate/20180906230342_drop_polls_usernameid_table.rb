class DropPollsUsernameidTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :polls, :username_id
  end
end
