class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|

      t.integer :age
      t.string  :job
      t.string  :salary
      t.string  :service
      t.string  :status
      t.string  :home
      t.timestamps null: false
    end
  end
end
