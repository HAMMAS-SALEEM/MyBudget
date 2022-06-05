class AddCategoryRefToCategoryTransactions < ActiveRecord::Migration[7.0]
  def change
    add_reference :category_transactions, :category, null: false, foreign_key: true
  end
end
