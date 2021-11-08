class CreateValuations < ActiveRecord::Migration[5.2]
  def change
    create_table :valuations do |t|
      t.string :comment
      t.float :star

      t.timestamps
    end
  end
end
