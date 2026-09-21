Controls("touch")
cursor("point")
local change = false
function _init()
ini= 0 
num = 80
text= ""
numer = 0 

end

function _update()
mousex,mousey=getMPos()
bin = numer %2 
end

function _mousepressed(x,y,button,istouch,
pressed)

if x>140 and y>21
and  x<152 and y<31
 and button==1  then 
change = true
numer = numer +1
else
change = false
end

end

function _draw()
clear()

if bin == 0 then
for i=1,10,1 do 
 map(0,ini+(8*i),0,2,24,1)
end

for i=1,5,1 do
 map(0,num+(8*i),0,0,24,1)
end

Sprite(3,140,20,0,2,2)
elseif bin == 1 then 
for i=1,10,1 do 
map(0,ini+(8*i),0,4,24,1)
end

for i = 1, 10, 1 do 
map(0,num+(8*i),0,6,24,1)
end
Sprite(4,140,20,0,2,2)
end 


end