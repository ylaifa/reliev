module ApplicationHelper
    def full_name(user)
        unless user.first_name.nil? && user.last_name.nil?
            user.first_name + " " + user.last_name
        end
    end
end
