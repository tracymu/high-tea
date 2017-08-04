module Api
    class VisitsController < ApiController
      include EnableCors
      respond_to :json

      def index
        render json: Visit.all
      end
    end
end
