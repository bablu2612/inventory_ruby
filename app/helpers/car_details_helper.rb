module CarDetailsHelper
    def increase_view car_details
        views = car_details.views + 1
        car_details.update(views: views)
    end
end
