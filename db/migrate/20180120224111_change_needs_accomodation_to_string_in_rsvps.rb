class ChangeNeedsAccomodationToStringInRsvps < ActiveRecord::Migration[5.1]
  def change
    change_column :rsvps, :needs_accomodation, :string
  end
end
