class ChangeListIdColumnToNotNull < ActiveRecord::Migration
  def change
    change_column_null :items, :list_id, false
  end
end
