class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.string :description
      t.datetime :start_time
      t.datetime :end_time
      t.float :price
      t.boolean :is_free
      t.integer :available_spots
      t.integer :maximum_applications
      t.boolean :advertised?
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
