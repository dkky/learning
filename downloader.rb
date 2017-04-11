require 'csv'
require "open-uri"


CSV.foreach('form.csv', headers: true) do |row|
  p row[4]

  File.open("#{row[4]}", 'wb') do |fo|
    p "https://services.cognitoforms.com/forms/admin/file?id=#{row[4]}=image%2Fjpeg&token=TFwKt3LE5FEPbDBv6UOj1a77Dfpu1yf9Hn%2FMAqgB3bFdS0zJoeJM3XRORVVnjffehbSauMfGboryBBd9Q%2BfbIGDlaBG4fUyLSueScBAmnqjKcE1u&at=0"

    fo.write open("https://services.cognitoforms.com/forms/admin/file?id=#{row[4]}&ct=image%2Fjpeg&token=TFwKt3LE5FEPbDBv6UOj1a77Dfpu1yf9Hn%2FMAqgB3bFdS0zJoeJM3XRORVVnjffehbSauMfGboryBBd9Q%2BfbIGDlaBG4fUyLSueScBAmnqjKcE1u&at=0").read
  end

end

https://services.cognitoforms.com/forms/admin/file?id=F-2R9ZXoOz!oe7KS1eFbmHAu&ct=image%2Fjpeg&token=TFwKt3LE5FEPbDBv6UOj1a77Dfpu1yf9Hn%2FMAqgB3bFdS0zJoeJM3XRORVVnjffehbSauMfGboryBBd9Q%2BfbIGDlaBG4fUyLSueScBAmnqjKcE1u&at=0

https://services.cognitoforms.com/forms/admin/file?id=F-K!7lTMGVp28AuVZsVHDKR!&ct=image%2Fjpeg&token=TFwKt3LE5FEPbDBv6UOj1a77Dfpu1yf9Hn%2FMAqgB3bFdS0zJoeJM3XRORVVnjffehbSauMfGboryBBd9Q%2BfbIGDlaBG4fUyLSueScBAmnqjKcE1u&at=0

https://services.cognitoforms.com/forms/admin/file?id=F-t4y6QdO5EYOGafSls!fmb!&ct=image%2Fjpeg&token=TFwKt3LE5FEPbDBv6UOj1a77Dfpu1yf9Hn%2FMAqgB3bFdS0zJoeJM3XRORVVnjffehbSauMfGboryBBd9Q%2BfbIGDlaBG4fUyLSueScBAmnqjKcE1u&at=0
