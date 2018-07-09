class AlertsController < InheritedResources::Base

  private

    def alert_params
      params.require(:alert).permit(:imagen, :latitude, :longitude, :address)
    end
end

