class TurboDeviseController < ApplicationController
  class Responder < ActionController::Responder
    def to_turbo_stream
      controller.render(options.merge(formats: :html))
    rescue ActionView::MissingTemplate => error
      if get?
        raise error
      elsif has_errors? && default_action
        render rendering_options.merge(formats: :html, status: :unprocessable_entity)
      else
        begin
          redirect_to navigation_location
        rescue StandardError => e
          redirect_to 'home#index', allow_other_host: true
        end
        
      end
    end
  end

  self.responder = Responder
  respond_to :html, :turbo_stream
end