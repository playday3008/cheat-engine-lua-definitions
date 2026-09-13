---@meta
---
--- legacy / base
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCollection.pas#L18
---
--- Pre-6.3 spelling of `Collection:clear()`.
---@deprecated Use `Collection:clear()`.
---@param collection Collection
function collection_clear(collection) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCollection.pas#L36
---
--- Pre-6.3 spelling of `Collection:delete()`.
---@deprecated Use `Collection:delete()`.
---@param collection Collection
---@param index integer
function collection_delete(collection, index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCollection.pas#L27
---
--- Pre-6.3 spelling of `Collection:getCount()`.
---@deprecated Use `Collection:getCount()`.
---@param collection Collection
---@return integer
function collection_getCount(collection) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaComponent.pas#L26
---
--- Pre-6.3 spelling of `Component:findComponentByName()`.
---@deprecated Use `Component:findComponentByName()`.
---@param component Component
---@param name string
---@return Component? # nil when no child component has that name.
function component_findComponentByName(component, name) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaComponent.pas#L40
---
--- Pre-6.3 spelling of `Component:getComponent()`. `index` is 0-based.
---@deprecated Use `Component:getComponent()`.
---@param component Component
---@param index integer
---@return Component? # nil when the component has no child components at all.
function component_getComponent(component, index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaComponent.pas#L18
---
--- Pre-6.3 spelling of `Component:getComponentCount()`.
---@deprecated Use `Component:getComponentCount()`.
---@param component Component
---@return integer
function component_getComponentCount(component) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaComponent.pas#L54
---
--- Pre-6.3 spelling of `Component:getName()`.
---@deprecated Use `Component:getName()`.
---@param component Component
---@return string
function component_getName(component) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaComponent.pas#L90
---
--- Pre-6.3 spelling of `Component:getOwner()`.
---@deprecated Use `Component:getOwner()`.
---@param component Component
---@return Component? # nil when the component has no owner.
function component_getOwner(component) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaComponent.pas#L72
---
--- Pre-6.3 spelling of `Component:getTag()`.
---@deprecated Use `Component:getTag()`.
---@param component Component
---@return integer
function component_getTag(component) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaComponent.pas#L62
---
--- Pre-6.3 spelling of `Component:setName()`.
---@deprecated Use `Component:setName()`.
---@param component Component
---@param value string
function component_setName(component, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaComponent.pas#L80
---
--- Pre-6.3 spelling of `Component:setTag()`.
---@deprecated Use `Component:setTag()`.
---@param component Component
---@param value integer
function component_setTag(component, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L387
---
--- Pre-6.3 spelling of `Control:doClick()`.
---@deprecated Use `Control:doClick()`.
---@param control Control
function control_doClick(control) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L259
---
--- Pre-6.3 spelling of `Control:getAlign()`.
---@deprecated Use `Control:getAlign()`.
---@param control Control
---@return integer
function control_getAlign(control) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L60
---
--- Pre-6.3 spelling of `Control:getCaption()`.
---@deprecated Use `Control:getCaption()`.
---@param control Control
---@return string
function control_getCaption(control) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L320
---
--- Pre-6.3 spelling of `Control:getColor()`.
---@deprecated Use `Control:getColor()`.
---@param control Control
---@return integer
function control_getColor(control) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L279
---
--- Pre-6.3 spelling of `Control:getEnabled()`.
---@deprecated Use `Control:getEnabled()`.
---@param control Control
---@return boolean
function control_getEnabled(control) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L29
---
--- Pre-6.3 spelling of `Control:getFont()`.
---@deprecated Use `Control:getFont()`.
---@param control Control
---@return Font
function control_getFont(control) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L350
---
--- Pre-6.3 spelling of `Control:getParent()`.
---@deprecated Use `Control:getParent()`.
---@param control Control
---@return WinControl? # nil when the control has no parent.
function control_getParent(control) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L370
---
--- Pre-6.3 spelling of `Control:getPopupMenu()`, broken in this flat form. With the control
--- itself on the stack `lua_getProperty` sees three values instead of two, does nothing, and
--- the function returns the key it had pushed, so the result is always the string
--- `'PopupMenu'` and never the menu. Use the class method, which works.
---@deprecated Use `Control:getPopupMenu()`.
---@param control Control
---@return string # always the literal `'PopupMenu'`; the flat form never returns the menu.
function control_getPopupMenu(control) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L125
---
--- Pre-6.3 spelling of `Control:getPosition()`.
---@deprecated Use `Control:getPosition()`.
---@param control Control
---@return integer
---@return integer
function control_getPosition(control) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L236
---
--- Pre-6.3 spelling of `Control:getSize()`.
---@deprecated Use `Control:getSize()`.
---@param control Control
---@return integer
---@return integer
function control_getSize(control) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L300
---
--- Pre-6.3 spelling of `Control:getVisible()`.
---@deprecated Use `Control:getVisible()`.
---@param control Control
---@return boolean
function control_getVisible(control) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L406
---
--- Pre-6.3 spelling of `Control:setOnClick()`.
---@deprecated Use `Control:setOnClick()`.
---@param control Control
---@param value CECallback|string
function control_onClick(control, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L247
---
--- Pre-6.3 spelling of `Control:setAlign()`.
---@deprecated Use `Control:setAlign()`.
---@param control Control
---@param value integer
function control_setAlign(control, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L49
---
--- Pre-6.3 spelling of `Control:setCaption()`.
---@deprecated Use `Control:setCaption()`.
---@param control Control
---@param value string
function control_setCaption(control, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L309
---
--- Pre-6.3 spelling of `Control:setColor()`.
---@deprecated Use `Control:setColor()`.
---@param control Control
---@param value integer
function control_setColor(control, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L268
---
--- Pre-6.3 spelling of `Control:setEnabled()`.
---@deprecated Use `Control:setEnabled()`.
---@param control Control
---@param value boolean
function control_setEnabled(control, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L339
---
--- Pre-6.3 spelling of `Control:setParent()`.
---@deprecated Use `Control:setParent()`.
---@param control Control
---@param value WinControl
function control_setParent(control, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L359
---
--- Pre-6.3 spelling of `Control:setPopupMenu()`.
---@deprecated Use `Control:setPopupMenu()`.
---@param control Control
---@param value Menu
function control_setPopupMenu(control, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L110
---
--- Pre-6.3 spelling of `Control:setPosition()`.
---@deprecated Use `Control:setPosition()`.
---@param control Control
---@param x integer
---@param y integer
function control_setPosition(control, x, y) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L221
---
--- Pre-6.3 spelling of `Control:setSize()`.
---@deprecated Use `Control:setSize()`.
---@param control Control
---@param width integer
---@param height integer
function control_setSize(control, width, height) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaControl.pas#L289
---
--- Pre-6.3 spelling of `Control:setVisible()`.
---@deprecated Use `Control:setVisible()`.
---@param control Control
---@param value boolean
function control_setVisible(control, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCustomControl.pas#L18
---
--- Pre-6.3 spelling of `CustomControl:getCanvas()`.
---@deprecated Use `CustomControl:getCanvas()`.
---@param customcontrol CustomControl
---@return Canvas
function customControl_getCanvas(customcontrol) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCustomControl.pas#L18
---
--- Pre-6.3 spelling of `CustomControl:getCanvas()`.
---@deprecated Use `CustomControl:getCanvas()`.
---@param customcontrol CustomControl
---@return Canvas
function customcontrol_getCanvas(customcontrol) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGraphicControl.pas#L17
---
--- Pre-6.3 spelling of `GraphicControl:getCanvas()`.
---@deprecated Use `GraphicControl:getCanvas()`.
---@param graphiccontrol GraphicControl
---@return Canvas
function graphicControl_getCanvas(graphiccontrol) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaGraphicControl.pas#L17
---
--- Pre-6.3 spelling of `GraphicControl:getCanvas()`.
---@deprecated Use `GraphicControl:getCanvas()`.
---@param graphiccontrol GraphicControl
---@return Canvas
function graphiccontrol_getCanvas(graphiccontrol) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaObject.pas#L27
---
--- Pre-6.3 spelling of `Object:destroy()`.
---@deprecated Use `Object:destroy()`.
---@param object Object
function object_destroy(object) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaObject.pas#L91
---
--- Pre-6.3 spelling of `Object:getClassName()`.
---@deprecated Use `Object:getClassName()`.
---@param object Object
---@return string
function object_getClassName(object) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaWinControl.pas#L174
---
--- Pre-6.3 spelling of `WinControl:canFocus()`.
---@deprecated Use `WinControl:canFocus()`.
---@param wincontrol WinControl
---@return boolean
function wincontrol_canFocus(wincontrol) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaWinControl.pas#L183
---
--- Pre-6.3 spelling of `WinControl:focused()`.
---@deprecated Use `WinControl:focused()`.
---@param wincontrol WinControl
---@return boolean
function wincontrol_focused(wincontrol) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaWinControl.pas#L46
---
--- Pre-6.3 spelling of `WinControl:getControl()`.
---@deprecated Use `WinControl:getControl()`.
---@param wincontrol WinControl
---@param index integer
---@return Control
function wincontrol_getControl(wincontrol, index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaWinControl.pas#L63
---
--- Pre-6.3 spelling of `WinControl:getControlAtPos()`.
---@deprecated Use `WinControl:getControlAtPos()`.
---@param wincontrol WinControl
---@param x integer
---@param y integer
---@return Control? # nil when no child control covers the point.
function wincontrol_getControlAtPos(wincontrol, x, y) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaWinControl.pas#L40
---
--- Pre-6.3 spelling of `WinControl:getControlCount()`.
---@deprecated Use `WinControl:getControlCount()`.
---@param wincontrol WinControl
---@return integer
function wincontrol_getControlCount(wincontrol) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaWinControl.pas#L91
---
--- Pre-6.3 spelling of `WinControl:setOnEnter()`.
---@deprecated Use `WinControl:setOnEnter()`.
---@param wincontrol WinControl
---@param f CECallback|string
function wincontrol_onEnter(wincontrol, f) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaWinControl.pas#L137
---
--- Pre-6.3 spelling of `WinControl:setOnExit()`.
---@deprecated Use `WinControl:setOnExit()`.
---@param wincontrol WinControl
---@param f CECallback|string
function wincontrol_onExit(wincontrol, f) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaWinControl.pas#L192
---
--- Pre-6.3 spelling of `WinControl:setFocus()`.
---@deprecated Use `WinControl:setFocus()`.
---@param wincontrol WinControl
function wincontrol_setFocus(wincontrol) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaWinControl.pas#L201
---
--- Pre-6.3 spelling of `WinControl:setShape()`.
---@deprecated Use `WinControl:setShape()`.
---@param wincontrol WinControl
---@param value Bitmap|Region
function wincontrol_setShape(wincontrol, value) end
