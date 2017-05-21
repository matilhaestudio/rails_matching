ActiveRecord::Schema.define do
  self.verbose = false

  create_table :users, :force => true do |t|
    t.integer :id
    t.string :name
    t.integer :age
    t.string :title

    t.timestamps
  end

end