module ApplicationHelper
    def farmer_picture(farmer, size=40, option="rounded")
        if farmer.picture.attached?
            image_tag farmer.picture.variant( resize: "#{size}x#{size}!"), class: "img-fluid mx-auto d-block #{option}" 
        else
            image_tag image_url("/profile-picture-placeholder.png"), class: "img-fluid mx-auto d-block  #{option}", height: "#{size}", width: "#{size}"
        end
    end
end
