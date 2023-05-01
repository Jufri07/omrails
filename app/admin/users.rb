ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  # this permit_params is for admin to change email, admin. (if need to change eg name, can just add in :name)
  permit_params :email, :admin

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :email
      f.input :admin
      # but here also must put in f.input :name if want this name to be edited by admin
    end
    f.actions
  end
end
