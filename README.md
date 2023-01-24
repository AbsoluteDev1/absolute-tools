# absolute-tools
Ensemble d'outils pour fivem
Deux outils sont disponibles:

- ZoneManager pour gérer vos zones

````lua
ZoneManager:createZone(vector3(-290.584625, -913.951660, 31.065918),5,
function(player)
    print("Je suis entré dans la zone !")
end,
function(player)
    print("Je suis dans la zone !")
end,
function(player)
    print("Je suis sorti de la zone !")
end);

ZoneManager:createZoneWithJson({
    coords = vector3(-290.584625, -913.951660, 31.065918),
    radius = 5,
    onEnter = function(player)
        print("Je suis entré dans la zone !")
    end,
    onUpdate = function(player)
        print("Je suis dans la zone !")
    end,
    onExit = function(player)
        print("Je suis sorti de la zone !")
    end,
});
```
- TickManager pour gérer les boucles que vous voulez mettre sur un Wait(0) comme les fonctions pour les DrawMarker
```lua
--- Ajoute une fonction a clé sur le tick
TickManager:addTick("test",function()
        print("Je suis dans la zone et je calé au tick rate on pourrait ici faire un DrawMarker!")
    end)
	--Supprimer le tick
TickManager:removeTick("test")
```
On peut combiner les deux
```lua
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
```
