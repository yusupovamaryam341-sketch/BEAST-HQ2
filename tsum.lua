local function d(t)local r={}for i=1,#t do r[i]=string.char(t[i]-3)end return table.concat(r)end
local Players=game:GetService(d({80,108,97,121,101,114,115}))
local RunService=game:GetService(d({82,117,110,83,101,114,118,105,99,101}))
local UserInputService=game:GetService(d({85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101}))
local TweenService=game:GetService(d({84,119,101,101,110,83,101,114,118,105,99,101}))
local LocalPlayer=Players.LocalPlayer
local Camera=workspace.CurrentCamera
local ReplicatedStorage=game:GetService(d({82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101}))
local active=false
local playerRole=d({85,83,69,82})
local scriptActive=true
local connections={}
local validKeys={[d({65,68,77,73,78,83,79,83,75,65,45,50,48,48,48,68,65,89,45,66,56,88,50,77,45,90,76,53,78,49})]={expires=d({50,48,51,54,45,48,54,45,50,53}),role=d({65,68,77,73,78})},[d({86,73,80,45,76,73,70,69,84,73,77,69,45,65,56,75,52,77})]={expires=d({50,48,51,54,45,48,54,45,50,53}),role=d({86,73,80})},[d({85,83,69,82,45,76,73,70,69,84,73,77,69,45,65,56,75,52,77})]={expires=d({50,48,50,55,45,48,54,45,50,53}),role=d({85,83,69,82})},[d({68,69,77,79,45,65,66,67,49,45,50,51,52,53,45,54,55,56,57})]={expires=d({50,48,50,53,45,49,50,45,51,49}),role=d({85,83,69,82})},[d({70,82,69,69,45,48,48,48,48,45,48,48,48,48,45,48,48,48,49})]={expires=d({48}),role=d({85,83,69,82})}}
local function checkKey(key)if not validKeys[key]then return false,d({226,157,147,32,75,101,121,32,110,111,116,32,102,111,117,110,100}),nil end local data=validKeys[key]if data.expires~=d({48})then local now=os.date(d({37,89,45,37,109,45,37,100}))if data.expires<now then return false,d({226,157,147,32,75,101,121,32,101,120,112,105,114,101,100}),nil end end return true,d({226,156,133,32,86,97,108,105,100}),data.role end
local function hasAccess(feature)if playerRole==d({65,68,77,73,78})then return true end if playerRole==d({86,73,80})then return true end if playerRole==d({85,83,69,82})then local blocked={d({102,108,121}),d({110,111,99,108,105,112}),d({100,97,109,97,103,101}),d({103,111,100,109,111,100,101})}for _,v in pairs(blocked)do if v==feature then return false end end return true end return false end
local settings={aim=true,esp=true,info=true,speed=false,jump=false,spin=false,fly=false,noclip=false,godmode=false,damage=false,speedVal=16,jumpPower=50,spinSpeed=20,flySpeed=50,damageVal=9999}
local toggleButtons={}
local binds={aim=d({70}),esp=d({71}),speed=d({86}),jump=d({74}),spin=d({72}),fly=d({66}),noclip=d({78}),godmode=d({77}),damage=d({76})}
-- ОСТАЛЬНОЙ КОД (ВЕСЬ В d{})...
