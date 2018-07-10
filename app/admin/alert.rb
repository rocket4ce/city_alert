ActiveAdmin.register Alert do
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
  form do |f|
    f.inputs do

      f.input :latitude
      f.input :longitude
      f.input :imagen, :as => :file, :hint => image_tag(f.object.imagen.url)
      f.latlng lang: :ru, map: :google, height: 500, loading_map: false, api_key_env: 'AIzaSyBuyw4RZd7ORJjyPtCfLBH3kzThgp3eYqw'
    end
    f.actions
  end

end
