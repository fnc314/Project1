module SessionsHelper
# SessionHelper manages @current_user, that's the user currently
  # signed in.

  # signs in supplied user, called from SessionController
  def sign_in(client)
    cookies.permanent[:remember_token] = client.remember_token
    # current_user is avilable in controllers and views!
    # This is an is an assignment, which we must define - see below
    # note that next line is a call to setter 'def current_user=(user)' below
    current_client = client
  end

  def signed_in?
    !current_client.nil?
  end

  # Authorization: signed_in_user is called in a before_filter
  # callback in each controller, see books/ingredients/recipe controllers
  # Ensures access to create/edit functions on if signed in.
  def signed_in_client
    unless signed_in?
      # If not signed in, save current location in session object
      # to be able to redirect after successful sign in.
      session[:return_to] = request.url
      # prompt sign in page
      redirect_to signin_url, notice: "Please sign in."
    end
  end

  # signs out user by deleting @current_user and session cookie
  def sign_out
    @current_client = nil
    cookies.delete(:remember_token)
  end

  # Getter and setter for @current_user
  def current_client=(client)
    @current_client = client
  end

  # if current_user doesn't exist, check session cookie for user session
  # If exists, get the user record that belongs to that session.
  def current_client
    @current_client ||= Client.find_by_remember_token(cookies[:remember_token])
  end
end
