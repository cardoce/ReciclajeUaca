ActiveAdmin.register User do

permit_params :email, :password, :password_confirmation, :points, :firstname, :lastname
index do
    selectable_column
    id_column
    column :email
    column :points
    column :created_at
    actions
  end

end
