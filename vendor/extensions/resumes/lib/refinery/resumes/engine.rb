module Refinery
  module Resumes
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Resumes

      engine_name :refinery_resumes

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = 'resume'
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.resumes_admin_resumes_path }
          plugin.pathname = root
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Resumes)
      end
    end
  end
end
