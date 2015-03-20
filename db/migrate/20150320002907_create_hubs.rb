class CreateHubs < ActiveRecord::Migration
  def change
    create_table :hubs do |t|
      t.belongs_to :line
      t.belongs_to :town

      t.timestamps
    end
  end
end
