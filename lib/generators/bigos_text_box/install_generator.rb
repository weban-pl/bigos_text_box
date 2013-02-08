module BigosTextBox
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates a BigosTextBox initializer."
      def copy_initializer
        template "bigos_text_box.rb", "config/initializers/bigos_text_box.rb"
      end

      def include_routes
        route 'mount BigosTextBox::Engine => "/bigos_text_box"'
      end

      def create_settings
        im = BigosApp::InstalledModule.find_or_create_by_name(BigosTextBox.name)
        im.page_element =  BigosApp::BigosTextBlockElement.name
        im.save
      end

    end
  end
end
