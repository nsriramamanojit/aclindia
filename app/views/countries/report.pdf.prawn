pdf.text "ACL India", :align => :center,   :size => 26, :style => :bold
pdf.text "Countires List:", :align => :left, :font_size  =>18, :style => :bold

pdf.move_down 10


countries=@country.map do |c|
[
	c.name,
	c.status
]
end
pdf.table countries, :border_style=> :grid, :row_colors=> ["FFFFFF","DDDDDD"], :headers=> ["Name","Status"], :align=> {0=> :center, 1=>:center, 2=> :center}, :width => 500, :font_size  => 10,:border_color => "951313",  :header_color => 'f07878',  :header_text_color  => "000000"



