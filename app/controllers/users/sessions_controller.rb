class Users::SessionsController < Devise::SessionsController
  skip_before_action :verify_authenticity_token

  def destroy
    super do
      return redirect_to root_path
    end
  end
end
