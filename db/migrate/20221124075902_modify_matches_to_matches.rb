class ModifyMatchesToMatches < ActiveRecord::Migration[7.0]
  def change
    remove_reference :matches, :search
    add_reference :matches, :search, index: true, foreign_key: true, null: true
    add_reference :matches, :user,index: true, foreign_key: true, null: false
  end
end
