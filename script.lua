function tratador (evt)
	if (evt.class == 'key') and (evt.type == 'press') then
		print("--> TRATADOR KEYS")
		print(evt.key)
		if (evt.key == 'RED') then
			event.post { 
				class  = 'ncl',
				type   = 'presentation',
				action = 'stop',
			}
		elseif (evt.key == 'GREEN') then
			event.post {
				class  = 'ncl',
				type   = 'presentation',
				action = 'resume',
			}
		elseif (evt.key == 'YELLOW') then
			event.post {
				class  = 'ncl',
				type   = 'presentation',
				action = 'pause',
			}
		end	
	end
end

event.register(tratador)