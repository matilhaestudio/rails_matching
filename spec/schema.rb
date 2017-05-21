ActiveRecord::Schema.define do
  self.verbose = false

  create_table :users, id: false, :force => true do |t|
    t.integer :id
    t.string :name
    t.integer :age
    t.string :job_title

    t.timestamps
  end

end