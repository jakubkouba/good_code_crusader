module Refinery
  module Resumes
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Resumes

      engine_name :refinery_resumes

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "employments"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.resumes_admin_employments_path }
          plugin.pathname = root
          plugin.menu_match = %r{refinery/resumes/employments(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Employments)
      end
    end
  end
end
