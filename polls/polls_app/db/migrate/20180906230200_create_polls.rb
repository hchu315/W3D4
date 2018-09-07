class CreatePolls < ActiveRecord::Migration[5.1]
  def change
    create_table :polls do |t|
      t.integer :username_id
      t.string :title
      t.integer :question_id

      t.timestamps
    end
  end
end
