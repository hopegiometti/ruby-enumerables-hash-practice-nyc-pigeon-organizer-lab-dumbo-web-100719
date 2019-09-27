#def nyc_pigeon_organizer(data)
#  pigeon_list = {}
#  data.each do |attribute_name, attributes|
#    attributes.each do |attribute_value, pigeon_names|
#      pigeon_names.each do |name|
#        if !pigeon_list[name]
#          pigeon_list[name] = {}
#        end
#
#        if !pigeon_list[name][attribute_name]
#          pigeon_list[name][attribute_name] = []
#        end
#
#        if !pigeon_list[name][attribute_name].include?(attribute_value)
#          pigeon_list[name][attribute_name] << attribute_value.to_s
#        end
#      end
#    end
#  end
#  pigeon_list
#end


def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |trait_type, traits|
    traits.each do |trait_values, pigeon_names|
      pigeon_names.each do |name|
        if pigeon_list[name] == nil
          pigeon_list[name] {}
        end

        if pigeon_list[name][trait_type] == nil
          pigeon_list[name][trait_type] = []
        end

        if pigeon_list[name][trait_type].include?(trait_values)
          pigeon_list[name][trait_type] << trait_values.to_s
        end
      end
    end
  end
  pigeon_list
end
#        if !pigeon_list[name]
#          pigeon_list[name] = {}
#        end
#
#        if !pigeon_list[name][attribute_name]
#          pigeon_list[name][attribute_name] = []
#        end
#
#        if !pigeon_list[name][attribute_name].include?(attribute_value)
#          pigeon_list[name][attribute_name] << attribute_value.to_s
#        end
#      end
#    end
#  end
#  pigeon_list
#end
