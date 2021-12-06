class CreateValuations < ActiveRecord::Migration[5.2]
  def change
    create_table :valuations do |t|
      t.string :comment
      t.float :star
      t.integer :user_id
      t.datetime :tdate

      t.timestamps
    end
  end
end
