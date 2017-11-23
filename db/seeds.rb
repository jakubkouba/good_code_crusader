SeoMetum.create!([
  {seo_meta_id: 1, seo_meta_type: "Refinery::Page::Translation", browser_title: "", meta_description: ""},
  {seo_meta_id: 2, seo_meta_type: "Refinery::Page::Translation", browser_title: "GoodCodeCrusader - Resume", meta_description: ""},
  {seo_meta_id: 3, seo_meta_type: "Refinery::Page::Translation", browser_title: "GoodCodeCrusader - Home PAge", meta_description: ""}
])
Refinery::Authentication::Devise::User.create!([
  {username: "jakub", email: "adler.jakub@gmail.com", encrypted_password: "$2a$10$sXp4i7cZIy4WGx4jlMtem.fLPqy9nU2ErZetjXiYxCRIU01JR9htq", current_sign_in_at: "2017-11-20 00:11:06", last_sign_in_at: "2017-11-20 00:11:06", current_sign_in_ip: "10.0.2.2", last_sign_in_ip: "10.0.2.2", sign_in_count: 1, remember_created_at: nil, reset_password_token: nil, reset_password_sent_at: nil, slug: "jakub", full_name: nil}
])
Refinery::Page.create!([
  {parent_id: nil, path: nil, show_in_menu: true, link_url: "", menu_match: nil, deletable: true, draft: false, skip_to_first_child: false, lft: 1, rgt: 2, depth: 0, view_template: "home", layout_template: nil, title: "RE$UM€", menu_title: "", custom_slug: nil, slug: "reum€"},
  {parent_id: nil, path: nil, show_in_menu: false, link_url: "/", menu_match: nil, deletable: true, draft: false, skip_to_first_child: false, lft: 3, rgt: 4, depth: 0, view_template: "home", layout_template: nil, title: "Home Page", menu_title: "", custom_slug: nil, slug: "home-page"}
])
Refinery::Image.create!([
  {image_mime_type: nil, image_name: "me.jpg", image_size: 196077, image_width: 1539, image_height: 1415, image_uid: "2017/11/22/7tgegfgs0t_me.jpg", image_title: "Jakub Adler", image_alt: "jakub_adler"},
  {image_mime_type: nil, image_name: "css3.png", image_size: 20710, image_width: 365, image_height: 512, image_uid: "2017/11/23/9iuhnmuk3h_css3.png", image_title: "CSS3", image_alt: "css3"},
  {image_mime_type: nil, image_name: "html5.png", image_size: 14023, image_width: 365, image_height: 512, image_uid: "2017/11/23/mkapkcrhb_html5.png", image_title: "HTML5", image_alt: "html5"},
  {image_mime_type: nil, image_name: "rails.png", image_size: 10985, image_width: 512, image_height: 512, image_uid: "2017/11/23/8pkho1bpyn_rails.png", image_title: "Rails", image_alt: "rails"},
  {image_mime_type: nil, image_name: "ruby.png", image_size: 81188, image_width: 562, image_height: 488, image_uid: "2017/11/23/44ukrkqyzq_ruby.png", image_title: "Ruby", image_alt: "ruby"},
  {image_mime_type: nil, image_name: "ruby_rails.jpg", image_size: 9490, image_width: 300, image_height: 327, image_uid: "2017/11/23/90qp4mk4c0_ruby_rails.jpg", image_title: "Ruby On Rails", image_alt: "ruby_on_rails"},
  {image_mime_type: nil, image_name: "RubyOnRails.png", image_size: 134282, image_width: 503, image_height: 336, image_uid: "2017/11/23/6gtndm73j4_RubyOnRails.png", image_title: "Ruby On Rails", image_alt: "ruby_on_rails"},
  {image_mime_type: nil, image_name: "Javascript.png", image_size: 11324, image_width: 299, image_height: 423, image_uid: "2017/11/23/1pv1s30qco_Javascript.png", image_title: "Javascript", image_alt: "javascript"}
])
Refinery::Page::Translation.create!([
  {browser_title: "GoodCodeCrusader - Resume", meta_description: "", refinery_page_id: 2, locale: "en", title: "RE$UM€", custom_slug: nil, menu_title: "", slug: "reum€"},
  {browser_title: "GoodCodeCrusader - Home PAge", meta_description: "", refinery_page_id: 3, locale: "en", title: "Home Page", custom_slug: nil, menu_title: "", slug: "home-page"}
])
Refinery::Image::Translation.create!([
  {refinery_image_id: 2, locale: "en", image_alt: "jakub_adler", image_title: "Jakub Adler"},
  {refinery_image_id: 6, locale: "en", image_alt: "css3", image_title: "CSS3"},
  {refinery_image_id: 7, locale: "en", image_alt: "html5", image_title: "HTML5"},
  {refinery_image_id: 8, locale: "en", image_alt: "rails", image_title: "Rails"},
  {refinery_image_id: 9, locale: "en", image_alt: "ruby", image_title: "Ruby"},
  {refinery_image_id: 10, locale: "en", image_alt: "ruby_on_rails", image_title: "Ruby On Rails"},
  {refinery_image_id: 11, locale: "en", image_alt: "ruby_on_rails", image_title: "Ruby On Rails"},
  {refinery_image_id: 12, locale: "en", image_alt: "javascript", image_title: "Javascript"}
])
