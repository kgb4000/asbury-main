class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :date
      t.string :time
      t.string :place
      t.string :address
      t.text :description

      t.timestamps null: false
    end
  end
end
