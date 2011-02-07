pdf.text "ANALYSIS & CERTIFICATION LABORATORY", :align => :center,   :size => 20, :style => :bold
pdf.text "41, Kalpataru Synergy,", :align => :center,   :size => 14
pdf.text "Opp. Grand Hyatt, Santacruz (East),", :align => :center,   :size => 14
pdf.text "Mumbai - 400 055. INDIA.", :align => :center,   :size => 14
pdf.stroke_horizontal_rule

pdf.move_down 10

pdf.text "Report - States", :align => :left, :font_size  =>18, :style => :bold

pdf.move_down 10


states=@state.map do |c|
[
	c.name,
	c.country.name,
	c.description,
	c.status
]
end
pdf.table states, 
	:border_style=> :grid, 
	:row_colors=> ["FFFFFF","FFFFFF"], 
	:headers=> ["STATE NAME","COUNTRY NAME","DESCRIPTION","STATUS"], 
	:align_headers => :center,
	:align=> :center, 
	:width => 500, 
	:font_size  => 10,
	:border_color => "000000",  
	:header_color => 'FFFFFF',  
	:header_text_color  => "000000",
	:position => :center

  
