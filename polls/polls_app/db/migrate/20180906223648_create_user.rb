class CreateUser < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username, uniqueness: true
      t.timestamps
    end
  end
end
