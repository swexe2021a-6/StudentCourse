class CreateManagements < ActiveRecord::Migration[5.2]
  def change
    create_table :managements do |t|
      t.string :subject
      t.string :annual
      t.string :link

      t.timestamps
    end
  end
end
