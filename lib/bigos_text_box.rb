require "bigos_text_box/engine"
require "simple_form"
require "cocoon"


module BigosTextBox
  module Controllers
    autoload :Helpers, 'bigos_text_box/controllers/helpers'
  end

  def self.setup
    include_helpers
    yield self
  end

  # Include helpers to AC and AV.
  def self.include_helpers
    ActiveSupport.on_load(:action_controller) do
    end

    ActiveSupport.on_load(:action_view) do
      include BigosTextBox::Controllers::Helpers
    end
  end

end
