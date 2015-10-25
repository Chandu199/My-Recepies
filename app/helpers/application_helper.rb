require 'digest/md5'
module ApplicationHelper
    
    def gravatar_for(chef, options={size: 80})
        gravator_id = Digest::MD5::hexdigest(chef.email.downcase)
        size=options[:size]
        gravator_url="https://secure.gravator.com/avatar/#{gravator_id}?s=#{size}"
        image_tag(gravator_url, alt: chef.chefname,class:"gravator")
    end
end
