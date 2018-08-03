module ViewHelpers
  module EvilIcons
    def ei_icon(name, classes: nil)
      "<svg class='icon__cnt #{classes}'><use xlink:href='##{name}-icon'/></svg>".html_safe
    end
  end
end
