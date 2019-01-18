require 'json'

class Family
    attr_accessor  :name, :age, :title, :email, :tel 

        def initialize(*args)
            @name = args[0]
            @age = args[1]
            @title = args[2]
            @email = args[3]
            @tel = args[4]       
        end

        def save
            memberInfo = {name: @name,
                 age: @age,
                  title: @title,
                   email: @email,
                    tel: @tel
            }.to_json
            open("livret.json", "a") do |file|
                file.puts memberInfo
            end
        end

end