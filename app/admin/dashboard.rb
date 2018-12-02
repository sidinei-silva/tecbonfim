ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }
  menu label: "Home",priority: 1
  content title: proc{ I18n.t("active_admin.dashboard") } do
    table_for User.all do
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


  end # content
end


# For the entire application:
ActiveAdmin.setup do |config|
  config.comments = false
  config.comments_menu = false
end

# For a namespace:
ActiveAdmin.setup do |config|
  config.namespace :admin do |admin|
    admin.comments = false
  end
end


