module MasseurProfilesHelper

  # CHECK PRESENCE
  def all_infos_present?
    if (@masseur_profile.first_name == nil) || (@masseur_profile.last_name == nil) ||
        (@masseur_profile.description == nil) || (@masseur_profile.working_place == nil) ||
        (@masseur_profile.massage_types == nil) || (@masseur_profile.time_slots == nil) ||
        (@masseur_profile.pricing == nil)
      return true
    end
  end

  def name_empty?
    if (@masseur_profile.first_name == nil) || (@masseur_profile.last_name == nil)
      return true
    end    
  end
  # END CHECK PRESENCE

  # MASSAGE TYPES
  def has_multiple_massage_types(masseur)
    if masseur.masseur_profile.massage_types.count > 1
      return true
    end
  end

  def all_his_types
    current_masseur.masseur_profile.massage_types
  end

  def has_one_type
    if all_his_types.count == 1
      return true
    end
  end

  def this_is_last_massage(massage_type)
    if massage_type == all_his_types.last
      return true
    end
  end

  def display_his_types
    massages_string = ""

    all_his_types.each do |massage_type|
      if this_is_last_massage(massage_type)
        massages_string += massage_type.to_s
      else
        massages_string += "#{massage_type.to_s}, "                      
      end
    end

    if has_one_type
      "Type de massage : #{massages_string}"
    else
      "Types de massages :\n#{massages_string}"
    end
  end
  # END MASSAGE TYPES

  # MASSEUR NAME
  def full_name
    "#{@masseur_profile.first_name} #{@masseur_profile.last_name}"
  end

  def name_present?

  end
end
