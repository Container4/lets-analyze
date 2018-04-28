class AddExtensions < ActiveRecord::Migration[4.2]
  def change
    enable_extension :citext
    # enable_extension :postgis
    # enable_extension :tablefunc
  end
end
