dofile("lib/LuaXML/xml.lua")
dofile("lib/LuaXML/handler.lua")

local function tratamento()
  local evtGreen = {
    class = 'ncl',
    type  = 'attribution',
    name  = 'green',
    value = 1,
  }
  
  local evtYellow = {
    class = 'ncl',
    type  = 'attribution',
    name  = 'yellow',
    value = 2,
  }

  while true do
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
          if (xmlhandler.root['aui:HandGesture']._attr.gesture == 'hand_left') then
            evtGreen.action = 'start'; event.post(evtGreen)
            evtGreen.action = 'stop' ; event.post(evtGreen)
          elseif (xmlhandler.root['aui:HandGesture']._attr.gesture == 'hand_right') then
            evtYellow.action = 'start'; event.post(evtYellow)
            evtYellow.action = 'stop' ; event.post(evtYellow)
          end
        io.close(arquivo)
      os.remove(path)
      end -- if content
      
    end --if arquivo
    
  end -- while
end -- function


event.timer(2000, tratamento)