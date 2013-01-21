module Middleman::Sitemap::Extensions::Traversal
  def parents
    current = self

    if block_given?
      until current.nil?
        yield current
        current = current.parent
      end
    else
      arr = []

      until current.nil?
        arr << current
        current = current.parent
      end

      arr.reverse
    end
  end
end
