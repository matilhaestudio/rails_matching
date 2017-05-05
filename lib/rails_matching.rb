require "rails_matching/version"

module RailsMatching
  	#
	# Matchs one model against itself
	# by default it excludes common table fields 
	# as id, created at, updated at
	# 
	def self.same (model, key = "id", exclude_attrs = [])
		raise "Error, first param must be an object" if !model.first.is_a? Object
		raise "Error, first params must have at least one attribute" if model.first.attributes.count <= 0
		
		exclude_attrs += %w[ id created_at updated_at ]
		model_attrs = model.new.attributes.keys - exclude_attrs

		# For each instance of a model
		# Gets its atributes
		# See if it matches with the same attribute of others instances

		# Returns model key and it's percentage of match against another model like
		# [ a1, a2, 99.9 ]
		# [ a1, a3, 99.9 ]
		# [ a1, a4, 45.9 ]
		# [ a3, a1, 99.9 ]

		result = model.all.map{
			|a|
			mathed = model.all.map{
				|b|
				#do not run againts same instance
				if a.id != b.id then
					matched_attrs = model_attrs.map{
						|k|
						a[k] == b[k] ? true : false
					}
					count = matched_attrs.count{ |e| e == true }
					percentage = ( count * 100 ) / model_attrs.count
					[ a[key], b[key], percentage ]
				else
				end
			}
			# return without nil values
			mathed.compact
		}

		result
	end

end
