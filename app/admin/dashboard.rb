ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span 'StimulusJS on Rails 101'
        small "Create or edit a comment to see how the datepicker makes sure 'visible_from' < 'visible_to'"
        para ''
        para do
          link_to 'Read the article on Medium', "#", target: 'blank'
        end
      end
    end
  end
end
