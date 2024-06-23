module PostsHelper
    def display_tags(tags_string)
        tags = tags_string.split(',')
        tags
    end

    def published_time(timestamp)
        now = Time.now
        diff = now - timestamp.to_time

        if diff < 60
            "just now"
        elsif diff < 3600
            "#{(diff / 60).to_i} minutes ago"
        elsif diff < 86400
            "#{(diff / 3600).to_i} hours ago"
        elsif diff < 604800
            "#{(diff / 86400).to_i} days ago"
        else
            timestamp.strftime("%d %b %Y")
        end
    end
    
    def excerpt(rich_text)
        text = rich_text.to_s
        document = Nokogiri::HTML.parse(text)
        excerpt = document.text.strip
        excerpt = excerpt[0..80]
        return excerpt
    end
    
end
