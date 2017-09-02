-- Scene

local sceneObj = {
    backgroundColor = colors.blue,
    getWorld = function(scene)
        return scene.world
    end,
    newObject = function(scene,object)
        
    end,
    newEntity = function(scene,entity)
        
    end,
    setBackground = function(scene,color)
        scene.backgroundColor = color
    end
}

local ret = {
    createNewScene= function (name,world)
        local scene = {name = name,world = world}
        setmetatable(scene,{__index = sceneObj})
        
        return scene
    end,
}

return ret