ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  actions  :index, :show
  menu label: "Alunos"

  # index do
  #     column :cpf
  #     column :nome
  #     column :instituicao
  #     column :campus
  #     column "Oficina" do |m|
  #       oficina = Oficina.find(m.oficina_id)
  #       link_to oficina.titulo, admin_oficina_path(m.oficina_id)
  #     end
  #     column :presenca_oficina
  #
  # end

  filter :oficina, label: 'Oficina', as: :select,
         collection: proc { Oficina.all.map { |a| [a.titulo, a.id] } }
  filter :presenca_oficina


end
