class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :student_num
      t.string :pass

      t.timestamps
    end
  end
end
