class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :birthday
      t.string :email
      t.string :eye_color
      t.boolean :right_handed

      t.timestamps
    end
  end
end
