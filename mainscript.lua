if game.PlaceId == 662417684 then
   game:GetService("StarterGui"):SetCore("SendNotification",{
      Title = "MalrousHub",
      Text = "Loading Script...", 
      Duration = 3 
      })
loadstring(game:HttpGet("https://raw.githubusercontent.com/Malrous/malroushub/refs/heads/main/luckyblocksbattlegrounds.lua"))()
else
game:GetService("StarterGui"):SetCore("SendNotification",{
      Title = "MalrousHub",
      Text = "Unsupported Game", 
      Duration = 3 
      })
end
