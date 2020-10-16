
module Spree
  module FrontendHelperDecorator
    def self.prepended(base)

    end

    def plp_and_carousel_image(product, image_class = '')
      image = default_image_for_product_or_variant(product)
      image_url = image&.plp_url || asset_path('noimage/plp.png')
      image_style = image&.style(:plp)

      lazy_image(
          src: image_url,
          srcset: carousel_image_source_set(image),
          alt: product.name,
          width: image_style&.dig(:width) || 278,
          height: image_style&.dig(:height) || 371,
          class: "product-component-image d-block mw-100 #{image_class}"
      )
    end

    def lazy_image(src:, alt:, width:, height:, srcset: '', **options)
      # We need placeholder image with the correct size to prevent page from jumping
      placeholder = "data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20#{width}%20#{height}'%3E%3C/svg%3E"

      image_tag placeholder, data: { src: src, srcset: srcset }, class: "#{options[:class]} lazyload", alt: alt
    end



  end
end
::Spree::FrontendHelper.prepend(Spree::FrontendHelperDecorator)