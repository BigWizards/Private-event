class ChangeEventsDate < ActiveRecord::Migration[6.1]
  def change
    change_column :events, :date, :date
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
