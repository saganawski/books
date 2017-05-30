require 'csv'
sheet_array = ['Sheet1.csv', 'Sheet2.csv', 'Sheet3.csv', 'Sheet4.csv', 'Sheet5.csv', 'Sheet6.csv', 'Sheet7.csv', 'Sheet8.csv', 'Sheet9.csv', 'Sheet10.csv']
sheet_array.each do |sheet|
	csv_text = File.read(Rails.root.join('lib','seeds', sheet))
	csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
	csv.each do |row|

		b = Book.find_by title: row['title']
		if b == nil
			Book.create(:title => row['title'], :author => row['author'], :rank => row['rank'].to_i)
		else
			b.rank += 1
			b.save
		end
	end
end