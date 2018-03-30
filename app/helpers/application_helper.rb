module ApplicationHelper
  def full_page_title
    if @page_title.nil?
      "Online Store"
    else
      @page_title + " | " + "Online Store"
    end
  end
end
