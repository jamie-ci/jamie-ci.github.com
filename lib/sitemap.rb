require 'middleman'
require 'pathname'

class Middleman::Sitemap::Store
  def roots
    self.find_resource_by_path('/index.html').children.select { |child| child.page? }
  end
end

class Middleman::Sitemap::Resource
  def title
    parents(true).map { |page| page.data.title }.compact.join(' - ').presence
  end

  def root
    self.page? && !self.path.include?('/')
  end

  def children?
    !self.children.empty?
  end

  def children
    super.sort
  end

  def parents(include_self = false)
    parents = []

    current = include_self ? self : self.parent
    until current.nil?
      parents.push current
      current = current.parent
    end

    parents.pop # remove root level
    parents
  end

  def page?
    self.ext == '.html' && !self.data['title'].blank?
  end

  def current?(receiver)
    self == receiver.current_page || self.children.any? { |child| child.current?(receiver) }
  end

  def <=>(other_resource)
    [(self.data['order'] || 0), (self.title || '').downcase] <=> [(other_resource.data['order'] || 0), (other_resource.title || '').downcase]
  end
end
