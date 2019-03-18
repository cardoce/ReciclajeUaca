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
  form do |f|
    f.inputs do
      f.input :firstname
      f.input :lastname
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :points
    end
    f.actions
  end
end
