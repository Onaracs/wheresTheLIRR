class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :username
      t.string :text
      t.belongs_to :town
      
      t.timestamps
    end
  end
end
