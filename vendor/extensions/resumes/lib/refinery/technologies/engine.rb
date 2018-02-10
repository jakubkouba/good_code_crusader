module Refinery
  module Resumes
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Resumes

      engine_name :refinery_resumes

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "technologies"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.resumes_admin_technologies_path }
          plugin.pathname = root
          plugin.menu_match = %r{refinery/resumes/technologies(/.*)?$}
          plugin.hide_from_menu = true
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Technologies)
      end
    end
  end
end
