module Api
    class VisitsController < ApiController
      respond_to :json

      def index
        render json: Visit.all
      end
    end
end
