ActiveAdmin.register ProductSellable do
  active_admin_import
  permit_params :name, :description, :count, :unit, :value
  index do
    colume "Product Name", :name
    colume "Description", :description
    colume "Inventory" ,:count
    colume "Unit", :unit
    colume "Unit Value",:value
  end

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
