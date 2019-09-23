class CreateBrouseUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :brouse_users do |t|
      t.integer :browse_name
      t.string :ip

      t.timestamps
    end
  end
end
