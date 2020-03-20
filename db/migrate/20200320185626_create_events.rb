class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :place
      t.datetime :date
      t.string :description
      t.integer :organizer

      t.timestamps
    end
  end
end
