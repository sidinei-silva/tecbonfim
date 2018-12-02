ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  actions  :index, :show
  menu label: "Alunos"


  filter :oficina, label: 'Oficina', as: :select,
         collection: proc { Oficina.all.map { |a| [a.titulo, a.id] } }
  filter :presenca_oficina


end
