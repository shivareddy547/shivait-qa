module Spree
  class Brand < Spree::Base
    acts_as_list

    default_scope { order(:position) }

    def self.return_json
      return {"users":[{"company":"Planet Express","id":1,"name":"Philip J Fry","position":"Delivery Boy","profile":{"age":25,"gender":"M","planet":"Earth","species":"Human","status":"Alive"}},{"company":"Planet Express","id":2,"name":"Turanga Leela","position":"Captain","profile":{"age":25,"gender":"F","planet":"Earth","species":"Mutant, Human","status":"Alive"}},{"company":"Planet Express","id":3,"name":"Bender Bending Rodríguez","position":"Ship's Robot, Ship's Cook, Assistant Manager of Sales, Gunnery Chief","profile":{"age":4,"gender":"M","planet":"Earth","species":"Robot","status":"Alive"}},{"company":"Planet Express","id":4,"name":"Planet Express Ship","position":"Ship","profile":{"age":"N/A","gender":"N/A","planet":"Earth","species":"Robotic Spacecraft","status":"N/A"}},{"company":"Planet Express","id":5,"name":"Dr. John A. Zoidberg Ph.D","position":"Staff Doctor","profile":{"age":86,"gender":"M","planet":"Decapod 10","species":"Decapodian","status":"Alive"}},{"company":"Democratic Order of Planets","id":6,"name":"Zapp Brannigan","position":"Captain","profile":{"age":28,"gender":"M","planet":"Earth","species":"Human","status":"Alive"}},{"company":"Democratic Order of Planets","id":7,"name":"Kif Kroker","position":"Lieutenant","profile":{"age":24,"gender":"M","planet":"Amphibios 9","species":"Amphibiosans","status":"Alive"}},{"company":"Planet Express","id":8,"name":"Philip J Fry","position":"Delivery Boy","profile":{"age":25,"gender":"M","planet":"Earth","species":"Human","status":"Alive"}},{"company":"Planet Express","id":9,"name":"Turanga Leela","position":"Captain","profile":{"age":25,"gender":"F","planet":"Earth","species":"Mutant, Human","status":"Alive"}},{"company":"Planet Express","id":10,"name":"Bender Bending Rodríguez","position":"Ship's Robot, Ship's Cook, Assistant Manager of Sales, Gunnery Chief","profile":{"age":4,"gender":"M","planet":"Earth","species":"Robot","status":"Alive"}},{"company":"Planet Express","id":11,"name":"Planet Express Ship","position":"Ship","profile":{"age":"N/A","gender":"N/A","planet":"Earth","species":"Robotic Spacecraft","status":"N/A"}},{"company":"Planet Express","id":12,"name":"Dr. John A. Zoidberg Ph.D","position":"Staff Doctor","profile":{"age":86,"gender":"M","planet":"Decapod 10","species":"Decapodian","status":"Alive"}},{"company":"Democratic Order of Planets","id":13,"name":"Zapp Brannigan","position":"Captain","profile":{"age":28,"gender":"M","planet":"Earth","species":"Human","status":"Alive"}},{"company":"Democratic Order of Planets","id":14,"name":"Kif Kroker","position":"Lieutenant","profile":{"age":24,"gender":"M","planet":"Amphibios 9","species":"Amphibiosans","status":"Alive"}}]}
    end

    def self.get_profile(name)
      return_json[:users].select{|key, hash|  key[:name] == "#{name}" }.select{|key, hash| key[:profile] }
    end
  end
end
