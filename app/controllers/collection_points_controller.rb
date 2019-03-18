class CollectionPointsController < InheritedResources::Base

  private

    def collection_point_params
      params.require(:collection_point).permit(:name, :direction)
    end
end

