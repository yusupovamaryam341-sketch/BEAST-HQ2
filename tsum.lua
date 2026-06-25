-- BEAST HQ OBFUSCATED v2
local d=function(t)local r={}for i=1,#t do r[i]=string.char(t[i]-3)end return table.concat(r)end
local P=game:GetService(d({80,108,97,121,101,114,115}))
local R=game:GetService(d({82,117,110,83,101,114,118,105,99,101}))
local U=game:GetService(d({85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101}))
local L=P.LocalPlayer
local C=workspace.CurrentCamera
local role=d({85,83,69,82})
local active=true
local conn={}
local keys={[d({86,73,80,45,76,73,70,69,84,73,77,69,45,65,56,75,52,77})]={exp=d({50,48,51,54,45,48,54,45,50,53}),role=d({86,73,80})},[d({85,83,69,82,45,76,73,70,69,84,73,77,69,45,65,56,75,52,77})]={exp=d({50,48,50,55,45,48,54,45,50,53}),role=d({85,83,69,82})}}
local function ck(k)if not keys[k]then return false,d({226,157,147})end local t=keys[k]if t.exp~=d({48})then local n=os.date(d({37,89,45,37,109,45,37,100}))if t.exp<n then return false,d({226,157,147})end end return true,d({226,156,133}),t.role end
local function acc(f)if role==d({86,73,80})then return true end if role==d({85,83,69,82})then local b={d({102,108,121}),d({110,111,99,108,105,112}),d({103,111,100,109,111,100,101})}for _,v in pairs(b)do if v==f then return false end end return true end return false end
local s={aim=true,esp=true,speed=false,jump=false,spin=false,fly=false,noclip=false,godmode=false,speedVal=16,jumpPower=50,spinSpeed=20,flySpeed=50}
local tb={}
local bd={aim=d({70}),esp=d({71}),speed=d({86}),jump=d({74}),spin=d({72}),fly=d({66}),noclip=d({78}),godmode=d({77})}
local function g()
local gui=Instance.new(d({83,99,114,101,101,110,71,117,105}))
gui.Name=d({66,101,97,115,116,72,81})
gui.Parent=game:GetService(d({67,111,114,101,71,117,105}))
gui.ResetOnSpawn=false
local m=Instance.new(d({70,114,97,109,101}))
m.Size=UDim2.new(0,400,0,460)
m.Position=UDim2.new(0.5,-200,0.5,-230)
m.BackgroundColor3=Color3.fromRGB(8,8,8)
m.BackgroundTransparency=0
m.Active=true
m.Draggable=true
m.Visible=true
m.Parent=gui
local c=Instance.new(d({85,73,67,111,114,110,101,114}))
c.CornerRadius=UDim.new(0,10)
c.Parent=m
local t=Instance.new(d({70,114,97,109,101}))
t.Size=UDim2.new(1,0,0,40)
t.BackgroundColor3=Color3.fromRGB(15,15,15)
t.Parent=m
local tt=Instance.new(d({84,101,120,116,76,97,98,101,108}))
tt.Size=UDim2.new(0.6,0,1,0)
tt.Position=UDim2.new(0,10,0,0)
tt.Text=d({66,69,65,83,84,32,72,81})
tt.TextColor3=Color3.fromRGB(255,255,255)
tt.TextScaled=true
tt.Font=Enum.Font.GothamBold
tt.TextXAlignment=Enum.TextXAlignment.Left
tt.BackgroundTransparency=1
tt.Parent=t
local cl=Instance.new(d({84,101,120,116,66,117,116,116,111,110}))
cl.Size=UDim2.new(0,30,0,30)
cl.Position=UDim2.new(1,-38,0,5)
cl.Text=d({226,156,149})
cl.TextColor3=Color3.fromRGB(200,200,200)
cl.TextScaled=true
cl.BackgroundColor3=Color3.fromRGB(30,30,30)
cl.Parent=m
cl.MouseButton1Click:Connect(function()m.Visible=false end)
local tabs={d({65,73,77}),d({86,73,83,85,65,76}),d({80,76,65,89,69,82}),d({77,73,83,67})}
local tbs={}
local cont=Instance.new(d({70,114,97,109,101}))
cont.Size=UDim2.new(1,-10,1,-50)
cont.Position=UDim2.new(0,5,0,45)
cont.BackgroundTransparency=1
cont.Parent=m
local function up(tab)
for _,v in pairs(cont:GetChildren())do v:Destroy()end
tb={}
local y=5
local function addT(text,key,req)
local can=(req==nil)or(role==d({86,73,80}))
local f=Instance.new(d({70,114,97,109,101}))
f.Size=UDim2.new(1,0,0,30)
f.Position=UDim2.new(0,0,0,y)
f.BackgroundColor3=Color3.fromRGB(15,15,15)
f.BackgroundTransparency=0.3
f.Parent=cont
local l=Instance.new(d({84,101,120,116,76,97,98,101,108}))
l.Size=UDim2.new(0.5,0,1,0)
l.Position=UDim2.new(0,5,0,0)
l.Text=can and(text..d({32})..d({91})..bd[key]..d({93}))or(text..d({32})..d({76,79,67,75,69,68}))
l.TextColor3=can and Color3.fromRGB(200,200,200)or Color3.fromRGB(80,80,80)
l.TextXAlignment=Enum.TextXAlignment.Left
l.BackgroundTransparency=1
l.TextScaled=true
l.Font=Enum.Font.GothamMedium
l.Parent=f
local b=Instance.new(d({84,101,120,116,66,117,116,116,111,110}))
b.Size=UDim2.new(0,50,0,22)
b.Position=UDim2.new(0.7,0,0.13,0)
b.Text=can and(s[key]and d({79,78})or d({79,70,70}))or d({76,79,67,75})
b.TextColor3=Color3.fromRGB(255,255,255)
b.TextScaled=true
b.BackgroundColor3=can and(s[key]and Color3.fromRGB(0,180,60)or Color3.fromRGB(40,40,40))or Color3.fromRGB(20,20,20)
b.Parent=f
if can then tb[key]=b b.MouseButton1Click:Connect(function()s[key]=not s[key]b.Text=s[key]and d({79,78})or d({79,70,70})b.BackgroundColor3=s[key]and Color3.fromRGB(0,180,60)or Color3.fromRGB(40,40,40)end)end
y=y+35 end
local function addI(text,key,def,req)
local can=(req==nil)or(role==d({86,73,80}))
local f=Instance.new(d({70,114,97,109,101}))
f.Size=UDim2.new(1,0,0,30)
f.Position=UDim2.new(0,0,0,y)
f.BackgroundColor3=Color3.fromRGB(15,15,15)
f.BackgroundTransparency=0.3
f.Parent=cont
local l=Instance.new(d({84,101,120,116,76,97,98,101,108}))
l.Size=UDim2.new(0.5,0,1,0)
l.Position=UDim2.new(0,5,0,0)
l.Text=can and text or(text..d({32})..d({76,79,67,75,69,68}))
l.TextColor3=can and Color3.fromRGB(200,200,200)or Color3.fromRGB(80,80,80)
l.TextXAlignment=Enum.TextXAlignment.Left
l.BackgroundTransparency=1
l.TextScaled=true
l.Font=Enum.Font.GothamMedium
l.Parent=f
local inp=Instance.new(d({84,101,120,116,66,111,120}))
inp.Size=UDim2.new(0,60,0,22)
inp.Position=UDim2.new(0.7,0,0.13,0)
inp.Text=can and tostring(s[key]or def)or d({76,79,67,75})
inp.TextColor3=can and Color3.fromRGB(255,255,255)or Color3.fromRGB(80,80,80)
inp.BackgroundColor3=can and Color3.fromRGB(25,25,25)or Color3.fromRGB(15,15,15)
inp.Parent=f
if can then inp.FocusLost:Connect(function()local v=tonumber(inp.Text)if v then s[key]=v else inp.Text=tostring(s[key]or def)end end)end
y=y+35 end
if tab==d({65,73,77})then addT(d({65,105,109,98,111,116}),d({97,105,109}))
elseif tab==d({86,73,83,85,65,76})then addT(d({69,83,80}),d({101,115,112}))
elseif tab==d({80,76,65,89,69,82})then addT(d({83,112,101,101,100}),d({115,112,101,101,100}))addI(d({83,112,101,101,100,32,86,97,108}),d({115,112,101,101,100,86,97,108}),16)addT(d({74,117,109,112}),d({106,117,109,112}))addI(d({74,117,109,112,32,80,111,119}),d({106,117,109,112,80,111,119}),50)addT(d({83,112,105,110}),d({115,112,105,110}))addI(d({83,112,105,110,32,83,112,101,101,100}),d({115,112,105,110,83,112,101,101,100}),20)addT(d({71,111,100,32,77,111,100,101}),d({103,111,100,109,111,100,101}),d({86,73,80}))
elseif tab==d({77,73,83,67})then addT(d({70,108,121}),d({102,108,121}),d({86,73,80}))addI(d({70,108,121,32,83,112,101,101,100}),d({102,108,121,83,112,101,101,100}),50,d({86,73,80}))addT(d({78,111,99,108,105,112}),d({110,111,99,108,105,112}),d({86,73,80}))local u=Instance.new(d({84,101,120,116,66,117,116,116,111,110}))u.Size=UDim2.new(0.4,0,0,35)u.Position=UDim2.new(0.3,0,0,y+10)u.Text=d({85,78,76,79,65,68})u.TextColor3=Color3.fromRGB(255,255,255)u.TextScaled=trueu.BackgroundColor3=Color3.fromRGB(180,0,40)u.Parent=cont u.MouseButton1Click:Connect(function()active=false for _,c in pairs(conn)do pcall(function()c:Disconnect()end)end gui:Destroy()end)end end
local function crTab(text,pos)local btn=Instance.new(d({84,101,120,116,66,117,116,116,111,110}))btn.Size=UDim2.new(0.23,0,0,30)btn.Position=UDim2.new(pos,0,0,45)btn.Text=text btn.TextColor3=Color3.fromRGB(180,180,180)btn.TextScaled=truebtn.BackgroundColor3=Color3.fromRGB(15,15,15)btn.Parent=m tbs[text]=btn btn.MouseButton1Click:Connect(function()for _,b in pairs(tbs)do b.BackgroundColor3=Color3.fromRGB(15,15,15)b.TextColor3=Color3.fromRGB(180,180,180)end btn.BackgroundColor3=Color3.fromRGB(255,0,120)btn.TextColor3=Color3.fromRGB(255,255,255)up(text)end)return btn end
crTab(d({65,73,77}),0.02)crTab(d({86,73,83,85,65,76}),0.27)crTab(d({80,76,65,89,69,82}),0.52)crTab(d({77,73,83,67}),0.77)
tbs[d({65,73,77})].BackgroundColor3=Color3.fromRGB(255,0,120)
tbs[d({65,73,77})].TextColor3=Color3.fromRGB(255,255,255)
up(d({65,73,77}))
return gui,m end
local gui,main=g()
local function getTarget()if not active then return nil end local t=nil local cd=300 local c=Vector2.new(C.ViewportSize.X/2,C.ViewportSize.Y/2)for _,p in pairs(P:GetPlayers())do if p~=L and p.Character and p.Character:FindFirstChild(d({72,101,97,100}))then local h=p.Character.Head local pos,on=E:WorldToViewportPoint(h.Position)if on then local d=(Vector2.new(pos.X,pos.Y)-c).Magnitude if d<cd then cd=d t=p end end end end return t end
local function gm()if not active or not s.godmode or not acc(d({103,111,100,109,111,100,101}))or not L.Character then return end local h=L.Character:FindFirstChild(d({72,117,109,97,110,111,105,100}))if h then h.Health=100 h.MaxHealth=100 h.BreakJointsOnDeath=false end end
table.insert(conn,R.RenderStepped:Connect(function()if not active or not s.aim then return end local t=getTarget()if t and t.Character and t.Character:FindFirstChild(d({72,101,97,100}))then local h=t.Character.Head local tp=h.Position local cp=E.CFrame.Position local dir=(tp-cp).Unit local cl=E.CFrame.LookVector local nl=cl:Lerp(dir,0.15)E.CFrame=CFrame.new(cp,cp+nl)end end))
table.insert(conn,R.Heartbeat:Connect(function()if not active or not L.Character then return end local h=L.Character:FindFirstChild(d({72,117,109,97,110,111,105,100}))if not h then return end if s.speed then h.WalkSpeed=s.speedVal else h.WalkSpeed=16 end if s.jump then h.JumpPower=s.jumpPower else h.JumpPower=50 end end))
table.insert(conn,R.Heartbeat:Connect(gm))
table.insert(conn,R.Heartbeat:Connect(function()if not active or not L.Character then return end local h=L.Character:FindFirstChild(d({72,117,109,97,110,111,105,100}))if h then if s.fly and acc(d({102,108,121}))then h.PlatformStand=true h.Sit=false else h.PlatformStand=false end end if s.fly and acc(d({102,108,121}))then local r=L.Character:FindFirstChild(d({72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116}))if r then local mv=Vector3.new()local f=E.CFrame.LookVector*Vector3.new(1,0,1)local ri=E.CFrame.RightVector*Vector3.new(1,0,1)if U:IsKeyDown(Enum.KeyCode.W)then mv=mv+f end if U:IsKeyDown(Enum.KeyCode.S)then mv=mv-f end if U:IsKeyDown(Enum.KeyCode.A)then mv=mv-ri end if U:IsKeyDown(Enum.KeyCode.D)then mv=mv+ri end if U:IsKeyDown(Enum.KeyCode.Space)then mv=mv+Vector3.new(0,1,0)end if U:IsKeyDown(Enum.KeyCode.LeftShift)then mv=mv+Vector3.new(0,-1,0)end if mv.Magnitude>0 then mv=mv.Unit*s.flySpeed r.Velocity=mv else r.Velocity=Vector3.new(0,0,0)end end end end))
table.insert(conn,R.Heartbeat:Connect(function()if not active or not s.noclip or not acc(d({110,111,99,108,105,112}))or not L.Character then return end for _,p in pairs(L.Character:GetDescendants())do if p:IsA(d({66,97,115,101,80,97,114,116}))then p.CanCollide=false end end end))
table.insert(conn,R.RenderStepped:Connect(function()if not active or not s.spin then return end if L.Character and L.Character:FindFirstChild(d({72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116}))then L.Character.HumanoidRootPart.CFrame=L.Character.HumanoidRootPart.CFrame*CFrame.Angles(0,math.rad(s.spinSpeed),0)end end))
table.insert(conn,U.InputBegan:Connect(function(i)if not active then return end if i.KeyCode==Enum.KeyCode.Insert then main.Visible=not main.Visible end local key=string.upper(i.KeyCode.Name)local function tg(k)if tb[k]then s[k]=not s[k]tb[k].Text=s[k]and d({79,78})or d({79,70,70})tb[k].BackgroundColor3=s[k]and Color3.fromRGB(0,180,60)or Color3.fromRGB(40,40,40)end end if key==d({70})then tg(d({97,105,109}))
elseif key==d({71})then tg(d({101,115,112}))
elseif key==d({86})then tg(d({115,112,101,101,100}))
elseif key==d({74})then tg(d({106,117,109,112}))
elseif key==d({72})then tg(d({115,112,105,110}))
elseif key==d({66})and acc(d({102,108,121}))then tg(d({102,108,121}))
elseif key==d({78})and acc(d({110,111,99,108,105,112}))then tg(d({110,111,99,108,105,112}))
elseif key==d({77})and acc(d({103,111,100,109,111,100,101}))then tg(d({103,111,100,109,111,100,101}))
end end))
print(d({66,69,65,83,84,32,72,81,32,82,69,65,68,89,33}))
print(d({73,78,83,69,82,84,32,45,32,84,111,103,103,108,101,32,71,85,73}))
print(d({70,32,45,32,65,105,109,98,111,116,32,124,32,71,32,45,32,69,83,80,32,124,32,86,32,45,32,83,112,101,101,100}))
print(d({74,32,45,32,74,117,109,112,32,124,32,72,32,45,32,83,112,105,110,32,124,32,66,32,45,32,70,108,121}))
print(d({78,32,45,32,78,111,99,108,105,112,32,124,32,77,32,45,32,71,111,100,109,111,100,101}))
end
pcall(run)
