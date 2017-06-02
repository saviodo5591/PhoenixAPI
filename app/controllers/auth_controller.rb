class AuthController < ApiController
  def is_signed_in?
    if gamer_signed_in?
      render :json => {"signed_in" => true, "gamer" => current_gamer}.to_json()
    else
      render :json => {"signed_in" => false}.to_json()
    end
  end
end
