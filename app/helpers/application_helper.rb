module ApplicationHelper

  # Returns the full page title for the specific page
  def full_title(page_title)
    # Set base title of the page
    base_title='Ruby on Rails Tutorial Sample App'

    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

end
