class AddFeeToStudent < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :fee_id, :integer
  end
end
