---@meta
---
--- legacy / misc
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L532
---
--- Pre-6.3 global. `D3DHook` registers no `renderobject_getAlphablend` method;
--- read the render object's published `Alphablend` property instead.
---@deprecated Use `renderobject.Alphablend`.
---@param renderobject D3DHook_RenderObject
---@return number
function d3dhook_renderobject_getAlphablend(renderobject) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L570
---
--- Pre-6.3 global. `D3DHook` registers no `renderobject_getVisible` method; read
--- the render object's published `Visible` property instead.
---@deprecated Use `renderobject.Visible`.
---@param renderobject D3DHook_RenderObject
---@return boolean
function d3dhook_renderobject_getVisible(renderobject) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L456
---
--- Pre-6.3 global. `D3DHook` registers no `renderobject_getX` method; read the
--- render object's published `X` property instead.
---@deprecated Use `renderobject.X`.
---@param renderobject D3DHook_RenderObject
---@return number
function d3dhook_renderobject_getX(renderobject) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L494
---
--- Pre-6.3 global. `D3DHook` registers no `renderobject_getY` method; read the
--- render object's published `Y` property instead.
---@deprecated Use `renderobject.Y`.
---@param renderobject D3DHook_RenderObject
---@return number
function d3dhook_renderobject_getY(renderobject) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L609
---
--- Pre-6.3 global. `D3DHook` registers no `renderobject_getZOrder` method; read
--- the render object's published `ZOrder` property instead.
---@deprecated Use `renderobject.ZOrder`.
---@param renderobject D3DHook_RenderObject
---@return integer
function d3dhook_renderobject_getZOrder(renderobject) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L552
---
--- Pre-6.3 global. `D3DHook` registers no `renderobject_setAlphablend` method;
--- assign to the render object's published `Alphablend` property instead.
---@deprecated Assign to `renderobject.Alphablend`.
---@param renderobject D3DHook_RenderObject
---@param alphablend number
function d3dhook_renderobject_setAlphablend(renderobject, alphablend) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L590
---
--- Pre-6.3 global. `D3DHook` registers no `renderobject_setVisible` method;
--- assign to the render object's published `Visible` property instead.
---@deprecated Assign to `renderobject.Visible`.
---@param renderobject D3DHook_RenderObject
---@param visible boolean
function d3dhook_renderobject_setVisible(renderobject, visible) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L476
---
--- Pre-6.3 global. `D3DHook` registers no `renderobject_setX` method; assign to
--- the render object's published `X` property instead.
---@deprecated Assign to `renderobject.X`.
---@param renderobject D3DHook_RenderObject
---@param x number
function d3dhook_renderobject_setX(renderobject, x) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L514
---
--- Pre-6.3 global. `D3DHook` registers no `renderobject_setY` method; assign to
--- the render object's published `Y` property instead.
---@deprecated Assign to `renderobject.Y`.
---@param renderobject D3DHook_RenderObject
---@param y number
function d3dhook_renderobject_setY(renderobject, y) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L629
---
--- Pre-6.3 global. `D3DHook` registers no `renderobject_setZOrder` method;
--- assign to the render object's published `ZOrder` property instead.
---@deprecated Assign to `renderobject.ZOrder`.
---@param renderobject D3DHook_RenderObject
---@param zOrder integer
function d3dhook_renderobject_setZOrder(renderobject, zOrder) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L706
---
--- Pre-6.3 global. `D3DHook` registers no `sprite_getHeight` method; read the
--- sprite's published `Height` property instead.
---@deprecated Use `sprite.Height`.
---@param sprite D3DHook_Sprite
---@return integer
function d3dhook_sprite_getHeight(sprite) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L745
---
--- Pre-6.3 global. `D3DHook` registers no `sprite_getTexture` method; read the
--- sprite's published `Texture` property instead.
---@deprecated Use `sprite.Texture`.
---@param sprite D3DHook_Sprite
---@return D3DHook_Texture
function d3dhook_sprite_getTexture(sprite) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L667
---
--- Pre-6.3 global. `D3DHook` registers no `sprite_getWidth` method; read the
--- sprite's published `Width` property instead.
---@deprecated Use `sprite.Width`.
---@param sprite D3DHook_Sprite
---@return integer
function d3dhook_sprite_getWidth(sprite) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L726
---
--- Pre-6.3 global. `D3DHook` registers no `sprite_setHeight` method; assign to
--- the sprite's published `Height` property instead.
---@deprecated Assign to `sprite.Height`.
---@param sprite D3DHook_Sprite
---@param height integer
function d3dhook_sprite_setHeight(sprite, height) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L765
---
--- Pre-6.3 global. `D3DHook` registers no `sprite_setTexture` method; assign to
--- the sprite's published `Texture` property instead.
---@deprecated Assign to `sprite.Texture`.
---@param sprite D3DHook_Sprite
---@param texture D3DHook_Texture
function d3dhook_sprite_setTexture(sprite, texture) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L687
---
--- Pre-6.3 global. `D3DHook` registers no `sprite_setWidth` method; assign to
--- the sprite's published `Width` property instead.
---@deprecated Assign to `sprite.Width`.
---@param sprite D3DHook_Sprite
---@param width integer
function d3dhook_sprite_setWidth(sprite, width) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L807
---
--- Pre-6.3 global. `D3DHook` registers no `textcontainer_getFontMap` method;
--- read the text container's published `FontMap` property instead.
---@deprecated Use `textcontainer.FontMap`.
---@param textcontainer D3DHook_TextContainer
---@return D3DHook_FontMap
function d3dhook_textcontainer_getFontMap(textcontainer) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L845
---
--- Pre-6.3 global. `D3DHook` registers no `textcontainer_getText` method; read
--- the text container's published `Text` property instead.
---@deprecated Use `textcontainer.Text`.
---@param textcontainer D3DHook_TextContainer
---@return string
function d3dhook_textcontainer_getText(textcontainer) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L827
---
--- Pre-6.3 global. `D3DHook` registers no `textcontainer_setFontMap` method;
--- assign to the text container's published `FontMap` property instead.
---@deprecated Assign to `textcontainer.FontMap`.
---@param textcontainer D3DHook_TextContainer
---@param fontmap D3DHook_FontMap
function d3dhook_textcontainer_setFontMap(textcontainer, fontmap) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L865
---
--- Pre-6.3 global. `D3DHook` registers no `textcontainer_setText` method; assign
--- to the text container's published `Text` property instead.
---@deprecated Assign to `textcontainer.Text`.
---@param textcontainer D3DHook_TextContainer
---@param text string
function d3dhook_textcontainer_setText(textcontainer, text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGenericHotkey.pas#L108
---
--- Pre-6.3 spelling of `GenericHotkey:getKeys()`.
---@deprecated Use `GenericHotkey:getKeys()`.
---@return integer ... # one value per assigned key, up to 5
---@param generichotkey GenericHotkey
function generichotkey_getKeys(generichotkey) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGenericHotkey.pas#L135
---
--- Pre-6.3 spelling of `GenericHotkey:setOnHotkey()`.
---@deprecated Use `GenericHotkey:setOnHotkey()`.
---@param generichotkey GenericHotkey
---@param value CECallback
function generichotkey_onHotkey(generichotkey, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGenericHotkey.pas#L90
---
--- Pre-6.3 spelling of `GenericHotkey:setKeys()`.
---@deprecated Use `GenericHotkey:setKeys()`.
---@param generichotkey GenericHotkey
---@param key1 integer
---@param ... integer
function generichotkey_setKeys(generichotkey, key1, ...) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L857
---
--- Pre-6.3 spelling of the `memoryrecord.Aob.Size` record property.
---@deprecated Use `memoryrecord.Aob.Size`.
---@param memoryrecord MemoryRecord
---@return integer
function memoryrecord_aob_getSize(memoryrecord) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L866
---
--- Pre-6.3 spelling of the `memoryrecord.Aob.Size` record property.
---@deprecated Use `memoryrecord.Aob.Size`.
---@param memoryrecord MemoryRecord
---@param value integer
function memoryrecord_aob_setSize(memoryrecord, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L838
---
--- Pre-6.3 spelling of the `memoryrecord.Binary.Size` record property.
---@deprecated Use `memoryrecord.Binary.Size`.
---@param memoryrecord MemoryRecord
---@return integer
function memoryrecord_binary_getSize(memoryrecord) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L818
---
--- Pre-6.3 spelling of the `memoryrecord.Binary.Startbit` record property.
---@deprecated Use `memoryrecord.Binary.Startbit`.
---@param memoryrecord MemoryRecord
---@return integer
function memoryrecord_binary_getStartbit(memoryrecord) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L847
---
--- Pre-6.3 spelling of the `memoryrecord.Binary.Size` record property.
---@deprecated Use `memoryrecord.Binary.Size`.
---@param memoryrecord MemoryRecord
---@param value integer
function memoryrecord_binary_setSize(memoryrecord, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L827
---
--- Pre-6.3 spelling of the `memoryrecord.Binary.Startbit` record property.
---@deprecated Use `memoryrecord.Binary.Startbit`.
---@param memoryrecord MemoryRecord
---@param value integer
function memoryrecord_binary_setStartbit(memoryrecord, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L754
---
--- Pre-6.3 spelling of the `memoryrecord.String.Size` record property.
---@deprecated Use `memoryrecord.String.Size`.
---@param memoryrecord MemoryRecord
---@return integer
function memoryrecord_string_getSize(memoryrecord) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L774
---
--- Pre-6.3 spelling of the `memoryrecord.String.Unicode` record property.
---@deprecated Use `memoryrecord.String.Unicode`.
---@param memoryrecord MemoryRecord
---@return boolean
function memoryrecord_string_getUnicode(memoryrecord) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L763
---
--- Pre-6.3 spelling of the `memoryrecord.String.Size` record property.
---@deprecated Use `memoryrecord.String.Size`.
---@param memoryrecord MemoryRecord
---@param value integer
function memoryrecord_string_setSize(memoryrecord, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaMemoryRecord.pas#L783
---
--- Pre-6.3 spelling of the `memoryrecord.String.Unicode` record property.
---@deprecated Use `memoryrecord.String.Unicode`.
---@param memoryrecord MemoryRecord
---@param value boolean
function memoryrecord_string_setUnicode(memoryrecord, value) end
