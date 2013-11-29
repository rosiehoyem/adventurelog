class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :event
      t.string :date
      t.string :location
      t.string :type
      t.references :adventure, index: true

      t.timestamps
    end
  end
end
