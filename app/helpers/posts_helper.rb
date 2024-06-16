module PostsHelper
    def display_tags(tags_string)
        tags = tags_string.split(',').map(&:strip)
        tags.map { |tag| "##{tag}" }.join(' ')
    end
    
    def truncate_text(text, length = 20)
        if text.length > length
            "#{text[0, length]}..."
        else
            text
        end
        
    end
    

end
