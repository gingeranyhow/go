#add email column

Sequel.migration do
  up do
    alter_table :links do
      add_column :email, String, :text=>true 
    end
  end

  down do
    alter_table :links do
      drop_column :email
    end
  end
end
