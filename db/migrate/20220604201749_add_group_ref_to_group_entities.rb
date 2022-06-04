class AddGroupRefToGroupEntities < ActiveRecord::Migration[7.0]
  def change
    add_reference :group_entities, :group, null: false, foreign_key: true
  end
end
