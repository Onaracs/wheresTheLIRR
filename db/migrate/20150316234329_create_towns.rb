class CreateTowns < ActiveRecord::Migration
  def change
    create_table :towns do |t|
      t.string :name
      t.belongs_to :line

      t.timestamps
    end
  end
end
