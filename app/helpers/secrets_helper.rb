module SecretsHelper

  def flash_error
    if flash[:error]
      flash[:error]
    end
  end
end
