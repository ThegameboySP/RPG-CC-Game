-- Camera
local sizeX,sizeY = term.getSize()

local cameraObj = {
    x = sizeX, y = sizeY, wx = sizeX / 2, wy = sizeY / 2, -- numbers are not going to divide evenly
    buffer = term,
    scene = nil,
    getScene = function(camera)
        return camera.scene
    end,
    setFocus = function(camera,entity)
        
    end,
    move = function(camera,x,y)
        
    end,
    setPos = function(camera,x,y)
        
    end,
    resize = function(camera,x,y)
        
    end,
    render = function(camera)
        local sizeX,sizeY = camera.x,camera.y
        local buffer = camera.buffer
        local scene = camera.scene
        for x=1,sizeX do
            for y=1,sizeY do
                buffer.setCursorPos(x,y)
                buffer.setBackgroundColor(scene.backgroundColor)
                buffer.write(" ")
            end
        end
        
        buffer.setCursorPos(1,sizeY)
        buffer.setBackgroundColor(colors.black)
        buffer.write(camera.name,camera.scene.name)
    end,
}

local ret = {
    createNewCamera= function (name,scene)
        local camera = {name = name,scene = scene}
        setmetatable(camera,{__index = cameraObj})
        
        return camera
    end,
}

return ret