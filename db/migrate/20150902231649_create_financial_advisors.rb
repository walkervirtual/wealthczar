class CreateFinancialAdvisors < ActiveRecord::Migration
  def change
    create_table :financial_advisors do |t|
      t.string   :name
      t.string   :service
      t.text     :bio

      t.timestamps null: false
    end
  end
end
