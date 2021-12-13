class CreateValuationviews < ActiveRecord::Migration[5.2]
  def change
    create_table :valuationviews do |t|
      t.string :subject
      t.float :star
      t.timestamps
    end
  end
end
