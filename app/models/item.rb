class Item < ActiveRecord::Base
	attr_accessible :category_id, :desc, :path, :title

	has_attached_file :path,
					styles: {big: '1000x800>', catalog: "144x144#"},
					url: "/assets/images/:id/:style/:basename.:extension",
					path: ":rails_root/public/assets/images/:id/:style/:basename.:extension",
					default_url: "/assets/images/missing.png"
end
