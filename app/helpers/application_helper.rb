module ApplicationHelper
  def active?(path)
    "active" if current_page?(path)
  end
  def crumb_active?(path)
    "crumb_active" if current_page?(path)
  end
end
