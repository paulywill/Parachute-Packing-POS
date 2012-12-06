module RigsHelper

def rig_status_display(args)  
  args[:boolStatus] ||= ''
  return_value = ''
  if args[:boolStatus] == true then
    return_value = 'ONLINE'
  else
	return_value = 'OFFLINE'
  end
  return return_value
end

end
