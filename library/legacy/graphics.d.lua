---@meta
---
--- legacy / graphics
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luabrush.pas#L16
---
--- Pre-6.3 spelling of `Brush:getColor()`.
---@deprecated Use `Brush:getColor()`.
---@param brush Brush
---@return integer
function brush_getColor(brush) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luabrush.pas#L25
---
--- Pre-6.3 spelling of `Brush:setColor()`.
---@deprecated Use `Brush:setColor()`.
---@param brush Brush
---@param value integer
---@return integer value The argument, echoed back: luabrush.pas:32 sets `result:=1` without pushing anything, so Lua returns the top of the stack.
function brush_setColor(brush, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L498
---
--- Pre-6.3 spelling of `Canvas:copyRect()`.
---@deprecated Use `Canvas:copyRect()`.
---@param canvas Canvas
---@param dest_x1 integer
---@param dest_y1 integer
---@param dest_x2 integer
---@param dest_y2 integer
---@param sourceCanvas Canvas
---@param source_x1 integer
---@param source_y1 integer
---@param source_x2 integer
---@param source_y2 integer
function canvas_copyRect(canvas, dest_x1, dest_y1, dest_x2, dest_y2, sourceCanvas, source_x1, source_y1, source_x2, source_y2) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L527
---
--- Pre-6.3 spelling of `Canvas:draw()`.
---
--- Broken in this flat form: the implementation reads its arguments at stack
--- indices 1..3, and the canvas is still at index 1, so `x`, `y` and `graphic`
--- are read one slot too early. Use `Canvas:draw()`.
---@deprecated Use `Canvas:draw()`.
---@param canvas Canvas
---@param x integer
---@param y integer
---@param graphic Graphic
function canvas_draw(canvas, x, y, graphic) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L405
---
--- Pre-6.3 spelling of `Canvas:ellipse()`.
---@deprecated Use `Canvas:ellipse()`.
---@param canvas Canvas
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
function canvas_ellipse(canvas, x1, y1, x2, y2) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L173
---
--- Pre-6.3 spelling of `Canvas:fillRect()`.
---
--- Broken in this flat form: the implementation reads its arguments at stack
--- indices 1..4 while the canvas still occupies index 1, so the coordinates are
--- read one slot too early, and the single-rect overload (which requires exactly
--- one stack value) is unreachable. Use `Canvas:fillRect()`.
---@deprecated Use `Canvas:fillRect()`.
---@param canvas Canvas
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
function canvas_fillRect(canvas, x1, y1, x2, y2) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L376
---
--- Pre-6.3 spelling of `Canvas:floodFill()`.
---
--- Broken in this flat form: the implementation reads its arguments at stack
--- indices 1..4 while the canvas still occupies index 1, so every argument is
--- read one slot too early. Use `Canvas:floodFill()`.
---@deprecated Use `Canvas:floodFill()`.
---@param canvas Canvas
---@param x integer
---@param y integer
---@param fillcolor integer?
---@param filltype integer?
function canvas_floodFill(canvas, x, y, fillcolor, filltype) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L40
---
--- Pre-6.3 spelling of `Canvas:getBrush()`.
---@deprecated Use `Canvas:getBrush()`.
---@param canvas Canvas
---@return Brush
function canvas_getBrush(canvas) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L49
---
--- Pre-6.3 spelling of `Canvas:getFont()`.
---@deprecated Use `Canvas:getFont()`.
---@param canvas Canvas
---@return Font
function canvas_getFont(canvas) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L67
---
--- Pre-6.3 spelling of `Canvas:getHeight()`.
---@deprecated Use `Canvas:getHeight()`.
---@param canvas Canvas
---@return integer
function canvas_getHeight(canvas) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L31
---
--- Pre-6.3 spelling of `Canvas:getPen()`.
---@deprecated Use `Canvas:getPen()`.
---@param canvas Canvas
---@return Pen
function canvas_getPen(canvas) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L564
---
--- Pre-6.3 spelling of `Canvas:getPenPosition()`.
---@deprecated Use `Canvas:getPenPosition()`.
---@param canvas Canvas
---@return integer
---@return integer
function canvas_getPenPosition(canvas) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L341
---
--- Pre-6.3 spelling of `Canvas:getPixel()`.
---@deprecated Use `Canvas:getPixel()`.
---@param canvas Canvas
---@param x integer
---@param y integer
---@return integer
function canvas_getPixel(canvas, x, y) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L326
---
--- Pre-6.3 spelling of `Canvas:getTextHeight()`.
---@deprecated Use `Canvas:getTextHeight()`.
---@param canvas Canvas
---@param text string
---@return integer
function canvas_getTextHeight(canvas, text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L311
---
--- Pre-6.3 spelling of `Canvas:getTextWidth()`.
---@deprecated Use `Canvas:getTextWidth()`.
---@param canvas Canvas
---@param text string
---@return integer
function canvas_getTextWidth(canvas, text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L58
---
--- Pre-6.3 spelling of `Canvas:getWidth()`.
---@deprecated Use `Canvas:getWidth()`.
---@param canvas Canvas
---@return integer
function canvas_getWidth(canvas) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L423
---
--- Pre-6.3 spelling of `Canvas:gradientFill()`.
---@deprecated Use `Canvas:gradientFill()`.
---@param canvas Canvas
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
---@param startcolor integer
---@param stopcolor integer
---@param direction integer
function canvas_gradientFill(canvas, x1, y1, x2, y2, startcolor, stopcolor, direction) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L97
---
--- Pre-6.3 spelling of `Canvas:line()`.
---@deprecated Use `Canvas:line()`.
---@param canvas Canvas
---@param sourcex integer
---@param sourcey integer
---@param destinationx integer
---@param destinationy integer
function canvas_line(canvas, sourcex, sourcey, destinationx, destinationy) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L118
---
--- Pre-6.3 spelling of `Canvas:lineTo()`.
---@deprecated Use `Canvas:lineTo()`.
---@param canvas Canvas
---@param destinationx integer
---@param destinationy integer
function canvas_lineTo(canvas, destinationx, destinationy) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L152
---
--- Pre-6.3 spelling of `Canvas:rect()`.
---@deprecated Use `Canvas:rect()`.
---@param canvas Canvas
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
function canvas_rect(canvas, x1, y1, x2, y2) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L574
---
--- Pre-6.3 spelling of `Canvas:setPenPosition()`.
---@deprecated Use `Canvas:setPenPosition()`.
---@param canvas Canvas
---@param x integer
---@param y integer
function canvas_setPenPosition(canvas, x, y) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L358
---
--- Pre-6.3 spelling of `Canvas:setPixel()`.
---@deprecated Use `Canvas:setPixel()`.
---@param canvas Canvas
---@param x integer
---@param y integer
---@param color integer
function canvas_setPixel(canvas, x, y, color) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L268
---
--- Pre-6.3 spelling of `Canvas:textOut()`.
---@deprecated Use `Canvas:textOut()`.
---@param canvas Canvas
---@param x integer
---@param y integer
---@param text string
function canvas_textOut(canvas, x, y, text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L170
---
--- Pre-6.3 spelling of `D3DHook:beginUpdate()`.
---@deprecated Use `D3DHook:beginUpdate()`.
function d3dhook_beginUpdate() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L386
---
--- Pre-6.3 spelling of `D3DHook:createFontmap()`.
---@deprecated Use `D3DHook:createFontmap()`.
---@param font Font
---@return D3DHook_FontMap?
function d3dhook_createFontmap(font) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L647
---
--- Pre-6.3 spelling of `D3DHook:createSprite()`.
---
--- Needs the hook to exist already. Unlike `d3dhook_createTexture`
--- (LuaOldD3DHook.pas:294) and `d3dhook_createFontmap` (LuaOldD3DHook.pas:399), this one
--- never calls `safed3dhook` (LuaOldD3DHook.pas:647-665); it calls straight into the
--- global `d3dhook` (d3dhookUnit.pas:464), which stays nil until something else installs
--- the hook (d3dhookUnit.pas:1789). The nil call reaches
--- `TD3DHook.beginCommandListUpdate` (d3dhookUnit.pas:1537), which raises
--- 'The d3dhook object has not been created yet' (d3dhookUnit.pas:1440). Call
--- `d3dhook_initializeHook()` or `createD3DHook()` first.
---@deprecated Use `D3DHook:createSprite()`.
---@param d3dhook_texture D3DHook_Texture
---@return D3DHook_Sprite
function d3dhook_createSprite(d3dhook_texture) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L783
---
--- Pre-6.3 spelling of `D3DHook:createTextContainer()`.
---
--- Needs the hook to exist already. Unlike `d3dhook_createTexture`
--- (LuaOldD3DHook.pas:294) and `d3dhook_createFontmap` (LuaOldD3DHook.pas:399), this one
--- never calls `safed3dhook` (LuaOldD3DHook.pas:783-805); it calls straight into the
--- global `d3dhook` (d3dhookUnit.pas:464), which stays nil until something else installs
--- the hook (d3dhookUnit.pas:1789). The nil call reaches
--- `TD3DHook.beginCommandListUpdate` (d3dhookUnit.pas:1506), which raises
--- 'The d3dhook object has not been created yet' (d3dhookUnit.pas:1440). Call
--- `d3dhook_initializeHook()` or `createD3DHook()` first.
---@deprecated Use `D3DHook:createTextContainer()`.
---@param d3dhook_fontmap D3DHook_FontMap
---@param x number
---@param y number
---@param text string
---@return D3DHook_TextContainer
function d3dhook_createTextContainer(d3dhook_fontmap, x, y, text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L284
---
--- Pre-6.3 spelling of `D3DHook:createTexture()`.
---@deprecated Use `D3DHook:createTexture()`.
---@param picture Picture|string
---@return D3DHook_Texture?
function d3dhook_createTexture(picture) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L263
---
--- Pre-6.3 spelling of `D3DHook:enableConsole()`.
---@deprecated Use `D3DHook:enableConsole()`.
---@param virtualkey integer
function d3dhook_enableConsole(virtualkey) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L184
---
--- Pre-6.3 spelling of `D3DHook:endUpdate()`.
---@deprecated Use `D3DHook:endUpdate()`.
function d3dhook_endUpdate() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L435
---
--- Pre-6.3 spelling of `D3DHook_FontMap:changeFont()`.
---@deprecated Use `D3DHook_FontMap:changeFont()`.
---@param d3dhook_fontmap D3DHook_FontMap
---@param font Font
function d3dhook_fontmap_changeFont(d3dhook_fontmap, font) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L413
---
--- Pre-6.3 spelling of `D3DHook_FontMap:getTextWidth()`.
---@deprecated Use `D3DHook_FontMap:getTextWidth()`.
---@param d3dhook_fontmap D3DHook_FontMap
---@param text string
---@return integer
function d3dhook_fontmap_getTextWidth(d3dhook_fontmap, text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L40
---
--- Pre-6.3 global. `D3DHook` exposes only beginUpdate, endUpdate, enableConsole,
--- createTexture, createFontmap, createTextContainer and createSprite as class
--- methods, so there is no `D3DHook:getHeight()` to migrate to; read the
--- `D3DHook.Height` property instead. Installs the hook on demand and returns
--- nothing when it cannot be created.
---@deprecated Use the `D3DHook.Height` property.
---@param d3dhook D3DHook Ignored, but still required: the implementation only acts when the stack holds exactly one value (LuaOldD3DHook.pas:47), and it overwrites the argument with `safed3dhook` before reading anything (LuaOldD3DHook.pas:49-52), so the height always comes from the global hook.
---@return integer?
function d3dhook_getHeight(d3dhook) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L18
---
--- Pre-6.3 global. `D3DHook` exposes only beginUpdate, endUpdate, enableConsole,
--- createTexture, createFontmap, createTextContainer and createSprite as class
--- methods, so there is no `D3DHook:getWidth()` to migrate to; read the
--- `D3DHook.Width` property instead. Installs the hook on demand and returns
--- nothing when it cannot be created.
---@deprecated Use the `D3DHook.Width` property.
---@param d3dhook D3DHook Ignored, but still required: the implementation only acts when the stack holds exactly one value (LuaOldD3DHook.pas:25). It reads the argument and then overwrites it with `safed3dhook` (LuaOldD3DHook.pas:27-30), so the width always comes from the global hook.
---@return integer?
function d3dhook_getWidth(d3dhook) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L62
---
--- Pre-6.3 global that installs the Direct3D hook. There is no
--- `D3DHook:initializeHook()`; the modern entry point is the `createD3DHook()`
--- global.
---
--- Windows only. `initializeLuaOldD3DHook` registers every `d3dhook_*` global inside a
--- `{$ifdef windows}` block (LuaOldD3DHook.pas:887), and the implementations themselves
--- sit inside another one (LuaOldD3DHook.pas:14), so on other builds none of these
--- globals exists at all and calling one is a nil call rather than a failed hook.
---@deprecated Use `createD3DHook()`.
---@param size integer?
---@param hookwindow boolean?
---@return boolean
function d3dhook_initializeHook(size, hookwindow) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L129
---
--- Pre-6.3 global. `D3DHook` exposes only beginUpdate, endUpdate, enableConsole,
--- createTexture, createFontmap, createTextContainer and createSprite as class
--- methods, so there is no `D3DHook:onClick()` to migrate to; assign the
--- `D3DHook.OnClick` property instead. Like `d3dhook_createSprite` and
--- `d3dhook_createTextContainer`, and unlike the rest of the `d3dhook_*` globals, this
--- one never calls `safed3dhook` (LuaOldD3DHook.pas:129-167); unlike those two it fails
--- quietly rather than raising, doing nothing while no hook exists
--- (LuaOldD3DHook.pas:141).
---@deprecated Use the `D3DHook.OnClick` property.
---@param onclick CECallback|string
function d3dhook_onClick(onclick) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L87
---
--- Pre-6.3 global. `D3DHook` exposes only beginUpdate, endUpdate, enableConsole,
--- createTexture, createFontmap, createTextContainer and createSprite as class
--- methods, so there is no `D3DHook:onKey()` to migrate to; assign the
--- `D3DHook.OnKeyDown` property instead. Like `d3dhook_createSprite` and
--- `d3dhook_createTextContainer`, and unlike the rest of the `d3dhook_*` globals, this
--- one never calls `safed3dhook` (LuaOldD3DHook.pas:87-127); unlike those two it fails
--- quietly rather than raising, doing nothing while no hook exists
--- (LuaOldD3DHook.pas:100).
---@deprecated Use the `D3DHook.OnKeyDown` property.
---@param onkey CECallback|string
function d3dhook_onKey(onkey) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L199
---
--- Pre-6.3 global. `D3DHook` registers no `setDisabledZBuffer` method; the
--- modern equivalent is the `D3DHook.DisabledZBuffer` property.
---@deprecated Use the `D3DHook.DisabledZBuffer` property.
---@param state boolean
function d3dhook_setDisabledZBuffer(state) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L242
---
--- Pre-6.3 global. `D3DHook` registers no `setMouseClip` method; the modern
--- equivalent is the `D3DHook.MouseClip` property.
---@deprecated Use the `D3DHook.MouseClip` property.
---@param state boolean
function d3dhook_setMouseClip(state) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L220
---
--- Pre-6.3 global. `D3DHook` registers no `setWireframeMode` method; the modern
--- equivalent is the `D3DHook.WireframeMode` property.
---@deprecated Use the `D3DHook.WireframeMode` property.
---@param state boolean
function d3dhook_setWireframeMode(state) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L333
---
--- Pre-6.3 global. `D3DHook` registers no `texture_getHeight` method; read the
--- `D3DHook_Texture.Height` property instead.
---@deprecated Use the `D3DHook_Texture.Height` property.
---@param d3dhook_texture D3DHook_Texture
---@return integer
function d3dhook_texture_getHeight(d3dhook_texture) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L350
---
--- Pre-6.3 global. `D3DHook` registers no `texture_getWidth` method; read the
--- `D3DHook_Texture.Width` property instead.
---@deprecated Use the `D3DHook_Texture.Width` property.
---@param d3dhook_texture D3DHook_Texture
---@return integer
function d3dhook_texture_getWidth(d3dhook_texture) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaOldD3DHook.pas#L367
---
--- Pre-6.3 spelling of `D3DHook_Texture:loadTextureByPicture()`.
---@deprecated Use `D3DHook_Texture:loadTextureByPicture()`.
---@param d3dhook_texture D3DHook_Texture
---@param picture Picture
function d3dhook_texture_loadTextureByPicture(d3dhook_texture, picture) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFont.pas#L27
---
--- Pre-6.3 spelling of `Font:getColor()`.
---@deprecated Use `Font:getColor()`.
---@param font Font
---@return integer
function font_getColor(font) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFont.pas#L65
---
--- Pre-6.3 spelling of `Font:getName()`.
---@deprecated Use `Font:getName()`.
---@param font Font
---@return string
function font_getName(font) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFont.pas#L46
---
--- Pre-6.3 spelling of `Font:getSize()`.
---@deprecated Use `Font:getSize()`.
---@param font Font
---@return integer
function font_getSize(font) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFont.pas#L36
---
--- Pre-6.3 spelling of `Font:setColor()`.
---@deprecated Use `Font:setColor()`.
---@param font Font
---@param value integer
function font_setColor(font, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFont.pas#L74
---
--- Pre-6.3 spelling of `Font:setName()`.
---@deprecated Use `Font:setName()`.
---@param font Font
---@param value string
function font_setName(font, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFont.pas#L55
---
--- Pre-6.3 spelling of `Font:setSize()`.
---@deprecated Use `Font:setSize()`.
---@param font Font
---@param value integer
function font_setSize(font, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGraphic.pas#L36
---
--- Pre-6.3 spelling of `Graphic:getHeight()`.
---@deprecated Use `Graphic:getHeight()`.
---@param graphic Graphic
---@return integer
function graphic_getHeight(graphic) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGraphic.pas#L17
---
--- Pre-6.3 spelling of `Graphic:getWidth()`.
---@deprecated Use `Graphic:getWidth()`.
---@param graphic Graphic
---@return integer
function graphic_getWidth(graphic) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGraphic.pas#L45
---
--- Pre-6.3 spelling of `Graphic:setHeight()`.
---
--- Broken in this flat form: the implementation reads its value at stack index 1,
--- and the graphic is still at index 1, so it assigns the object instead of the
--- value and the height ends up 0. Use `Graphic:setHeight()`.
---@deprecated Use `Graphic:setHeight()`.
---@param graphic Graphic
---@param value integer
function graphic_setHeight(graphic, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGraphic.pas#L26
---
--- Pre-6.3 spelling of `Graphic:setWidth()`.
---
--- Broken in this flat form: the implementation reads its value at stack index 1,
--- and the graphic is still at index 1, so it assigns the object instead of the
--- value and the width ends up 0. Use `Graphic:setWidth()`.
---@deprecated Use `Graphic:setWidth()`.
---@param graphic Graphic
---@param value integer
function graphic_setWidth(graphic, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPen.pas#L16
---
--- Pre-6.3 spelling of `Pen:getColor()`.
---@deprecated Use `Pen:getColor()`.
---@param pen Pen
---@return integer
function pen_getColor(pen) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPen.pas#L35
---
--- Pre-6.3 spelling of `Pen:getWidth()`.
---@deprecated Use `Pen:getWidth()`.
---@param pen Pen
---@return integer
function pen_getWidth(pen) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPen.pas#L25
---
--- Pre-6.3 spelling of `Pen:setColor()`.
---@deprecated Use `Pen:setColor()`.
---@param pen Pen
---@param color integer
---@return integer color The argument, echoed back: LuaPen.pas:32 sets `result:=1` without pushing anything, so Lua returns the top of the stack.
function pen_setColor(pen, color) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPen.pas#L44
---
--- Pre-6.3 spelling of `Pen:setWidth()`.
---@deprecated Use `Pen:setWidth()`.
---@param pen Pen
---@param width integer
---@return integer width The argument, echoed back: LuaPen.pas:51 sets `result:=1` without pushing anything, so Lua returns the top of the stack.
function pen_setWidth(pen, width) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPicture.pas#L98
---
--- Pre-6.3 spelling of `Picture:assign()`.
---@deprecated Use `Picture:assign()`.
---@param picture Picture
---@param sourcepicture Picture
function picture_assign(picture, sourcepicture) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPicture.pas#L157
---
--- Pre-6.3 spelling of `Picture:getBitmap()`.
---@deprecated Use `Picture:getBitmap()`.
---@param picture Picture
---@return Bitmap
function picture_getBitmap(picture) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPicture.pas#L125
---
--- Pre-6.3 spelling of `Picture:getGraphic()`.
---@deprecated Use `Picture:getGraphic()`.
---@param picture Picture
---@return Graphic? graphic Nothing while the picture is still empty; `luaclass_newClass` pushes nil for a nil graphic.
function picture_getGraphic(picture) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPicture.pas#L173
---
--- Pre-6.3 spelling of `Picture:getJpeg()`.
---@deprecated Use `Picture:getJpeg()`.
---@param picture Picture
---@return Jpeg
function picture_getJpeg(picture) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPicture.pas#L141
---
--- Pre-6.3 spelling of `Picture:getPNG()`.
---@deprecated Use `Picture:getPNG()`.
---@param picture Picture
---@return PNG
function picture_getPNG(picture) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPicture.pas#L22
---
--- Pre-6.3 spelling of `Picture:loadFromFile()`.
---@deprecated Use `Picture:loadFromFile()`.
---@param picture Picture
---@param filename string
---@return boolean
---@return string? errormessage
function picture_loadFromFile(picture, filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPicture.pas#L58
---
--- Pre-6.3 spelling of `Picture:loadFromStream()`.
---
--- Not exactly equivalent: this flat form rewinds the stream first. `LuaPicture.pas:72`
--- sets `stream.Position:=0` only when the picture was passed as the first argument, as
--- 6.2 compatibility. `picture:loadFromStream(stream)` reads from the stream's current
--- position instead.
---@deprecated Use `Picture:loadFromStream()`.
---@param picture Picture
---@param stream Stream Rewound to position 0 before reading.
---@param ext string?
---@return boolean
---@return string? errormessage
function picture_loadFromStream(picture, stream, ext) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRasterImage.pas#L16
---
--- Pre-6.3 spelling of `RasterImage:getCanvas()`.
---@deprecated Use `RasterImage:getCanvas()`.
---@param rasterimage RasterImage
---@return Canvas
function rasterimage_getCanvas(rasterimage) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRasterImage.pas#L25
---
--- Pre-6.3 spelling of `RasterImage:getPixelFormat()`.
---@deprecated Use `RasterImage:getPixelFormat()`.
---@param rasterimage RasterImage
---@return integer
function rasterimage_getPixelFormat(rasterimage) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRasterImage.pas#L46
---
--- Pre-6.3 spelling of `RasterImage:getTransparent()`.
---@deprecated Use `RasterImage:getTransparent()`.
---@param rasterimage RasterImage
---@return boolean
function rasterimage_getTransparent(rasterimage) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRasterImage.pas#L66
---
--- Pre-6.3 spelling of `RasterImage:getTransparentColor()`.
---@deprecated Use `RasterImage:getTransparentColor()`.
---@param rasterimage RasterImage
---@return integer
function rasterimage_getTransparentColor(rasterimage) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRasterImage.pas#L35
---
--- Pre-6.3 spelling of `RasterImage:setPixelFormat()`.
---@deprecated Use `RasterImage:setPixelFormat()`.
---@param rasterimage RasterImage
---@param value integer
function rasterimage_setPixelFormat(rasterimage, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRasterImage.pas#L55
---
--- Pre-6.3 spelling of `RasterImage:setTransparent()`.
---
--- Broken in this flat form: the implementation only acts when the stack holds
--- exactly one value, and the rasterimage already occupies that slot, so passing a
--- value makes it a no-op. Use `RasterImage:setTransparent()`.
---@deprecated Use `RasterImage:setTransparent()`.
---@param rasterimage RasterImage
---@param value boolean
function rasterimage_setTransparent(rasterimage, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRasterImage.pas#L76
---
--- Pre-6.3 spelling of `RasterImage:setTransparentColor()`.
---@deprecated Use `RasterImage:setTransparentColor()`.
---@param rasterimage RasterImage
---@param value integer
function rasterimage_setTransparentColor(rasterimage, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRegion.pas#L40
---
--- Pre-6.3 spelling of `Region:addPolygon()`.
---@deprecated Use `Region:addPolygon()`.
---@param region Region
---@param tablewithcoordinates integer[][] Each element is a two-element array, `{x, y}` - x from integer key 1, y from integer key 2 (LuaRegion.pas:90-101); an element that is not a table aborts the whole call (LuaRegion.pas:102).
function region_addPolygon(region, tablewithcoordinates) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRegion.pas#L22
---
--- Pre-6.3 spelling of `Region:addRectangle()`.
---@deprecated Use `Region:addRectangle()`.
---@param region Region
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
function region_addRectangle(region, x1, y1, x2, y2) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaXMPlayer.pas#L93
---
--- Pre-6.3 spelling of `XMPlayer:isPlaying()`.
---@deprecated Use `XMPlayer:isPlaying()`.
---@param xmplayer XMPlayer? Ignored. The implementation discards its arguments and always acts on the global player.
---@return boolean
function xmplayer_isPlaying(xmplayer) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaXMPlayer.pas#L54
---
--- Pre-6.3 spelling of `XMPlayer:pause()`.
---@deprecated Use `XMPlayer:pause()`.
---@param xmplayer XMPlayer? Ignored. The implementation discards its arguments and always acts on the global player.
function xmplayer_pause(xmplayer) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaXMPlayer.pas#L16
---
--- Pre-6.3 spelling of `XMPlayer:playXM()`.
---@deprecated Use `XMPlayer:playXM()`.
---@param module string|Stream|TableFile
---@param noloop boolean?
function xmplayer_playXM(module, noloop) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaXMPlayer.pas#L67
---
--- Pre-6.3 spelling of `XMPlayer:resume()`.
---@deprecated Use `XMPlayer:resume()`.
---@param xmplayer XMPlayer? Ignored. The implementation discards its arguments and always acts on the global player.
function xmplayer_resume(xmplayer) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaXMPlayer.pas#L80
---
--- Pre-6.3 spelling of `XMPlayer:stop()`.
---@deprecated Use `XMPlayer:stop()`.
---@param xmplayer XMPlayer? Ignored. The implementation discards its arguments and always acts on the global player.
function xmplayer_stop(xmplayer) end
