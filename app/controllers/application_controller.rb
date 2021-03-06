class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # 相關資訊：https://www.rubydoc.info/github/plataformatec/devise/Devise/ParameterSanitizer
    devise_parameter_sanitizer.permit(:sign_up, keys: [:subscribe_newsletter])
  end
end
