print("--> SCRIPT")

dofile("lib/LuaXML/xml.lua")
dofile("lib/LuaXML/handler.lua")

local function update()
  local evtGreen  = { class = 'ncl', type  = 'attribution', name  = 'green',  value = 1, }
  local evtYellow = { class = 'ncl', type  = 'attribution', name  = 'yellow', value = 1, }
  local evtRed    = { class = 'ncl', type  = 'attribution', name  = 'red', value = 1, }
  local loop      = { class = 'ncl', type  = 'attribution', name  = 'loop',   value = 1, }

  --while true do
    local path = "/misc/ncl30/mpeg-u.xml"
    local arquivo = io.open(path, "r")
    if arquivo then
      io.input(arquivo)
      local content = io.read()
      if (content ~= nil) then
          print("--> CONTENT: ", content)
          local xmlhandler = simpleTreeHandler()
          local xmlparser = xmlParser(xmlhandler)
          xmlparser:parse(content)      
          print(xmlhandler.root['aui:HandGesture']._attr.gesture)          
          if (xmlhandler.root['aui:HandGesture']._attr.gesture == 'slap_right') then
            evtGreen.action = 'start'; event.post(evtGreen)
            evtGreen.action = 'stop' ; event.post(evtGreen)
          elseif (xmlhandler.root['aui:HandGesture']._attr.gesture == 'slap_left') then
            evtYellow.action = 'start'; event.post(evtYellow)
            evtYellow.action = 'stop' ; event.post(evtYellow)
          elseif (xmlhandler.root['aui:HandGesture']._attr.gesture == 'slap_bottom') then
            evtRed.action = 'start'; event.post(evtRed)
            evtRed.action = 'stop' ; event.post(evtRed)
          end
        io.close(arquivo)
      os.remove(path)
      end -- if content   
    end --if arquivo
  --end
  loop.action = 'start'; event.post(loop)
  loop.action = 'stop' ; event.post(loop)
end -- function

function tratador (evt)
  if evt.action == 'start' then
    update()
  end
end

event.register(tratador)
--event.register(tratador, 'ncl', 'presentation')
--event.timer(0, tratador)