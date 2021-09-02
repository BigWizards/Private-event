class ChangeEventsTable < ActiveRecord::Migration[6.1]
  def change
    change_table :events do |t|
      t.rename :creator, :creator_display_name
    end
  end
end
