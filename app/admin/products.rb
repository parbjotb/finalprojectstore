ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :price, :description, :image

  form do |f|
    f.semantic_errors #shows errors on :base
    f.inputs # builds an input field for every attribute
    # this next input line lets us add images to the active admin page
    f.inputs do
      # this hint thing lets us see the image in the active admin page
      f.input :image, as: :file, hint: f.object.image.present? ? image_tag(f.object.image) : ""
    end
    f.actions # adds the "submit" and "cancel" buttons
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :price, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
