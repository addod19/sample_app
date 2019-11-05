# frozen_string_literal: true

module UsersHelper
  def gravatar_for(user, size: 80)
    # gravatar_id = "072fd945b7790edc7a81a44f0f944b09"
    gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: 'gravatar')
  end
end
