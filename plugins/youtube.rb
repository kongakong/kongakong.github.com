module Jekyll
  class Youtube < Liquid::Tag

    def initialize(name, id, tokens)
      super
      @id = id
    end

    def render(context)
      %(<div class="embed-video-container"><iframe width="400" height="300" src="http://www.youtube.com/embed/#{@id}"></iframe></div>)
    end
  end
end

Liquid::Template.register_tag('youtube', Jekyll::Youtube)
