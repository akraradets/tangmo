module ApplicationHelper
    def farmer_picture(farmer, size=40, option="rounded")
        if farmer.picture.attached?
            image_tag farmer.picture.variant( resize: "#{size}x#{size}!"), class: "img-fluid mx-auto d-block #{option}" 
        else
            image_tag "farmer-picture-placeholder.png", class: "img-fluid mx-auto d-block #{option}", height: "#{size}", width: "#{size}"
        end
    end

    def plot_picture(plot, size=40, option="rounded", index=0)
        if plot.pictures.attached? && index != -1
            image_tag plot.pictures[index].variant( resize: "#{size}x#{size}!"), class: "img-fluid mx-auto d-block #{option}", height: "#{size}", width: "#{size}" 
        else
            image_tag "plot-picture-placeholder.jpg", class: "img-fluid mx-auto d-block #{option}", height: "#{size}", width: "#{size}"
        end
    end

    def plot_picture_carousel(plot, size=40, option="rounded")
        id = "plot_#{plot.id}_carousel"
        carousel = "<div id='#{id}' class='carousel slide' data-ride='carousel'>
          <ol class='carousel-indicators'>
            [li-list]
          </ol>
          <div class='carousel-inner'>
            [img-list]
          </div>
          <a class='carousel-control-prev' href='##{id}' role='button' data-slide='prev'>
            <span class='carousel-control-prev-icon' aria-hidden='true'></span>
            <span class='sr-only'>Previous</span>
          </a>
          <a class='carousel-control-next' href='##{id}' role='button' data-slide='next'>
            <span class='carousel-control-next-icon' aria-hidden='true'></span>
            <span class='sr-only'>Next</span>
          </a>
        </div>"

        liList = ""
        imgList = ""
        count = 0
        active = "active"

        if plot.pictures.attached?
            for pic in plot.pictures do
                liList = liList + "<li data-target='##{id}' data-slide-to='#{count}' class='#{active}'></li>"
                imgList = imgList + "<div class='carousel-item #{active}'>" + image_tag(pic.variant( resize: "#{size}x#{size}!"), class: "img-fluid mx-auto d-block #{option}") + "</div>"
                count = count + 1
                active = ""
            end
        else
            liList = "<li data-target='##{id}' data-slide-to='#{count}' class='#{active}'></li>"
            imgList = "<div class='carousel-item #{active}'>" + image_tag("plot-picture-placeholder.jpg", class: "img-fluid mx-auto d-block #{option}", height: "#{size}", width: "#{size}") + "</div>"
        end

        carousel = carousel.sub('[li-list]',liList)
        carousel = carousel.sub('[img-list]',imgList)
        return carousel
    end

    def qrCode(url, size=40)
        qrcode = RQRCode::QRCode.new(url)        
        # NOTE: showing with default options specified explicitly
        png = qrcode.as_png(
        bit_depth: 1,
        border_modules: 4,
        color_mode: ChunkyPNG::COLOR_GRAYSCALE,
        color: 'black',
        file: nil,
        fill: 'white',
        module_px_size: 6,
        resize_exactly_to: false,
        resize_gte_to: false,
        size: 400
        )
        image_tag png.to_data_url, class: "img-fluid mx-auto d-block", height: "#{size}", width: "#{size}"
    end
end
