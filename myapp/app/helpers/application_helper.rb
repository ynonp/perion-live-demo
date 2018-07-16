# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def login_logout_link
    if signed_in?
      link_to 'logout', session_path, method: 'DELETE'
    else
      link_to 'login', new_session_path
    end
  end
end
