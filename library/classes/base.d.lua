---@meta
---
--- classes / base
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaObject.pas#L123
---
--- Pascal class: `TObject`.
---@class Object
---@field ClassName string Read-only.
local Object = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaObject.pas#L91
---@return string
---@overload fun(): string
function Object:getClassName() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaObject.pas#L99
---@param fieldname string
---@return integer
---@overload fun(fieldname: string): integer
function Object:fieldAddress(fieldname) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaObject.pas#L107
---@param methodname string
---@return integer
---@overload fun(methodname: string): integer
function Object:methodAddress(methodname) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaObject.pas#L115
---@param address integer
---@return string
---@overload fun(address: integer): string
function Object:methodName(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaObject.pas#L27
---@overload fun()
function Object:destroy() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaComponent.pas#L98
---
--- Pascal class: `TComponent`.
---@class Component : Object
---@field ComponentCount integer Read-only.
---@field Name string
---@field Tag integer
---@field Owner Component? Read-only. Nil when the component has no owner.
---@field Component table<integer, Component?> Read-only. Indexed from 0; nil when the component has no child components at all.
---@field ComponentByName table<string, Component?> Read-only.
local Component = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaComponent.pas#L18
---@return integer
---@overload fun(): integer
function Component:getComponentCount() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaComponent.pas#L40
---
--- `index` is 0-based.
---@param index integer
---@return Component? # nil when the component has no child components at all.
---@overload fun(index: integer): Component?
function Component:getComponent(index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaComponent.pas#L26
---@param name string
---@return Component|nil
---@overload fun(name: string): Component|nil
function Component:findComponentByName(name) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaComponent.pas#L54
---@return string
---@overload fun(): string
function Component:getName() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaComponent.pas#L62
---@param value string
---@overload fun(value: string)
function Component:setName(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaComponent.pas#L72
---@return integer
---@overload fun(): integer
function Component:getTag() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaComponent.pas#L80
---@param value integer
---@overload fun(value: integer)
function Component:setTag(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaComponent.pas#L90
---@return Component? # nil when the component has no owner.
---@overload fun(): Component?
function Component:getOwner() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L510
---
--- Pascal class: `TControl`.
---
--- `control_addMetaData` registers no property for `Caption`, `Top`, `Left`, `Width`,
--- `Height`, `Align`, `Enabled`, `Visible` or `Color`: those
--- `luaclass_addPropertyToTable` calls are commented out (LuaControl.pas:555-563). They
--- are published Pascal properties of the concrete control, reached through the
--- `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578, which
--- is why `Align` reads back as a `TAlign` member name instead of an integer.
---@class Control : Component
---@field Caption string
---@field Top integer
---@field Left integer
---@field Width integer
---@field Height integer
---@field Align string|integer Reads back the `TAlign` member name, e.g. `'alNone'`; assigning takes either that name or the matching integer. `getAlign()`/`setAlign()` use integers.
---@field Enabled boolean
---@field Visible boolean
---@field Color integer
---@field RGBColor integer Reads the colour resolved against the parent; assigning writes plain `Color` - the property's setter is `control_setColor` (LuaControl.pas:565).
---@field ClientWidth integer
---@field ClientHeight integer
---@field Parent WinControl? Nil when the control has no parent.
---@field PopupMenu Menu? Nil when the control has no popup menu assigned.
---@field Font Font
---@field OnClick CECallback
---@field OnChangeBounds CECallback `function(sender)`, called when the control's size or position changes. LCL published property of the control - the LCL is not vendored here, but MainUnit.lfm:300 streams `OnChangeBounds = gbScanOptionsChangeBounds` on a `TGroupBox` and MainUnit.pas:11355/11357 assign it, and celua.txt:893 documents it as a `Control` property. Reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578 - `control_addMetaData` registers no property for it.
---@field OnMouseMove CECallback `function(sender, x, y)` (LuaCaller.pas:3496). LCL published property of the concrete control - the LCL is not vendored here, but AdvancedOptionsUnit.lfm:89 streams `OnMouseMove = PausebuttonMouseMove` on the `TSpeedButton` declared at AdvancedOptionsUnit.lfm:58 and frmTracerUnit.lfm:540 streams it on the `TTreeView` declared at frmTracerUnit.lfm:524. `control_addMetaData` registers no property for it (LuaControl.pas:510-575); `TMouseMoveEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3496), so a Lua function can be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494, and read back through the `lua_getProperty` fallback at LuaClass.pas:578.
---@field ShowHint boolean Show `Hint` as a tooltip when the mouse rests on the control. LCL published property of the concrete control - the LCL is not vendored here, but FoundCodeUnit.lfm:108 streams `ShowHint = True` on the `TButton` declared at FoundCodeUnit.lfm:85 and MainUnit.lfm:138 streams it on the `TLabel` declared at MainUnit.lfm:125. `control_addMetaData` registers no property for it (LuaControl.pas:510-575); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494.
---@field Hint string Tooltip text, shown when `ShowHint` is true. LCL published property of the concrete control - the LCL is not vendored here, but FoundCodeUnit.lfm:93 streams it on the `TButton` declared at FoundCodeUnit.lfm:85 and MainUnit.lfm:131 streams it on the `TLabel` declared at MainUnit.lfm:125. `control_addMetaData` registers no property for it (LuaControl.pas:510-575); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494.
---@field OnDblClick CECallback `function(sender)`. LCL published property of the concrete control - the LCL is not vendored here, but MainUnit.lfm:122 streams `OnDblClick = ProcessLabelDblClick` on the `TLabel` declared at MainUnit.lfm:112 and ProcessWindowUnit.lfm:172 streams it on the `TListBox` declared at ProcessWindowUnit.lfm:163. `control_addMetaData` registers no property for it (LuaControl.pas:510-575); `TNotifyEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3491), so a Lua function can be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494, and read back through the `lua_getProperty` fallback at LuaClass.pas:578.
---@field Cursor integer Mouse cursor shown over the control, one of the `cr*` constants (`crDefault`, `crHandPoint`, ...). LCL published property of the concrete control - the LCL is not vendored here, but MemoryBrowserFormUnit.lfm:303 streams `Cursor = crHandPoint` on the `TLabel` declared at MemoryBrowserFormUnit.lfm:302 and frmStructures2ElementInfoUnit.lfm:279 streams it on the `TPanel` declared at frmStructures2ElementInfoUnit.lfm:273. `control_addMetaData` registers no property for it (LuaControl.pas:510-575); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494.
---@field OnMouseDown CECallback `function(sender, button, x, y)` (LuaCaller.pas:3495). LCL published property of the concrete control - the LCL is not vendored here, but MainUnit.lfm:123 streams `OnMouseDown = ProcessLabelMouseDown` on the `TLabel` declared at MainUnit.lfm:112 and MainUnit.lfm:1475 streams it on the `TCheckBox` declared at MainUnit.lfm:1465. `control_addMetaData` registers no property for it (LuaControl.pas:510-575); `TMouseEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3495), so a Lua function can be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494, and read back through the `lua_getProperty` fallback at LuaClass.pas:578.
---@field ParentFont boolean When true the control takes its font from its parent. Cheat Engine's own code clears it immediately before assigning a font - hexviewunit.pas:3315-3316 sets `ParentFont:=False` then `Font.Assign(fHexFont)`, and disassemblerviewunit.pas:1435-1439 does the same before four `Font.*` assignments - so clear it first if a font change has to stick. LCL published property of the concrete control - the LCL is not vendored here, but FoundCodeUnit.lfm:50 streams `ParentFont = False` on the `TPanel` declared at FoundCodeUnit.lfm:40 and hexviewunit.pas:3294 assigns `statusbar.ParentFont:=true` on the `TStatusbar` declared at hexviewunit.pas:228. `control_addMetaData` registers no property for it (LuaControl.pas:510-575); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494 (a tkBool property is read at LuaObject.pas:206 and written at LuaObject.pas:289).
---@field AutoSize boolean When true the control resizes itself to fit its content. LCL published property of the concrete control - the LCL is not vendored here, but FindWindowUnit.lfm:26 streams `AutoSize = True` on the `TPanel` declared at FindWindowUnit.lfm:16, FoundCodeUnit.lfm:46 does the same on the `TPanel` declared at FoundCodeUnit.lfm:40, and FindWindowUnit.pas:192 assigns `btnok.AutoSize:=true` on the `TButton` declared at FindWindowUnit.pas:29. `control_addMetaData` registers no property for it (LuaControl.pas:510-575); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494 (a tkBool property is read at LuaObject.pas:206 and written at LuaObject.pas:289).
---@field Anchors string A `TAnchors` set, read and written as its set string, e.g. `'[akTop,akLeft]'` (a tkSet property is read with `GetSetProp(..., true)` at LuaObject.pas:210 and written with `SetSetProp` from `Lua_ToString(L, 3)` at LuaObject.pas:296/265). LCL published property of the concrete control - the LCL is not vendored here, but FindWindowUnit.lfm:25 streams `Anchors = [akTop, akLeft, akRight]` on the `TPanel` declared at FindWindowUnit.lfm:16, OpenSave.pas:852 assigns `mainform.lblSigned.Anchors:=[akTop,akLeft]` on the `TLabel` declared at MainUnit.pas:339, and formAddressChangeUnit.pas:670 assigns it on the `TSpeedButton` declared at formAddressChangeUnit.pas:44. `control_addMetaData` registers no property for it (LuaControl.pas:510-575); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494.
---@field OnMouseUp CECallback `function(sender, button, x, y)` (LuaCaller.pas:3495). LCL published property of the concrete control - the LCL is not vendored here and no .lfm in this repository streams it, but Cheat Engine assigns it in code: formAddressChangeUnit.pas:659 sets `sbDecrease.OnMouseUp:=IncreaseDecreaseUp` on the `TSpeedButton` declared at formAddressChangeUnit.pas:44, whose handler at formAddressChangeUnit.pas:350 has the `(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer)` signature of a `TMouseEvent`, and frmMemoryViewExUnit.pas:391 sets it on the `TMemDisplay` declared at frmMemoryViewExUnit.pas:135, between the `OnMouseDown` and `OnMouseMove` assignments at frmMemoryViewExUnit.pas:390 and frmMemoryViewExUnit.pas:392. `control_addMetaData` registers no property for it (LuaControl.pas:510-575); `TMouseEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3495), so a Lua function can be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494, and read back through the `lua_getProperty` fallback at LuaClass.pas:578.
---@field ParentColor boolean When true the control takes its `Color` from its parent, so an assignment to `Color` has no visible effect until this is cleared; the counterpart of `ParentFont`. Cheat Engine uses it that way itself - frmsyntaxhighlightereditor.pas:171 assigns `lastSelectedAttrib.color` when a real colour was picked and frmsyntaxhighlightereditor.pas:173 sets `lastSelectedAttrib.ParentColor:=true` to hand the colour back to the parent otherwise, on the `TLabel` declared at frmsyntaxhighlightereditor.pas:41. LCL published property of the concrete control - the LCL is not vendored here, but MainUnit.lfm:756 streams `ParentColor = False` on the `TPanel` declared at MainUnit.lfm:746, right after `Color = clRed` at MainUnit.lfm:755, and frmsyntaxhighlightereditor.lfm:60 streams it on the `TLabel` declared at frmsyntaxhighlightereditor.lfm:50. `control_addMetaData` registers no property for it (LuaControl.pas:510-575); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494 (a tkBool property is read at LuaObject.pas:206 and written at LuaObject.pas:289).
---@field DragMode string|integer Whether the control begins a drag by itself on mouse-down (`'dmAutomatic'`) or only when code starts one (`'dmManual'`). Reads back the `TDragMode` member name; assigning takes that name or the matching integer. LCL published property of the concrete control - the LCL is not vendored here, but MainUnit.lfm:1667 streams `DragMode = dmAutomatic` on the `TListView` declared at MainUnit.lfm:1641 and AdvancedOptionsUnit.lfm:130 does the same on the `TListView` declared at AdvancedOptionsUnit.lfm:109. `control_addMetaData` registers no property for it (LuaControl.pas:510-575); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494 - `lua_getProperty` has no tkEnumeration arm so it falls into the default branch at LuaObject.pas:213-214 and reads back as the member name, while assigning goes through the tkEnumeration arm at LuaObject.pas:299-307.
---@field OnResize CECallback Called as `f(sender)` after the control's size has changed. LCL published property of the concrete control - the LCL is not vendored here, but AdvancedOptionsUnit.lfm:144 streams `OnResize = lvCodelistResize` on the `TListView` declared at AdvancedOptionsUnit.lfm:109, whose handler at AdvancedOptionsUnit.pas:89 has the `(Sender: TObject)` signature of a `TNotifyEvent`, and CommentsUnit.lfm:29 streams `OnResize = Panel1Resize` on the `TPanel` declared at CommentsUnit.lfm:18 (handler CommentsUnit.pas:30); Cheat Engine also assigns it in code at StructuresFrm2.pas:3650 and PointerscannerSettingsFrm.pas:1161. `control_addMetaData` registers no property for it (LuaControl.pas:510-575); `TNotifyEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3491), so a Lua function can be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494 (tkMethod is written at LuaObject.pas:297), and read back through the `lua_getProperty` fallback at LuaClass.pas:578.
---@field ParentShowHint boolean When true the control takes `ShowHint` from its parent, so assigning `ShowHint` has no visible effect until this is cleared; the counterpart of `ParentFont` and `ParentColor`. Cheat Engine uses it that way itself - MainUnit.pas:10647 sets `cancelbutton.ParentShowHint := False` immediately before `cancelbutton.ShowHint := True` at MainUnit.pas:10648, on the `TButton` declared at MainUnit.pas:788. LCL published property of the concrete control - the LCL is not vendored here, but AdvancedOptionsUnit.lfm:92 streams `ParentShowHint = False` on the `TSpeedButton` declared at AdvancedOptionsUnit.lfm:58, one line after `ShowHint = True` at AdvancedOptionsUnit.lfm:91, and DissectCodeunit.lfm:23 streams it on the `TProgressBar` declared at DissectCodeunit.lfm:17. `control_addMetaData` registers no property for it (LuaControl.pas:510-575); reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494 (a tkBool property is read at LuaObject.pas:206 and written at LuaObject.pas:289).
---@field BorderSpacing Object Space kept around the control when it is anchored or aligned - its own `Left`, `Top`, `Right`, `Bottom` and `Around`; set those sub-properties rather than replacing it, e.g. `control.BorderSpacing.Top=4`. Comes back as a plain `Object`: `TControlBorderSpacing` is never passed to `luaclass_register` and neither is `TPersistent`, so `luaclass_newClass` resolves it up to the nearest registered ancestor `TObject` (`findBestClassForObject`, LuaClass.pas:136; LuaObject.pas:511), and its own members are then read and written through the same RTTI fallback. LCL published property of the concrete control - the LCL is not vendored here, but MainUnit.lfm:1652 streams `BorderSpacing.Bottom = 5` on the `TListView` declared at MainUnit.lfm:1641, FoundCodeUnit.lfm:61-62 stream `BorderSpacing.Top` / `.Bottom` on the `TButton` declared at FoundCodeUnit.lfm:52, and StructuresFrm2.pas:3510-3511 assign `edtAddress.BorderSpacing.Bottom` / `.Right` on the `TEdit` declared at StructuresFrm2.pas:292. `control_addMetaData` registers no property for it (LuaControl.pas:510-575); reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578, whose tkClass arm is LuaObject.pas:208.
---@field Constraints SizeConstraints Minimum and maximum size the control may be sized to; set its `MinWidth` / `MinHeight` / `MaxWidth` / `MaxHeight` rather than replacing the object. LCL published property of the concrete control - the LCL is not vendored here, but MainUnit.lfm:1666 streams `Constraints.MinWidth = 1` on the `TListView` declared at MainUnit.lfm:1641, FoundCodeUnit.lfm:65-66 stream `Constraints.MinHeight` / `.MinWidth` on the `TButton` declared at FoundCodeUnit.lfm:52, TypePopup.pas:365 assigns `lengthEdit.Constraints.MinWidth` on the `TEdit` declared at TypePopup.pas:25, and ProcessWindowUnit.pas:1196 assigns `OKButton.Constraints.MinHeight`. `control_addMetaData` registers no property for it (LuaControl.pas:510-575); reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578, whose tkClass arm pushes the object with `luaclass_newClass` at LuaObject.pas:208 (the `TSizeConstraints` still gets a metatable because LuaObject.pas:511 registers `TObject`).
---@field OnMouseLeave CECallback Called as `f(sender)` when the mouse pointer leaves the control. LCL published property of the concrete control - the LCL is not vendored here, but `TCECustomButton` republishes `property OnMouseLeave;` at betterControls/cecustombutton.pas:150, in the published block that opens at betterControls/cecustombutton.pas:98 on the class declared at betterControls/cecustombutton.pas:15 and bound to Lua by `luaclass_register(TCECustomButton, cecustombutton_addMetaData)` at luacecustombutton.pas:55; scrollTreeView.pas:111 republishes it in the published block that opens at scrollTreeView.pas:32, on the `TTreeView` descendant declared at scrollTreeView.pas:20; and frmsourcedisplayunit.lfm:30 streams `OnMouseLeave = seSourceMouseLeave` on the `TSynEdit` declared at frmsourcedisplayunit.pas:31, whose handler at frmsourcedisplayunit.pas:51 has the `(Sender: TObject)` signature of a `TNotifyEvent`. `control_addMetaData` registers no property for it (LuaControl.pas:510-574); `TNotifyEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3491), so a Lua function can be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494 (tkMethod is written at LuaObject.pas:297), and read back through the `lua_getProperty` fallback at LuaClass.pas:578 (tkMethod at LuaObject.pas:209).
---@field OnMouseEnter CECallback Called as `f(sender)` when the mouse pointer enters the control. LCL published property of the concrete control - the LCL is not vendored here, but `TCECustomButton` publishes `property OnMouseEnter;` at betterControls/cecustombutton.pas:149, in the published block that starts at betterControls/cecustombutton.pas:98 on the class declared at betterControls/cecustombutton.pas:15 and bound to Lua by `luaclass_register(TCECustomButton, cecustombutton_addMetaData)` at luacecustombutton.pas:55; scrollTreeView.pas:110 republishes it in the published block that starts at scrollTreeView.pas:32, on the `TTreeView` descendant declared at scrollTreeView.pas:20; and frmsourcedisplayunit.lfm:29 streams `OnMouseEnter = seSourceMouseEnter` on the `TSynEdit` declared at frmsourcedisplayunit.pas:31, whose handler at frmsourcedisplayunit.pas:50 has the `(Sender: TObject)` signature of a `TNotifyEvent`. `control_addMetaData` registers no property for it (LuaControl.pas:510-574); `TNotifyEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3491), so a Lua function can be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494 (tkMethod is written at LuaObject.pas:297), and read back through the `lua_getProperty` fallback at LuaClass.pas:578 (tkMethod at LuaObject.pas:209).
local Control = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L49
---@param value string
---@overload fun(value: string)
function Control:setCaption(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L60
---@return string
---@overload fun(): string
function Control:getCaption() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L70
---@param value integer
---@overload fun(value: integer)
function Control:setLeft(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L81
---@return integer
---@overload fun(): integer
function Control:getLeft() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L90
---@param value integer
---@overload fun(value: integer)
function Control:setTop(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L101
---@return integer
---@overload fun(): integer
function Control:getTop() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L110
---@param x integer
---@param y integer
---@overload fun(x: integer, y: integer)
function Control:setPosition(x, y) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L125
---@return integer
---@return integer
---@overload fun(): integer, integer
function Control:getPosition() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L138
---@param value integer
---@overload fun(value: integer)
function Control:setWidth(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L149
---@return integer
---@overload fun(): integer
function Control:getWidth() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L159
---@param value integer
---@overload fun(value: integer)
function Control:setHeight(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L170
---@return integer
---@overload fun(): integer
function Control:getHeight() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L221
---@param width integer
---@param height integer
---@overload fun(width: integer, height: integer)
function Control:setSize(width, height) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L236
---@return integer
---@return integer
---@overload fun(): integer, integer
function Control:getSize() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L247
---@param value integer
---@overload fun(value: integer)
function Control:setAlign(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L259
---@return integer
---@overload fun(): integer
function Control:getAlign() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L406
---@param value CECallback? nil clears the handler.
---@overload fun(value?: CECallback)
function Control:setOnClick(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L387
---@overload fun()
function Control:doClick() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L268
---@param value boolean
---@overload fun(value: boolean)
function Control:setEnabled(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L279
---@return boolean
---@overload fun(): boolean
function Control:getEnabled() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L289
---@param value boolean
---@overload fun(value: boolean)
function Control:setVisible(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L300
---@return boolean
---@overload fun(): boolean
function Control:getVisible() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L309
---@param value integer
---@overload fun(value: integer)
function Control:setColor(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L320
---@return integer
---@overload fun(): integer
function Control:getColor() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L329
---@return integer
---@overload fun(): integer
function Control:getRGBColor() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L339
---@param value WinControl
---@overload fun(value: WinControl)
function Control:setParent(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L350
---@return WinControl? # nil when the control has no parent.
---@overload fun(): WinControl?
function Control:getParent() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L359
---@param value Menu
---@overload fun(value: Menu)
function Control:setPopupMenu(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L370
---@return Menu? # nil when the control has no popup menu assigned.
---@overload fun(): Menu?
function Control:getPopupMenu() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L29
---@return Font
---@overload fun(): Font
function Control:getFont() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L17
---@overload fun()
function Control:repaint() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L23
---@overload fun()
function Control:update() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L445
---@overload fun()
function Control:bringToFront() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L454
---@overload fun()
function Control:sendToBack() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L463
---@param x integer
---@param y integer
---@return integer
---@return integer
---@overload fun(x: integer, y: integer): integer, integer
function Control:screenToClient(x, y) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L482
---@param x integer
---@param y integer
---@return integer
---@return integer
---@overload fun(x: integer, y: integer): integer, integer
function Control:clientToScreen(x, y) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L501
---@overload fun()
function Control:refresh() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaWinControl.pas#L253
---
--- Pascal class: `TWinControl`.
---@class WinControl : Control
---@field DoubleBuffered boolean
---@field ControlCount integer Read-only.
---@field OnEnter CECallback
---@field OnExit CECallback
---@field Handle integer Read-only.
---@field Control table<integer, Control> Read-only. Indexed from 0, like the LCL `Controls` array it forwards to (LuaWinControl.pas:55); the LCL is not vendored here, but Cheat Engine iterates that range itself, e.g. pointerscannerfrm.pas:3508.
---@field TabStop boolean Whether the control can be reached with the Tab key. LCL published property of the concrete `TWinControl` descendant - the LCL is not vendored here, but Cheat Engine sets it itself at disassemblerviewunit.pas:1384, inside the `TDisassemblerview` constructor that starts at disassemblerviewunit.pas:1344, and at betterControls/cecustombutton.pas:587, inside the `TCECustomButton` constructor that starts at betterControls/cecustombutton.pas:560. ceguicomponents.pas:229 and ceguicomponents.pas:292 transcribe `property TabStop;` in the published lists it keeps for the LCL controls it wraps (the commented-out blocks that follow `type TCETrackBar=class(TTrackBar);` at ceguicomponents.pas:180 and `type TCEListBox=class(TListBox);` at ceguicomponents.pas:235, and ceguicomponents.pas:527 has it `default True` for `TCheckBox`), and Changeoffsetunit.lfm:20 streams `TabStop = False` on the `TTabControl` declared at Changeoffsetunit.lfm:15. `wincontrol_addMetaData` registers no property for it (LuaWinControl.pas:253-273), so it is reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494 (a tkBool property is read at LuaObject.pas:206 and written at LuaObject.pas:289).
---@field TabOrder integer Position of this control in its parent's tab order; -1 keeps it out of the tab cycle. LCL published property of the concrete `TWinControl` descendant - the LCL is not vendored here, but Cheat Engine both reads and writes it: formAddressChangeUnit.pas:1047 sets its own `taborder` from `owner.cbPointer.TabOrder+1`, and formAddressChangeUnit.pas:551 assigns `edtOffset.taborder`, `edtOffset` being the `TEdit` declared at formAddressChangeUnit.pas:43. ceguicomponents.pas:228 and ceguicomponents.pas:291 transcribe `property TabOrder;` in the published lists it keeps for the LCL controls it wraps (the commented-out blocks that follow `type TCETrackBar=class(TTrackBar);` at ceguicomponents.pas:180 and `type TCEListBox=class(TListBox);` at ceguicomponents.pas:235), and Changeoffsetunit.lfm:40 streams `TabOrder = 0` on the `TCheckBox` declared at Changeoffsetunit.lfm:30. `wincontrol_addMetaData` registers no property for it (LuaWinControl.pas:253-273), so it is reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494, which handle a `tkInteger` property at LuaObject.pas:205 and LuaObject.pas:274-286.
local WinControl = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaWinControl.pas#L40
---@return integer
---@overload fun(): integer
function WinControl:getControlCount() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaWinControl.pas#L46
---@param index integer 0-based, as in the LCL `Controls` array it forwards to (LuaWinControl.pas:55): valid values run from 0 to `getControlCount()-1`. The LCL is not vendored here; Cheat Engine's own code iterates that range, e.g. pointerscannerfrm.pas:3508.
---@return Control
---@overload fun(index: integer): Control
function WinControl:getControl(index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaWinControl.pas#L63
---@param x integer
---@param y integer
---@return Control? # nil when no control sits at that point.
---@overload fun(x: integer, y: integer): Control?
function WinControl:getControlAtPos(x, y) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaWinControl.pas#L91
---@param value CECallback? nil clears the handler.
---@overload fun(value?: CECallback)
function WinControl:setOnEnter(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaWinControl.pas#L137
---@param value CECallback? nil clears the handler.
---@overload fun(value?: CECallback)
function WinControl:setOnExit(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaWinControl.pas#L174
---@return boolean
---@overload fun(): boolean
function WinControl:canFocus() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaWinControl.pas#L183
---@return boolean
---@overload fun(): boolean
function WinControl:focused() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaWinControl.pas#L192
---@overload fun()
function WinControl:setFocus() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaWinControl.pas#L201
---@param value Bitmap|Region Anything else is silently ignored.
---@overload fun(value: Bitmap|Region)
function WinControl:setShape(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaWinControl.pas#L221
---
--- Windows only; other builds return nothing.
---@param key integer
---@param alpha integer
---@param flags integer
---@return boolean? success
---@overload fun(key: integer, alpha: integer, flags: integer): boolean?
function WinControl:setLayeredAttributes(key, alpha, flags) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luaapplication.pas#L107
---
--- Pascal class: `Tapplication`.
---@class Application : Object
---@field Title string
---@field Icon Icon
---@field ExeName string Read-only.
---@field MainFormOnTaskBar boolean Inverted relative to the LCL `TApplication.MainFormOnTaskBar` it forwards to: the getter pushes `not app.MainFormOnTaskBar` (luaapplication.pas:58, commented "bug in laz 2.0.6, it's inverted") and the setter assigns `not lua_toboolean(L,1)` (luaapplication.pas:70). A value written from Lua reads back unchanged, but it is the negation of what the LCL property holds, so assigning `true` here takes the main form off the taskbar.
local Application = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luaapplication.pas#L18
---@overload fun()
function Application:bringToFront() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luaapplication.pas#L24
---@overload fun()
function Application:processMessages() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luaapplication.pas#L30
---@overload fun()
function Application:terminate() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/luaapplication.pas#L36
---@overload fun()
function Application:minimize() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCustomControl.pas#L57
---
--- Pascal class: `TCustomControl`.
---@class CustomControl : WinControl
---@field Canvas Canvas Read-only.
---@field OnPaint CECallback
local CustomControl = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCustomControl.pas#L18
---@return Canvas
---@overload fun(): Canvas
function CustomControl:getCanvas() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCollection.pas#L62
---
--- Pascal class: `Tcollection`.
---@class Collection : Object
---@field Count integer Read-only.
---@field Items table<integer, CollectionItem> Read-only. Indexed from 0 through `Count-1`: `collection_getItem` passes the Lua index straight to `TCollection.Items` (LuaCollection.pas:55) with no adjustment, and Cheat Engine indexes that array the same way (StructuresFrm2.pas:7288 reads `Sections.Items[Sections.Count-1]`, FoundCodeUnit.pas:1297 reads `Columns[0]`).
---@field [integer] CollectionItem Read-only. `collection[i]` is the same as `collection.Items[i]` (default array property).
local Collection = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCollection.pas#L18
---@overload fun()
function Collection:clear() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCollection.pas#L27
---@return integer
---@overload fun(): integer
function Collection:getCount() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCollection.pas#L36
---@param index integer
---@overload fun(index: integer)
function Collection:delete(index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCollectionItem.pas#L62
---
--- Pascal class: `TCollectionItem`.
---@class CollectionItem : Object
---@field ID integer Read-only.
---@field Index integer
---@field DisplayName string
local CollectionItem = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCollectionItem.pas#L18
---@return integer
---@overload fun(): integer
function CollectionItem:getID() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCollectionItem.pas#L26
---@return integer
---@overload fun(): integer
function CollectionItem:getIndex() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCollectionItem.pas#L34
---@param value integer
---@overload fun(value: integer)
function CollectionItem:setIndex(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCollectionItem.pas#L44
---@return string
---@overload fun(): string
function CollectionItem:getDisplayName() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCollectionItem.pas#L52
---@param value string
---@overload fun(value: string)
function CollectionItem:setDisplayName(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGraphicControl.pas#L31
---
--- Pascal class: `TGraphicControl`.
---@class GraphicControl : Control
---@field Canvas Canvas Read-only.
local GraphicControl = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGraphicControl.pas#L17
---@return Canvas
---@overload fun(): Canvas
function GraphicControl:getCanvas() end
