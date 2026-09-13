---@meta
---
--- classes / graphics
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luabrush.pas#L35
---
--- Pascal class: `TBrush`.
---@class Brush : Object
---@field Color integer
---@field Style string|integer Fill pattern the brush paints with. Reads back the `TBrushStyle` member name, e.g. `'bsSolid'`, `'bsClear'` or `'bsDiagCross'`; assigning takes that name or the matching integer (LuaObject.pas:213-214, LuaObject.pas:299-308). LCL published property of `TBrush` - the LCL is not vendored here and no .lfm in this repository streams a `TBrush` sub-object's style, but Cheat Engine reads and writes it on its own canvases (addresslist.pas:2195/2197 sets `bsClear` around a `Rectangle` and puts `bsSolid` back, tablist.pas:326-330 saves it, sets `bsClear` for a `TextRect` and restores it, disassemblerviewlinesunit.pas:156 forces `bsSolid`). `brush_addMetaData` registers only `Color` (luabrush.pas:35-41), so it is reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494.
local Brush = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luabrush.pas#L16
---@return integer
---@overload fun(): integer
function Brush:getColor() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luabrush.pas#L25
---@param value integer
---@return integer value The argument, echoed back: luabrush.pas:32 sets `result:=1` without pushing anything, so Lua returns the top of the stack.
---@overload fun(value: integer): integer
function Brush:setColor(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L602
---
--- Pascal class: `TCanvas`.
---@class Canvas : Object
---@field Brush Brush Read-only.
---@field Pen Pen Read-only.
---@field Font Font Read-only.
---@field Width integer Read-only.
---@field Height integer Read-only.
---@field Handle integer
local Canvas = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L22
---@overload fun()
function Canvas:clear() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L40
---@return Brush
---@overload fun(): Brush
function Canvas:getBrush() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L31
---@return Pen
---@overload fun(): Pen
function Canvas:getPen() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L49
---@return Font
---@overload fun(): Font
function Canvas:getFont() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L58
---@return integer
---@overload fun(): integer
function Canvas:getWidth() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L67
---@return integer
---@overload fun(): integer
function Canvas:getHeight() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L97
---@param sourcex integer
---@param sourcey integer
---@param destinationx integer
---@param destinationy integer
---@overload fun(sourcex: integer, sourcey: integer, destinationx: integer, destinationy: integer)
function Canvas:line(sourcex, sourcey, destinationx, destinationy) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L118
---@param destinationx integer
---@param destinationy integer
---@overload fun(destinationx: integer, destinationy: integer)
function Canvas:lineTo(destinationx, destinationy) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L135
---@param destinationx integer
---@param destinationy integer
---@overload fun(destinationx: integer, destinationy: integer)
function Canvas:moveTo(destinationx, destinationy) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L152
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
---@overload fun(x1: integer, y1: integer, x2: integer, y2: integer)
function Canvas:rect(x1, y1, x2, y2) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L173
---
--- Two call forms: exactly one `Rect` table, or four corner coordinates. Five or more
--- arguments are accepted too and only the first four are read (LuaCanvas.pas:192-197).
--- Two or three arguments, or a single argument that is not a table, draw nothing
--- (LuaCanvas.pas:182-200).
---@overload fun(self: Canvas, rect: Rect)
---@overload fun(rect: Rect)
---@overload fun(x1: integer, y1: integer, x2: integer, y2: integer)
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
function Canvas:fillRect(x1, y1, x2, y2) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L203
---
--- Two call forms: exactly three arguments (a `Rect` table plus the two corner radii), or
--- six corner-coordinate-and-radius arguments. Seven or more are accepted too and only the
--- first six are read (LuaCanvas.pas:226-234). Any other argument count, or a
--- three-argument call whose first argument is not a table, draws nothing
--- (LuaCanvas.pas:214-237).
---@overload fun(self: Canvas, rect: Rect, rx: integer, ry: integer)
---@overload fun(rect: Rect, rx: integer, ry: integer)
---@overload fun(x1: integer, y1: integer, x2: integer, y2: integer, rx: integer, ry: integer)
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
---@param rx integer
---@param ry integer
function Canvas:roundRect(x1, y1, x2, y2, rx, ry) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L268
---@param x integer
---@param y integer
---@param text string
---@overload fun(x: integer, y: integer, text: string)
function Canvas:textOut(x, y, text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L286
---
--- Draws `text` starting at `(x, y)` in canvas coordinates, clipped to `rect`, and returns
--- the box it covered.
---
--- The string is not drawn verbatim. It goes through `renderFormattedText`
--- (LuaCanvas.pas:303, textrender.pas:552), which reads `[b]`, `[i]`, `[u]`, `[s]` and their
--- `[/b]`-style closers as font style toggles (`handleStyleSequence`, textrender.pas:461)
--- and ESC (`string.char(27)`) as the start of an escape sequence (`handleEscapeSequence`,
--- textrender.pas:434): ESC `[` runs an ANSI CSI sequence that changes colours and cursor
--- position (`handleCSISequence`, textrender.pas:308), ESC `c` restores the font and colours
--- the call started with. A carriage return (`string.char(13)`) starts a new line back at `x`
--- (textrender.pas:646-652); a line feed (`string.char(10)`) is ignored (textrender.pas:654),
--- so use `\r` rather than `\n` to wrap. The canvas font and brush colour are restored when
--- the call ends (textrender.pas:661).
---
--- The returned rectangle is `Left = x`, `Top = y`, `Right` the furthest pixel reached and
--- `Bottom` the last line's top plus one line height (textrender.pas:664-667). It is the
--- text's own extent, not `rect`, and is not clipped to `rect`.
---@param rect Rect Clipping rectangle every character is drawn into (`canvas.TextRect`, textrender.pas:581, :601-604).
---@param x integer Left edge the text starts at, and the column a carriage return returns to.
---@param y integer Top edge of the first line.
---@param text string
---@return Rect
---@overload fun(rect: Rect, x: integer, y: integer, text: string): Rect
function Canvas:textRect(rect, x, y, text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L311
---@param text string
---@return integer
---@overload fun(text: string): integer
function Canvas:getTextWidth(text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L326
---@param text string
---@return integer
---@overload fun(text: string): integer
function Canvas:getTextHeight(text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L341
---@param x integer
---@param y integer
---@return integer
---@overload fun(x: integer, y: integer): integer
function Canvas:getPixel(x, y) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L358
---@param x integer
---@param y integer
---@param color integer
---@overload fun(x: integer, y: integer, color: integer)
function Canvas:setPixel(x, y, color) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L376
---@param x integer
---@param y integer
---@param fillcolor integer? Omitted means the colour already at `(x,y)`, `canvas.Pixels[x,y]` (LuaCanvas.pas:393-396) - not the brush colour celua.txt:1803 claims.
---@param filltype integer? Cast straight to `TFillStyle` (LuaCanvas.pas:398-399); omitted means `fsSurface` (LuaCanvas.pas:386). Pass the globals `fsSurface` (0) or `fsBorder` (1) from bin/defines.lua:393-394: `fsSurface` fills everything up to `fillcolor`, `fsBorder` fills only connected pixels that already are `fillcolor` (celua.txt:1804-1806).
---@overload fun(x: integer, y: integer, fillcolor?: integer, filltype?: integer)
function Canvas:floodFill(x, y, fillcolor, filltype) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L405
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
---@overload fun(x1: integer, y1: integer, x2: integer, y2: integer)
function Canvas:ellipse(x1, y1, x2, y2) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L423
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
---@param startcolor integer
---@param stopcolor integer
---@param direction integer `0` blends top to bottom, `1` left to right. The number is cast straight to `TGradientDirection` (LuaCanvas.pas:444) and bin/defines.lua declares no name for it, so pass the bare value; celua.txt:1810 documents it as `0=Vertical 1=Horizontal`.
---@overload fun(x1: integer, y1: integer, x2: integer, y2: integer, startcolor: integer, stopcolor: integer, direction: integer)
function Canvas:gradientFill(x1, y1, x2, y2, startcolor, stopcolor, direction) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L498
---@param dest_x1 integer
---@param dest_y1 integer
---@param dest_x2 integer
---@param dest_y2 integer
---@param sourceCanvas Canvas
---@param source_x1 integer
---@param source_y1 integer
---@param source_x2 integer
---@param source_y2 integer
---@overload fun(dest_x1: integer, dest_y1: integer, dest_x2: integer, dest_y2: integer, sourceCanvas: Canvas, source_x1: integer, source_y1: integer, source_x2: integer, source_y2: integer)
function Canvas:copyRect(dest_x1, dest_y1, dest_x2, dest_y2, sourceCanvas, source_x1, source_y1, source_x2, source_y2) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L527
---@param x integer
---@param y integer
---@param graphic Graphic
---@overload fun(x: integer, y: integer, graphic: Graphic)
function Canvas:draw(x, y, graphic) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L546
---@param rect Rect
---@param graphic Graphic
---@overload fun(rect: Rect, graphic: Graphic)
function Canvas:stretchDraw(rect, graphic) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L470
---
--- Mask-aware blit. The source image's mask handle is used when it is masked;
--- the rectangles are given as corner coordinates, not as origin plus size.
---@param dest_x1 integer
---@param dest_y1 integer
---@param dest_x2 integer
---@param dest_y2 integer
---@param sourceImage RasterImage
---@param source_x1 integer
---@param source_y1 integer
---@param source_x2 integer
---@param source_y2 integer
---@overload fun(dest_x1: integer, dest_y1: integer, dest_x2: integer, dest_y2: integer, sourceImage: RasterImage, source_x1: integer, source_y1: integer, source_x2: integer, source_y2: integer)
function Canvas:drawWithMask(dest_x1, dest_y1, dest_x2, dest_y2, sourceImage, source_x1, source_y1, source_x2, source_y2) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L564
---@return integer
---@return integer
---@overload fun(): integer, integer
function Canvas:getPenPosition() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L574
---@param x integer
---@param y integer
---@overload fun(x: integer, y: integer)
function Canvas:setPenPosition(x, y) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L590
---@return Rect
---@overload fun(): Rect
function Canvas:getClipRect() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCanvas.pas#L240
---
--- Two call forms: four corner coordinates, or exactly one `Rect` table. Five or more
--- arguments are accepted too and only the first four are read (LuaCanvas.pas:249-254);
--- two or three arguments draw nothing (LuaCanvas.pas:249-263). The one-argument branch has
--- no table check - `lua_toRect` runs on whatever is passed (LuaCanvas.pas:261).
---@overload fun(self: Canvas, rect: Rect)
---@overload fun(rect: Rect)
---@overload fun(x1: integer, y1: integer, x2: integer, y2: integer)
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
function Canvas:drawFocusRect(x1, y1, x2, y2) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaD3DHook.pas#L182
---
--- Pascal class: `TD3DHook`. Windows only; the unit's whole implementation sits inside an
--- `{$ifdef windows}` block (LuaD3DHook.pas:14) and the `luaclass_register` at
--- LuaD3DHook.pas:272 is guarded again (LuaD3DHook.pas:271-275), so on other builds the
--- class does not exist and `createD3DHook` is not registered either (LuaD3DHook.pas:264-266).
--- The same holds for `D3DHook_Texture`, `D3DHook_FontMap`, `D3DHook_RenderObject`,
--- `D3DHook_Sprite` and `D3DHook_TextContainer`, whose Pascal classes live in the
--- `{$ifdef windows}` block of d3dhookUnit.pas (d3dhookUnit.pas:14).
---@class D3DHook : Object
---@field Width integer Read-only.
---@field Height integer Read-only.
---@field DisabledZBuffer boolean
---@field WireframeMode boolean
---@field MouseClip boolean
---@field Processid integer Read-only.
---@field OnKeyDown CECallback `function(virtualkeycode, char): boolean`, called when a key is pressed in the game window; return true to let the key reach the game, false to swallow it. Returning nothing counts as false: the `lua_pcall(L,2,1,0)` at LuaCaller.pas:646 pads the missing result with nil and `lua_toboolean` reads that as false. The `result:=true` default at LuaCaller.pas:636 only survives when the callback cannot run or the call errors. Not compatible with DirectInput8.
---@field OnClick CECallback `function(renderobject, x, y)`, called when a rendered object is clicked (a `D3DHook_Sprite` in practice); `x` and `y` are coordinates inside that object, and the highest-ZOrder one wins when they overlap.
local D3DHook = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaD3DHook.pas#L36
---@overload fun()
function D3DHook:beginUpdate() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaD3DHook.pas#L45
---@overload fun()
function D3DHook:endUpdate() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaD3DHook.pas#L56
---
--- Adds a Lua console to the hooked game window, brought up by `virtualkey`.
---@param virtualkey integer? Virtual key code that opens the console. Defaults to 0xC0, the `~` key; the guard is `lua_gettop(L)=1`, so passing more than one argument falls back to 0xC0 as well (LuaD3DHook.pas:61-64).
---@overload fun(virtualkey?: integer)
function D3DHook:enableConsole(virtualkey) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaD3DHook.pas#L71
---
--- `TransparentColor` only applies to the `Picture` form, and only when exactly two
--- arguments are passed (LuaD3DHook.pas:90): Cheat Engine then copies the picture into a
--- fresh 32-bit PNG with that colour marked transparent (LuaD3DHook.pas:93-104). The
--- filename form never looks at the second argument (LuaD3DHook.pas:112-121).
---@param picture Picture|string A `Picture` object, or the name of an image file to load.
---@param TransparentColor integer? Ignored unless `picture` is a `Picture` and it is the second and last argument.
---@return D3DHook_Texture? texture Nothing when the userdata is not a `Picture` (LuaD3DHook.pas:88) or when loading the file raised - the exception is swallowed and no value is pushed (LuaD3DHook.pas:115-120).
---@overload fun(picture: Picture|string, TransparentColor?: integer): D3DHook_Texture?
function D3DHook:createTexture(picture, TransparentColor) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaD3DHook.pas#L126
---@param font Font
---@return D3DHook_FontMap?
---@overload fun(font: Font): D3DHook_FontMap?
function D3DHook:createFontmap(font) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaD3DHook.pas#L160
---
--- Acts on Cheat Engine's global hook rather than on the object it is called on:
--- LuaD3DHook.pas:168 fetches the receiver into `d` and never reads it, and
--- LuaD3DHook.pas:176 calls the unit-global `d3dhook` (d3dhookUnit.pas:464). The
--- three sibling `create` methods all use the receiver: `createTexture` at
--- LuaD3DHook.pas:103, LuaD3DHook.pas:107 and LuaD3DHook.pas:117, `createFontmap`
--- at LuaD3DHook.pas:138, and `createSprite` at LuaD3DHook.pas:155.
--- Normally the two are the same object, since `createD3DHook` returns that same
--- global (d3dhookUnit.pas:1819), but a `D3DHook` value held over a target-process
--- exit is not: `safed3dhook` then clears the global with `freeandnil`
--- (d3dhookUnit.pas:1812-1813), and this method dereferences nil.
---
--- All four arguments are required (`lua_gettop(L)=4`, LuaD3DHook.pas:170); with
--- any other count nothing is created and nothing is returned.
---@param d3dhook_fontmap D3DHook_FontMap
---@param x number
---@param y number
---@param text string
---@return D3DHook_TextContainer?
---@overload fun(d3dhook_fontmap: D3DHook_FontMap, x: number, y: number, text: string): D3DHook_TextContainer?
function D3DHook:createTextContainer(d3dhook_fontmap, x, y, text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaD3DHook.pas#L143
---@param d3dhook_texture D3DHook_Texture
---@return D3DHook_Sprite?
---@overload fun(d3dhook_texture: D3DHook_Texture): D3DHook_Sprite?
function D3DHook:createSprite(d3dhook_texture) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaD3DHook.pas#L209
---
--- Pascal class: `TD3DHook_Texture`.
---@class D3DHook_Texture : Object
---@field Width integer Read-only.
---@field Height integer Read-only.
local D3DHook_Texture = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaD3DHook.pas#L196
---@param picture Picture
---@overload fun(picture: Picture)
function D3DHook_Texture:loadTextureByPicture(picture) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaD3DHook.pas#L249
---
--- Pascal class: `TD3DHook_FontMap`.
---@class D3DHook_FontMap : D3DHook_Texture
local D3DHook_FontMap = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaD3DHook.pas#L233
---@param font Font
---@overload fun(font: Font)
function D3DHook_FontMap:changeFont(font) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaD3DHook.pas#L216
---@param text string
---@return integer
---@overload fun(text: string): integer
function D3DHook_FontMap:getTextWidth(text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadiagram.pas#L299
---
--- Pascal class: `TDiagram`.
---@class Diagram : CustomControl
---@field Link table<integer, DiagramLink?> Read-only. Indexed from 0; nil past the end of the list (diagram.pas:324).
---@field Block table<integer, DiagramBlock?> Read-only. Indexed from 0; nil past the end of the list (diagram.pas:311).
---@field ScrollX integer
---@field MaxScrollX integer Read-only.
---@field ScrollY integer
---@field MaxScrollY integer Read-only.
---@field ArrowSize integer
---@field LineThickness integer
---@field LineColor integer
---@field DrawPlotPoints boolean
---@field PlotPointColor integer
---@field AllowUserToCreatePlotPoints boolean
---@field AllowUserToMovePlotPoints boolean
---@field AllowUserToResizeBlocks boolean
---@field AllowUserToMoveBlocks boolean
---@field AllowUserToChangeAttachPoints boolean
---@field ArrowStyles string A `TArrowStyles` set, read and written as its set string.
---@field BlockBackground integer
---@field BackGroundColor integer
---@field BlockCount integer Read-only.
---@field LinkCount integer Read-only.
---@field UseOpenGL boolean Windows only.
---@field Zoom number
---@field Anchors string A `TAnchors` set, read and written as its set string.
---@field OnMouseDown CECallback `function(sender, button, x, y)`
---@field OnMouseMove CECallback `function(sender, x, y)`
---@field OnMouseUp CECallback `function(sender, button, x, y)`
---@field OnDblClick CECallback `function(sender)`
---@field OnContextPopup CECallback `function(sender, mousepos): boolean`, return whether it was handled.
---@field ShowHint boolean
local Diagram = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadiagram.pas#L134
---@return DiagramBlock
---@overload fun(): DiagramBlock
function Diagram:createBlock() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadiagram.pas#L96
---
--- Both arguments must be of the same kind: two descriptor tables, or two
--- `DiagramBlock` objects. A mixed pair matches neither branch and returns nothing.
---@param origin DiagramBlockSideDescriptor|DiagramBlock
---@param destination DiagramBlockSideDescriptor|DiagramBlock
---@return DiagramLink? # nothing when the two arguments are of different kinds.
---@overload fun(origin: DiagramBlockSideDescriptor|DiagramBlock, destination: DiagramBlockSideDescriptor|DiagramBlock): DiagramLink?
function Diagram:addConnection(origin, destination) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadiagram.pas#L176
---@param filename string
---@overload fun(filename: string)
function Diagram:saveAsImage(filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadiagram.pas#L190
---@param filename string
---@overload fun(filename: string)
function Diagram:saveToFile(filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadiagram.pas#L204
---@param filename string
---@overload fun(filename: string)
function Diagram:loadFromFile(filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadiagram.pas#L218
---@param s Stream
---@overload fun(s: Stream)
function Diagram:saveToStream(s) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadiagram.pas#L232
---@param stream Stream
---@overload fun(stream: Stream)
function Diagram:loadFromStream(stream) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadiagram.pas#L246
---@param x integer|Point An x coordinate, or a `Point` table when `y` is left out; the table form is read by `lua_toPoint` (luadiagram.pas:262).
---@param y integer?
---@return DiagramBlock|DiagramLink|nil # nil when nothing is under the point.
---@overload fun(x: integer|Point, y?: integer): DiagramBlock|DiagramLink|nil
function Diagram:getObjectAt(x, y) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadiagramblock.pas#L111
---
--- Pascal class: `TDiagramBlock`. The fields below are published Pascal properties, reached
--- through the `lua_getProperty` RTTI fallback in `luaclass_index`.
---@class DiagramBlock : Object
---@field Owner Diagram Read-only.
---@field Canvas Canvas Read-only.
---@field X integer
---@field Y integer
---@field Width integer
---@field Height integer
---@field Caption string
---@field Strings Strings
---@field BackgroundColor integer
---@field TextColor integer
---@field Name string
---@field AutoSize boolean
---@field AutoSide boolean
---@field AutoSideDistance integer
---@field ShowHeader boolean
---@field DragBody boolean
---@field OnDoubleClickHeader CECallback
---@field OnDoubleClickBody CECallback
---@field OnRenderHeader CECallback Called as `f(sender, rect, beforePaint)` while the header is painted; the boolean it returns decides whether Cheat Engine draws the header itself. `TLuaCaller.DBCustomDrawEvent` pushes the block, the rect and `beforePaint`, calls with one result, and stores that result into the `var DefaultDraw` parameter of `TDBCustomDrawEvent` (LuaCaller.pas:1732-1743, diagramblock.pas:20). diagramblock.pas:499-500 fires it with `beforePaint=true` first; returning false - or returning nothing at all, since the `lua_pcall(LuaVM,3,1,0)` pads the missing result with nil - skips both the default `renderFormattedText` (diagramblock.pas:504) and the second, `beforePaint=false` call (diagramblock.pas:505-506), so a handler that only wants to observe must `return true`. `rect` is a `Rect` table (`lua_pushrect`, LuaHandler.pas:463) spanning `(0,0)-(width-1,captionheight)`. `TDBCustomDrawEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3553), so a Lua function can be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494 (tkMethod at LuaObject.pas:297), and read back through the `lua_getProperty` fallback at LuaClass.pas:578.
---@field OnRenderBody CECallback Called as `f(sender, rect, beforePaint)` while the body is painted; the boolean it returns decides whether Cheat Engine draws the body text itself. `TLuaCaller.DBCustomDrawEvent` pushes the block, the rect and `beforePaint`, calls with one result, and stores that result into the `var DefaultDraw` parameter of `TDBCustomDrawEvent` (LuaCaller.pas:1732-1743, diagramblock.pas:20). diagramblock.pas:512-513 fires it with `beforePaint=true` first; returning false - or returning nothing at all, since the `lua_pcall(LuaVM,3,1,0)` pads the missing result with nil - skips both the default `renderFormattedText` (diagramblock.pas:517) and the second, `beforePaint=false` call (diagramblock.pas:518-519), so a handler that only wants to observe must `return true`. `rect` is a `Rect` table (`lua_pushrect`, LuaHandler.pas:463), but Cheat Engine passes the *header* rectangle `(0,0)-(width-1,captionheight)` here (diagramblock.pas:513 and :519), not the body rectangle `(0,captionheight)-(width-1,height-2)` it paints into at :517. `TDBCustomDrawEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3553), so a Lua function can be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494 (tkMethod at LuaObject.pas:297), and read back through the `lua_getProperty` fallback at LuaClass.pas:578.
---@field OnDrag CECallback
---@field OnDragStart CECallback
---@field OnDragEnd CECallback
---@field Tag integer
local DiagramBlock = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadiagramblock.pas#L63
---@return { asSource: DiagramLink[], asDestination: DiagramLink[] } # `asSource` holds the links that leave this block, `asDestination` the links that arrive at it.
---@overload fun(): { asSource: DiagramLink[], asDestination: DiagramLink[] }
function DiagramBlock:getLinks() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadiagramblock.pas#L46
---@param block DiagramBlock
---@return boolean
---@overload fun(block: DiagramBlock): boolean
function DiagramBlock:overlapsWith(block) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadiagramblock.pas#L16
---
--- Tests whether the segment `startPoint`-`endPoint` crosses the block.
---
--- On a miss the function returns `false`. On a hit Cheat Engine pushes `true` and the
--- intersection point but never sets its return count, so a hit yields no values at
--- all - the intersection point is unreachable and a hit reads as `nil`.
---@param startPoint Point Point table, as read by `lua_toPoint`.
---@param endPoint Point
---@return boolean? # `false` on a miss, nothing at all on a hit.
---@overload fun(startPoint: Point, endPoint: Point): boolean?
function DiagramBlock:intersectsWithLine(startPoint, endPoint) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadiagramlink.pas#L170
---
--- Pascal class: `TDiagramLink`.
---@class DiagramLink : Object
---@field OriginDescriptor DiagramBlockSideDescriptor Assigning also accepts a bare `DiagramBlock`, or `{DiagramBlock}`; `Side` may be given as the enum member name.
---@field DestinationDescriptor DiagramBlockSideDescriptor Assigning also accepts a bare `DiagramBlock`, or `{DiagramBlock}`; `Side` may be given as the enum member name.
---@field Points table<integer, Point?> Indexed 0..PointCount-1; out-of-range reads return nothing (luadiagramlink.pas:35-39) and out-of-range writes are ignored (luadiagramlink.pas:56-57).
---@field OriginBlock DiagramBlock
---@field DestinationBlock DiagramBlock
---@field PointCount integer Read-only.
---@field LineColor integer
---@field LineThickness integer
---@field ArrowStyles string A `TArrowStyles` set, read and written as its set string.
---@field ArrowSize integer Assigning this alone has no visible effect. `setArrowSize` raises `useCustomArrowSize` (diagramlink.pas:179-183), but `getArrowSize` tests `useCustomArrowStyles` instead (diagramlink.pas:171-177), so reads keep returning the diagram's `config.arrowSize` until `ArrowStyles` is assigned too; nothing else ever reads `useCustomArrowSize` except saving and loading a link (diagramlink.pas:923-924, 983-984). Drawing follows the same getter - `DrawArrow` reads the property at diagramlink.pas:393 and `render` calls it (diagramlink.pas:652). `reset` clears `useCustomArrowStyles` (diagramlink.pas:863-868), so it also reverts a custom arrow size. `diagramLink_addMetaData` registers no property for it (luadiagramlink.pas:170-184); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks (LuaClass.pas:578, LuaClass.pas:494) on the published property at diagramlink.pas:111.
---@field Name string
---@field maxx integer Read-only.
---@field maxy integer Read-only.
---@field OnDblClick CECallback
---@field Tag integer
local DiagramLink = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadiagramlink.pas#L15
---@overload fun()
function DiagramLink:reset() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadiagramlink.pas#L61
---@param DiagramBlock DiagramBlock
---@return boolean
---@overload fun(DiagramBlock: DiagramBlock): boolean
function DiagramLink:hasLinkToBlock(DiagramBlock) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadiagramlink.pas#L114
---@param descriptor DiagramBlockSideDescriptor|DiagramBlock
---@overload fun(descriptor: DiagramBlockSideDescriptor|DiagramBlock)
function DiagramLink:updateSide(descriptor) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadiagramlink.pas#L124
---
--- Finds the plot point at a coordinate. The hit test is a radius, not an exact match: a point
--- counts as being at `x`,`y` when it is within the diagram config's `PlotPointSize` of it
--- (diagramlink.pas:763).
---@param x integer
---@param y integer
---@return integer index Zero-based index of the plot point at `x`,`y`, or `-1` when there is none. `TDiagramLink.getPointIndexAt` starts at `result:=-1` (diagramlink.pas:760) and `diagramLink_getPointIndexAt` pushes that integer unchanged (luadiagramlink.pas:135), so a miss is `-1` - a truthy value - and not nil.
---@overload fun(x: integer, y: integer): integer
function DiagramLink:getPointIndexAt(x, y) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadiagramlink.pas#L140
---
--- Adds a plot point at `x`,`y`.
---
--- Leaving `index` out is not the same as appending. `diagramLink_addPoint` passes `-1` to
--- `TDiagramLink.createPoint` (luadiagramlink.pas:151-156), and that value makes the point
--- place itself: the call does nothing when `x`,`y` is within `config.LineThickness*2` of an
--- existing point (diagramlink.pas:780-781), and nothing when `x`,`y` is not on any of the
--- link's segments (diagramlink.pas:786-806) - so a coordinate off the line is silently
--- dropped. Pass an explicit `index` to insert unconditionally; an index past the end is
--- clamped to the end of the list (diagramlink.pas:812-814).
---@param x integer
---@param y integer
---@param index integer? Zero-based insert position. Omit it only to drop a point onto the line itself - see above.
---@overload fun(x: integer, y: integer, index?: integer)
function DiagramLink:addPoint(x, y, index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luadiagramlink.pas#L161
---@overload fun()
function DiagramLink:removeAllPoints() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFont.pas#L95
---
--- Pascal class: `TFont`.
---@class Font : Object
---@field Size integer
---@field Name string
---@field Color integer
---@field Style string A `TFontStyles` set, read and written as its set string, e.g. `'[fsBold,fsItalic]'`. LCL published property of `TFont` (the LCL is not vendored here; `aboutunit.lfm:641` streams `Font.Style = [fsUnderline]`), reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578 - `font_addMetaData` registers no `Style` property.
---@field Height integer Font height in pixels. LCL published property of `TFont`, reached through the RTTI fallback.
---@field Quality string|integer Reads back the `TFontQuality` member name, e.g. `'fqDefault'` or `'fqCleartype'`; assigning takes that name or the matching integer. LCL published property of `TFont`, reached through the RTTI fallback.
---@field Pitch string|integer Reads back the `TFontPitch` member name, `'fpDefault'`, `'fpVariable'` or `'fpFixed'`; assigning takes that name or the matching integer. LCL published property of `TFont`, reached through the RTTI fallback.
---@field CharSet integer Windows character-set id. LCL published property of `TFont`, reached through the RTTI fallback.
---@field Orientation integer Text angle in tenths of a degree, counter-clockwise (`LOGFONT.lfOrientation`). LCL published property of `TFont`, reached through the RTTI fallback; documented at celua.txt:1841.
local Font = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFont.pas#L46
---@return integer
---@overload fun(): integer
function Font:getSize() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFont.pas#L55
---@param value integer
---@overload fun(value: integer)
function Font:setSize(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFont.pas#L65
---@return string
---@overload fun(): string
function Font:getName() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFont.pas#L74
---@param value string
---@overload fun(value: string)
function Font:setName(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFont.pas#L27
---@return integer
---@overload fun(): integer
function Font:getColor() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFont.pas#L36
---@param value integer
---@overload fun(value: integer)
function Font:setColor(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFont.pas#L84
---@param font Font
---@overload fun(font: Font)
function Font:assign(font) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGraphic.pas#L88
---
--- Pascal class: `TGraphic`.
---@class Graphic : Object
---@field Width integer
---@field Height integer
---@field Transparent boolean
local Graphic = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGraphic.pas#L17
---@return integer
---@overload fun(): integer
function Graphic:getWidth() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGraphic.pas#L26
---@param value integer
---@overload fun(value: integer)
function Graphic:setWidth(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGraphic.pas#L36
---@return integer
---@overload fun(): integer
function Graphic:getHeight() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGraphic.pas#L45
---@param value integer
---@overload fun(value: integer)
function Graphic:setHeight(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGraphic.pas#L55
---@return boolean
---@overload fun(): boolean
function Graphic:getTransparent() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGraphic.pas#L64
---@param value boolean
---@overload fun(value: boolean)
function Graphic:setTransparent(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGraphic.pas#L74
---@param filename string
---@overload fun(filename: string)
function Graphic:loadFromFile(filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGraphic.pas#L81
---@param filename string
---@overload fun(filename: string)
function Graphic:saveToFile(filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPen.pas#L54
---
--- Pascal class: `TPen`.
---@class Pen : Object
---@field Color integer
---@field Width integer
---@field Mode string|integer Raster operation the pen draws with. Reads back the `TPenMode` member name, e.g. `'pmCopy'`, `'pmMask'` or `'pmXor'`; assigning takes that name or the matching integer (LuaObject.pas:213-214, LuaObject.pas:299-308). LCL published property of `TPen` - the LCL is not vendored here and no .lfm in this repository streams a `TPen` sub-object, but Cheat Engine reads and writes it on its own canvases (addresslist.pas:2053-2054 saves it and sets `pmMask`, jvdesign/jvdesignutils.pas:240 sets `pmXor`). `pen_addMetaData` registers only `Color` and `Width` (LuaPen.pas:54-63), so it is reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494.
---@field Style string|integer Line pattern. Reads back the `TPenStyle` member name, e.g. `'psSolid'`, `'psDot'` or `'psPattern'`; assigning takes that name or the matching integer (LuaObject.pas:213-214, LuaObject.pas:299-308). LCL published property of `TPen` - the LCL is not vendored here and no .lfm in this repository streams a `TPen` sub-object, but Cheat Engine writes it on its own canvases (disassemblerviewlinesunit.pas:143 sets `psDot`, betterControls/cecustombutton.pas:519 sets `psPattern`). `pen_addMetaData` registers only `Color` and `Width` (LuaPen.pas:54-63), so it is reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494.
---@field JoinStyle string|integer How the pen joins two line segments. Reads back the `TPenJoinStyle` member name, e.g. `'pjsMiter'` or `'pjsBevel'`; assigning takes that name or the matching integer (LuaObject.pas:213-214, LuaObject.pas:299-308). LCL published property of `TPen` - the LCL is not vendored here and no .lfm in this repository streams a `TPen` sub-object, but Cheat Engine writes it on its own canvases (addresslist.pas:2083 sets `pjsMiter`, betterControls/newcheckbox.pas:182 sets `pjsBevel`). `pen_addMetaData` registers only `Color` and `Width` (LuaPen.pas:54-63), so it is reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494.
---@field EndCap string|integer How the pen finishes a line's ends. Reads back the `TPenEndCap` member name, e.g. `'pecFlat'`; assigning takes that name or the matching integer (LuaObject.pas:213-214, LuaObject.pas:299-308). LCL published property of `TPen` - the LCL is not vendored here and no .lfm in this repository streams a `TPen` sub-object, but Cheat Engine writes it on its own canvases (addresslist.pas:2084 and addresslist.pas:2121 both set `pecFlat`). `pen_addMetaData` registers only `Color` and `Width` (LuaPen.pas:54-63), so it is reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494.
local Pen = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPen.pas#L16
---@return integer
---@overload fun(): integer
function Pen:getColor() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPen.pas#L25
---@param value integer
---@return integer value The argument, echoed back: LuaPen.pas:32 sets `result:=1` without pushing anything, so Lua returns the top of the stack.
---@overload fun(value: integer): integer
function Pen:setColor(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPen.pas#L35
---@return integer
---@overload fun(): integer
function Pen:getWidth() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPen.pas#L44
---@param value integer
---@return integer value The argument, echoed back: LuaPen.pas:51 sets `result:=1` without pushing anything, so Lua returns the top of the stack.
---@overload fun(value: integer): integer
function Pen:setWidth(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPicture.pas#L189
---
--- Pascal class: `TPicture`.
---@class Picture : Object
---@field Graphic Graphic? Nil while the picture is still empty; `PNG`, `Bitmap`, `Jpeg` and `Icon` are created on demand and are never nil.
---@field PNG PNG
---@field Bitmap Bitmap
---@field Jpeg Jpeg
---@field Icon Icon
local Picture = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPicture.pas#L22
---@param filename string
---@return boolean
---@return string? errorMessage
---@overload fun(filename: string): boolean, string?
function Picture:loadFromFile(filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPicture.pas#L47
---@param filename string
---@overload fun(filename: string)
function Picture:saveToFile(filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPicture.pas#L58
---
--- Reads from the stream's CURRENT position. Cheat Engine rewinds only the flat
--- `picture_loadFromStream(picture, stream)` form, where `luaclass_getClassObject` reports
--- `paramstart=2` (LuaClass.pas:254, LuaPicture.pas:72-73); called as a method `paramstart`
--- is 1 (LuaClass.pas:236) and the position is left alone. After writing into a stream, set
--- `stream.Position=0` yourself before calling this.
---@param stream Stream Read from its current position; not rewound.
---@param ext string? File extension selecting the format, passed to `LoadFromStreamWithFileExt` (LuaPicture.pas:79). Without it plain `LoadFromStream` is used (LuaPicture.pas:83).
---@return boolean
---@return string? errorMessage
---@overload fun(stream: Stream, ext?: string): boolean, string?
function Picture:loadFromStream(stream, ext) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPicture.pas#L98
---@param sourcepicture Picture
---@overload fun(sourcepicture: Picture)
function Picture:assign(sourcepicture) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPicture.pas#L125
---
--- `picture_getGraphic` pushes `picture.Graphic` through `luaclass_newClass`, which pushes
--- nil for a nil object (`LuaClass.pas:216-217`), and Cheat Engine adds no guard. `result:=1`
--- is set unconditionally (LuaPicture.pas:131), so a picture that has not loaded anything yet
--- still returns one value and that value is nil. `getPNG`, `getBitmap`, `getJpeg` and the
--- `Icon` property differ: those TPicture getters create the graphic on demand.
---@return Graphic? graphic nil while the picture is still empty.
---@overload fun(): Graphic?
function Picture:getGraphic() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPicture.pas#L141
---@return PNG
---@overload fun(): PNG
function Picture:getPNG() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPicture.pas#L157
---@return Bitmap
---@overload fun(): Bitmap
function Picture:getBitmap() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaPicture.pas#L173
---@return Jpeg
---@overload fun(): Jpeg
function Picture:getJpeg() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRasterImage.pas#L107
---
--- Pascal class: `TrasterImage`.
---@class RasterImage : Graphic
---@field Canvas Canvas Read-only.
---@field PixelFormat integer
---@field TransparentColor integer
local RasterImage = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRasterImage.pas#L16
---@return Canvas
---@overload fun(): Canvas
function RasterImage:getCanvas() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRasterImage.pas#L25
---@return integer
---@overload fun(): integer
function RasterImage:getPixelFormat() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRasterImage.pas#L35
---@param value integer
---@overload fun(value: integer)
function RasterImage:setPixelFormat(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRasterImage.pas#L66
---@return integer
---@overload fun(): integer
function RasterImage:getTransparentColor() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRasterImage.pas#L76
---@param value integer
---@overload fun(value: integer)
function RasterImage:setTransparentColor(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRasterImage.pas#L87
---@param stream Stream
---@overload fun(stream: Stream)
function RasterImage:loadFromStream(stream) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRasterImage.pas#L97
---@param stream Stream
---@overload fun(stream: Stream)
function RasterImage:saveToStream(stream) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRegion.pas#L117
---
--- Pascal class: `TRegion`.
---@class Region : Object
local Region = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRegion.pas#L22
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
---@overload fun(x1: integer, y1: integer, x2: integer, y2: integer)
function Region:addRectangle(x1, y1, x2, y2) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaRegion.pas#L40
---
--- Each element is a two-element array, `{x, y}`: the x is read from integer key 1 and
--- the y from integer key 2 (LuaRegion.pas:90-101), so an `{x=..., y=...}` pair reads
--- back as 0,0. An element that is not a table at all aborts the whole call and no
--- polygon is added (LuaRegion.pas:102).
---@param tablewithcoordinates integer[][]
---@overload fun(tablewithcoordinates: integer[][])
function Region:addPolygon(tablewithcoordinates) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaXMPlayer.pas#L127
---
--- Pascal class: `TXMPlayer`.
---@class XMPlayer : Object
---@field IsPlaying boolean Read-only. True while a module is playing.
---@field Initialized boolean Read-only. True once the audio driver has been initialized.
local XMPlayer = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaXMPlayer.pas#L109
---@param value integer
---@overload fun(value: integer)
function XMPlayer:setVolume(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaXMPlayer.pas#L93
---@return boolean
---@overload fun(): boolean
function XMPlayer:isPlaying() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaXMPlayer.pas#L16
---@param filename string|Stream|TableFile
---@param noloop boolean?
---@overload fun(filename: string|Stream|TableFile, noloop?: boolean)
function XMPlayer:playXM(filename, noloop) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaXMPlayer.pas#L54
---@overload fun()
function XMPlayer:pause() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaXMPlayer.pas#L67
---@overload fun()
function XMPlayer:resume() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaXMPlayer.pas#L80
---@overload fun()
function XMPlayer:stop() end


---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/d3dhookUnit.pas#L284
---
--- Pascal class: `TD3DHook_RenderObject`. Cheat Engine registers no metadata function for it;
--- its properties are reached through the published-property fallback in `luaclass_index`.
---@class D3DHook_RenderObject : Object
---@field ZOrder integer
---@field Alphablend number
---@field X number
---@field Y number
---@field CenterX number
---@field CenterY number
---@field Rotation number Degrees.
---@field Visible boolean
local D3DHook_RenderObject = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/d3dhookUnit.pas#L347
---
--- Pascal class: `TD3DHook_Sprite`.
---@class D3DHook_Sprite : D3DHook_RenderObject
---@field Width integer
---@field Height integer
---@field Texture D3DHook_Texture
local D3DHook_Sprite = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/d3dhookUnit.pas#L324
---
--- Pascal class: `TD3Dhook_TextContainer`.
---@class D3DHook_TextContainer : D3DHook_RenderObject
---@field FontMap D3DHook_FontMap
---@field Text string
local D3DHook_TextContainer = {}