ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  actions  :index, :show
  menu label: "Alunos"

  index do

      column :cpf
      column :nome
      column :instituicao
      column :campus
      column "Oficina" do |m|
        oficina = Oficina.find(m.oficina_id)
        link_to oficina.titulo, admin_oficina_path(m.oficina_id)
      end
      column :presenca_oficina

  end

  filter :oficina, label: 'Oficina', as: :select,
         collection: proc { Oficina.all.map { |a| [a.titulo, a.id] } }
  filter :presenca_oficina

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
