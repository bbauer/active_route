ActiveAdmin.register Setter do
  index do
    id_column
    column :name
    column :created_at
    default_actions
  end
end
