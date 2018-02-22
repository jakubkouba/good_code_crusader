module Refinery
  module Resumes
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Resumes

      engine_name :refinery_resumes

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "educations"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.resumes_admin_educations_path }
          plugin.pathname = root
          plugin.menu_match = %r{refinery/resumes/educations(/.*)?$}
          plugin.hide_from_menu = true
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Educations)
      end
    end
  end
end
