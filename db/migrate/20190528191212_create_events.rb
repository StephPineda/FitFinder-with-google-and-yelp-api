class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.datetime :event_start
      t.datetime :event_end
      t.integer :class_size
      t.string :name
      t.belongs_to :gym, null: false, foreign_key: true

      t.timestamps
    end
  end
end
