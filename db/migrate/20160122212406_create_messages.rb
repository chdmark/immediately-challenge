class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :sender
      t.string :recipient 
      t.string :date_sent 
      t.string :subject
      t.string :body
      t.timestamps null: false
    end
  end
end
