pdf.text "ANALYSIS & CERTIFICATION LABORATORY", :align => :center,   :size => 20, :style => :bold
pdf.text "41, Kalpataru Synergy,", :align => :center,   :size => 14
pdf.text "Opp. Grand Hyatt, Santacruz (East),", :align => :center,   :size => 14
pdf.text "Mumbai - 400 055. INDIA.", :align => :center,   :size => 14
pdf.stroke_horizontal_rule

pdf.move_down 10

pdf.text "Report - Central Labs", :align => :left, :font_size  =>18, :style => :bold

pdf.move_down 10


labcentrals=@labcentral.map do |c|
[
	c.labid,
	c.labname,
	c.housenumber + ',' + c.street + ','+ c.area + ','+ ','+ c.city + ',' + c.state + ','+ c.country + ','+ c.pincode,
	c.land

]
end
pdf.table labcentrals, 
	:border_style=> :grid, 
	:headers=> ["ID","NAME","ADDRESS","PHONE"], 
	:align_headers => :center,
	:align=> :left, 
	:font_size  => 8,
	:position => :center

  
