-- Basic Template
UnlockedInteract = function (...) return lb.Unlock(lb.ObjectInteract, ...) end
HasLockType = function (...) return lb.GameObjectHasLockType(...) end

local function RetrieveHerb()
    local RetrieveDistance = 5
    for _, guid in ipairs(lb.GetObjects(RetrieveDistance, lb.EObjectTypes.GameObject)) do
        if HasLockType(guid, lb.ELockTypes.Herbalism) then
            return guid
        end
    end
end

local function Main()
    local aHerb = RetrieveHerb()
    if aHerb then
        UnlockedInteract(aHerb) 
    end
end

C_Timer.NewTicker(0.2, Main)