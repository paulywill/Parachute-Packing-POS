module PackersHelper

def packingteam_status_display(args)  
  args[:boolStatus] ||= ''
  return_value = ''
  if args[:boolStatus] == true then
    return_value = 'YES'
  else
	return_value = 'NO'
  end
  return return_value
end

end
