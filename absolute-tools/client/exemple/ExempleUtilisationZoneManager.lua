---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Absolute.
--- DateTime: 24/01/2023 22:10
---

--- Vraiment simple à utiliser, il suffit de créer une zone et de lui donner des fonctions à appeler quand le joueur entre, sort ou est dans la zone.
ZoneManager:createZone(vector3(-283.094513, -899.446167, 31.065918),5,function(player)
    print("Je suis entré dans la zone !")
end,function(player)
    print("Je suis dans la zone !")

    TickManager:addTick("test",function()
        print("Je suis dans la zone et je calé au tick rate on pourrait ici faire un DrawMarker!")
    end)
end,function(player)
    print("Je suis sorti de la zone !")
    TickManager:removeTick("test")
end);

ZoneManager:createZone(vector3(-290.584625, -913.951660, 31.065918),5,function(player)
    print("Je suis entré dans la zone !")
end,function(player)
    print("Je suis dans la zone !")
end,function(player)
    print("Je suis sorti de la zone !")
end);
--- Permet de debug les zones
ZoneManager:startDebugZone();