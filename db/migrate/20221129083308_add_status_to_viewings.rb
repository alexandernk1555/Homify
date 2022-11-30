class AddStatusToViewings < ActiveRecord::Migration[7.0]
  def change
    add_column :viewings, :status, :string, default: 'pending'
  end
end
