ActiveAdmin.register Atividade do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :dia_atividade, :hora_atividade, :acontecimento, :tema, :envolvidos
 menu label: "Atividade: Cronograma"
 config.filters = false
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
