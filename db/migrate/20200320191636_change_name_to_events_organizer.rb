class ChangeNameToEventsOrganizer < ActiveRecord::Migration[6.0]
  def change
    rename_column :events, :organizer, :organizer_id
  end
end
