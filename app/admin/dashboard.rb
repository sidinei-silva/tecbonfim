ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }
  menu label: "Home",priority: 1
  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
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


