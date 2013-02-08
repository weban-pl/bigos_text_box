module BigosTextBox
  class TextBlock < ActiveRecord::Base
    attr_accessible :bigos_text_block_element_id, :content, :title
  end
end
