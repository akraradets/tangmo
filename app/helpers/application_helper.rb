module ApplicationHelper
    def farmer_picture(farmer, size=40, option="rounded")
        if farmer.picture.attached?
            image_tag farmer.picture.variant( resize: "#{size}x#{size}!"), class: "img-fluid mx-auto d-block #{option}" 
        else
            image_tag "farmer-picture-placeholder.png", class: "img-fluid mx-auto d-block #{option}", height: "#{size}", width: "#{size}"
        end
    end

    def plot_picture(plot, size=40, option="rounded")
        if plot.pictures.attached?
            image_tag plot.pictures[0].variant( resize: "#{size}x#{size}!"), class: "img-fluid mx-auto d-block #{option}" 
        else
            image_tag "plot-picture-placeholder.jpg", class: "img-fluid mx-auto d-block #{option}", height: "#{size}", width: "#{size}"
        end
    end

    def plot_picture_carousel(plot, size=40, option="rounded")



    end
end
