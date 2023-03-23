class CreateDevices < ActiveRecord::Migration[7.0]
  def change
    create_table :devices do |t|
      t.string :endpoint
      t.string :auth_key
      t.string :p256dh_key
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
