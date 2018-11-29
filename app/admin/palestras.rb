ActiveAdmin.register Palestra do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :palestrante, :email_palestrante, :titulo_palestra, :desc_palestra, :dia_palestra, :hora_palestra, :image
menu label: "Cadastro: palestrante"
config.filters = false


  show do
    attributes_table do
      row :palestrante
      row :email_palestrante
      row :titulo_palestra
      row :desc_palestra
      row :hora_palestra
      # row :image do |ad|
      #   image_tag url_for(ad.image)
      # end
    end
  end

  form do |f|
    f.inputs "Dados palestra" do
      f.input :palestrante, required: true, label: "Nome do palestrante"
      f.input :email_palestrante, required: true, label: "Email do palestrante"
      f.input :titulo_palestra, required: true, label: "Titulo da palestra"
      f.input :desc_palestra, required: true, label: "Descrição da palestra"
      f.input :hora_palestra, required: true, label: "Hora da palestra"
      #f.input :image, required: true, as: :file, label: "Imagem do palestrante"
    end
    f.actions
  end
end
