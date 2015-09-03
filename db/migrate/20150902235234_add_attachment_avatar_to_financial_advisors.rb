class AddAttachmentAvatarToFinancialAdvisors < ActiveRecord::Migration
  def self.up
    change_table :financial_advisors do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :financial_advisors, :avatar
  end
end
