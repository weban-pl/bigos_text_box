module BigosApp

  class BigosTextBlockElement < PageElement
    has_one :text_block, :dependent => :destroy, :class_name => "BigosTextBox::TextBlock"
    after_save :add_text_block
    attr_accessible :is_admin_visible, :name, :type, :page_id, :position, :text_block_attributes
    accepts_nested_attributes_for :text_block

    def add_text_block
      self.text_block = BigosTextBox::TextBlock.create if self.text_block.blank?
    end

    def self.class_name
      "Text Block"
    end

    def name
      self.text_block.title
    end

    def self.class_name
      "Text Block"
    end

    def render
      "bigos_text_box/module/item"
    end

    def admin_render
      "bigos_text_box/module/admin/item"
    end

  end
end
