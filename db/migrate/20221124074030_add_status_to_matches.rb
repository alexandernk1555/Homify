class AddStatusToMatches < ActiveRecord::Migration[7.0]
  def change
    add_column :matches, :status, :string, default: 'pending'
  end
end
