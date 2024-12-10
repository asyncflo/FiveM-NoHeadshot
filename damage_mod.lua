-- FiveM Damage Modifier Script
-- Erstellt: asnyflo

-- Funktion, um den Schaden zu modifizieren
AddEventHandler('gameEventTriggered', function(eventName, args)
    if eventName == "CEventNetworkEntityDamage" then
        local victim = args[1] -- Die Person, die getroffen wird
        local attacker = args[2] -- Der Spieler, der geschossen hat
        local weaponHash = args[5] -- Waffe, die verwendet wurde
        local isHeadshot = args[10] -- Bool, ob es ein Headshot ist

        -- Prüfen, ob der Angreifer und das Opfer gültig sind
        if DoesEntityExist(victim) and DoesEntityExist(attacker) and IsEntityAPed(victim) and IsEntityAPed(attacker) then
            -- Basis-Schaden (angepasst für ~15 Schüsse mit einer Advanced Rifle)
            local baseDamage = 10 -- Basis-Schaden pro Schuss
            
            -- Prüfen, ob es ein Headshot ist (wir setzen den gleichen Schaden wie bei Körpertreffern)
            if isHeadshot then
                -- Modifizieren des Schadens (bei Headshot bleibt es gleich wie bei Körpertreffern)
                SetEntityHealth(victim, GetEntityHealth(victim) - baseDamage)
            else
                -- Körpertreffer Schaden
                SetEntityHealth(victim, GetEntityHealth(victim) - baseDamage)
            end

            -- Stoppt die normale Schadensberechnung von GTA
            CancelEvent()
        end
    end
end)
