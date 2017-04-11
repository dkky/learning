# params = ["course&&f0c0af05-fc26-4404-8006-6f063c790604", "intake&&15", "user&&dkang.kky@gmail.com&&f0c0af05-fc26-4404-8006-6f063c790604", "user&&peta.duda@gmail.com&&f0c0af05-fc26-4404-8006-6f063c790604", "user&&peta.duda@gmail.com&&742574f2-0ed5-49c7-91d7-091af00b5acf"]


a = {"recipients": {"ba084e40-f600-42a5-ac73-276751b00cee": ["desmond@nextacademy.com","liren@nextacademy.com"], "608f80c3-f5ac-4a0d-bf97-4c94144582a6": ["dkang.kky@gmail.com","liren90@gmail.com"]}}

# a[:recipients].each do |course_uuid, recipients|

p a[:recipients].values.inject(:+)

# a[:recipients].keys.each do |course_uuid|
#   a[:re]
# end


# params.each do |param|

# end
# params.each do |param|
#   p param.split('&&')
# end

# a = "intake&&15"
# p a.scan("intake")


# {
#   "platforms": ["slack", "email"],
#   "api_token" : "verysecuredpassword123__",
#   "subject": "Test",
#   "message": "This is a test",
#   "course": [
#     {
#     "emails": ["desmond@nextacademy.com","liren@nextacademy.com"],
#     "course_uuid": "ba084e40-f600-42a5-ac73-276751b00cee"
#   },
#   {
#       "emails": ["dkang.kky@gmail.com","liren90@gmail.com"],
#     "course_uuid": "608f80c3-f5ac-4a0d-bf97-4c94144582a6"
#   }
#   ]
# }
