Rails.application.routes.draw do

  constraints(Subengine::Constraints::SubdomainRequired) do
  end

  mount Subengine::Engine => "/"

end
