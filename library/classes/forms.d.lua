---@meta
---
--- classes / forms
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L694
---
--- Pascal class: `TCustomForm`.
---@class CustomForm : CustomControl
---@field OnClose CECallback Called as `f(sender, closeaction)` where `closeaction` is the action the form was about to take; return the action to use instead - `caHide`, `caFree`, `caMinimize` or `caNone` (LuaCaller.pas:3493). `TLuaCaller.CloseEvent` pushes both arguments and reads one result back into `CloseAction` (LuaCaller.pas:456-465); if the Lua call raises, the form falls back to `caHide` (LuaCaller.pas:469).
---@field Menu Menu? Nil while the form has no menu assigned.
---@field ModalResult integer
---@field FormState string Read-only.
---@field BorderStyle string|integer Published `TFormBorderStyle` of the form, reached through the RTTI fallback: reading gives the member name, e.g. `'bsSizeable'`; assigning takes that name or the matching integer. `getBorderStyle()`/`setBorderStyle()` use integers.
---@field BorderIcons string Published `TBorderIcons` set of the form, republished by `TCEForm` at ceguicomponents.pas:649 and reached through the RTTI fallback: reads back as a set string such as `'[biSystemMenu,biMinimize,biMaximize]'` (LuaObject.pas:210), and assigning takes the same form (LuaObject.pas:296).
---@field OnDestroy CECallback Called as `f(sender)` while the form is being destroyed. Published `TForm` event, republished by `TCEForm` at ceguicomponents.pas:678 and reached through the RTTI fallback.
---@field OnCloseQuery CECallback Called as `f(sender)` before the form closes; return false to refuse the close (LuaCaller.pas:3494). Published `TForm` event, republished by `TCEForm` at ceguicomponents.pas:673 and reached through the RTTI fallback.
---@field OnShow CECallback Called as `f(sender)` when the form is shown. Published `TForm` event, republished by `TCEForm` at ceguicomponents.pas:702 and reached through the RTTI fallback.
---@field OnHide CECallback Called as `f(sender)` when the form is hidden, the counterpart of `OnShow`. Published `TNotifyEvent` (LuaCaller.pas:3491), republished by `TCEForm` at ceguicomponents.pas:687 and reached through the RTTI fallback.
---@field OnActivate CECallback Called as `f(sender)` when the form becomes the active window. Published `TNotifyEvent` (LuaCaller.pas:3491), republished by `TCEForm` at ceguicomponents.pas:669 and reached through the RTTI fallback; MemoryBrowserFormUnit.lfm:11 streams `OnActivate = FormActivate` on a form.
---@field OnDeactivate CECallback Called as `f(sender)` when the form stops being the active window. Published `TNotifyEvent` (LuaCaller.pas:3491), republished by `TCEForm` at ceguicomponents.pas:677 and reached through the RTTI fallback.
---@field OnResize CECallback Called as `f(sender)` after the form's size has changed. Published `TNotifyEvent` (LuaCaller.pas:3491), republished by `TCEForm` at ceguicomponents.pas:700 and reached through the RTTI fallback; AdvancedOptionsUnit.lfm:11 and frmMemoryViewExUnit.lfm:13 stream `OnResize = FormResize` on a form.
---@field OnKeyPress CECallback Called as `f(sender, key)` where `key` is a one-character string. Return a string and its first character replaces the key; an empty string swallows it (LuaCaller.pas:813-819). A number does not give a character code: the `lua_isstring` test at LuaCaller.pas:813 resolves to the `lua` unit's external binding (lua/lua.pas:450), not LuaHandler's implementation-only override at LuaHandler.pas:408-411, and that one answers true for numbers as well (`lua_isstring` is `ttisstring(o) || cvt2str(o)` at lua53/lua53/src/lapi.c:284-286, and `cvt2str(o)` is `ttisnumber(o)` at lua53/lua53/src/lvm.h:16-17 because `LUA_NOCVTN2S` is never defined in lua53/lua53/src/), so a returned number takes the string path, is converted to its decimal text and its first digit becomes the key - `return 65` sets the key to `'6'`, and the `key:=chr(lua_tointeger(...))` branch at LuaCaller.pas:822-823 is unreachable. Returning nothing swallows the key as well: `lua_pcall` is asked for exactly one result (LuaCaller.pas:811) and anything that is neither a string nor a number falls through to `key:=#0` (LuaCaller.pas:824-825), so a handler that only wants to observe a key has to return it. Needs `KeyPreview` to fire for keys aimed at a child control. Published `TKeyPressEvent` (LuaCaller.pas:3498), republished by `TCEForm` at ceguicomponents.pas:689 and reached through the RTTI fallback.
---@field KeyPreview boolean When true the form's `OnKeyDown` / `OnKeyPress` / `OnKeyUp` fire before the focused control sees the key. Published `TForm` property, republished by `TCEForm` at ceguicomponents.pas:667 and reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494. Cheat Engine streams it onto its own forms, e.g. frmMemoryViewExUnit.lfm:9.
---@field AlphaBlend boolean When true the form is drawn translucent, using `AlphaBlendValue` as its opacity. Published `TForm` property, republished by `TCEForm` at ceguicomponents.pas:643 and reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks at LuaClass.pas:578 and LuaClass.pas:494 (a tkBool property is read at LuaObject.pas:206 and written at LuaObject.pas:289).
---@field AlphaBlendValue integer Opacity 0-255 used while `AlphaBlend` is true; 255 is fully opaque. Published `TForm` property, republished by `TCEForm` at ceguicomponents.pas:644 and reached through the RTTI fallbacks at LuaClass.pas:578 and LuaClass.pas:494. Cheat Engine drives it itself at frmDriverLoadedUnit.pas:106-107.
---@field WindowState string|integer Published `TWindowState` of the form, republished by `TCEForm` at ceguicomponents.pas:721 and reached through the RTTI fallback: reading gives the member name, e.g. `'wsNormal'` (LuaObject.pas:213), and assigning takes that name or the matching integer (LuaObject.pas:299). Cheat Engine reads and writes it on its own forms at MainUnit.pas:5888-5889.
---@field PopupMode string|integer Published `TPopupMode` of the form, republished by `TCEForm` at ceguicomponents.pas:712 and reached through the RTTI fallback: reading gives the member name, e.g. `'pmAuto'`; assigning takes that name or the matching integer. `createForm()` leaves it at `pmAuto` (LuaForm.pas:48).
---@field Position string|integer Published `TPosition` of the form, republished by `TCEForm` at ceguicomponents.pas:714 and reached through the RTTI fallback: reading gives the member name, e.g. `'poScreenCenter'`; assigning takes that name or the matching integer (`poScreenCenter` is 4 in defines.lua). `centerScreen()` sets it to `poScreenCenter` (LuaForm.pas:118).
---@field DesignTimePPI integer The PPI the form was designed at; `fixDPI()` scales the form against it (LuaForm.pas:60). LCL published property of the form, reached through the RTTI fallback; streamed onto Cheat Engine's own forms, e.g. HotKeys.lfm:11.
---@field FormStyle string|integer Published `TFormStyle` of the form, republished by `TCEForm` at ceguicomponents.pas:664 and reached through the RTTI fallback: reading gives the member name, e.g. `'fsStayOnTop'`; assigning takes that name or the matching integer. Cheat Engine uses it the same way at memscan.pas:8455, and frmBusyUnit.lfm:12 streams `FormStyle = fsStayOnTop` on a plain `TForm` (frmBusyUnit.pas:21).
---@field OnKeyDown CECallback Called as `f(sender, key)` where `key` is the virtual key code; return a number to replace it, 0 to swallow the key, or a non-number to leave it alone (LuaCaller.pas:832). The shift state is not passed. Needs `KeyPreview` to fire for keys aimed at a child control. Published `TKeyEvent` of `TCEForm` at ceguicomponents.pas:688, reached through the `lua_setProperty` RTTI fallback (LuaClass.pas:494, LuaObject.pas:297); frmMemoryViewExUnit.lfm:12 streams it on a plain `TForm` whose handler at frmMemoryViewExUnit.pas:104 has the matching `TKeyEvent` signature.
---@field OnKeyUp CECallback Called as `f(sender, key)` where `key` is the virtual key code; return a number to replace it or a non-number to leave it alone (LuaCaller.pas:832). The shift state is not passed. Needs `KeyPreview` to fire for keys aimed at a child control. Published `TKeyEvent` of `TCEForm` at ceguicomponents.pas:690, two lines after `OnKeyDown`, reached through the `lua_setProperty` RTTI fallback (LuaClass.pas:494, LuaObject.pas:297).
---@field OnMouseWheelUp CECallback Called as `f(sender, x, y)` when the wheel is rolled up over the form; `x`/`y` are the mouse position and the shift state is not passed (LuaCaller.pas:746-757). The result is read back into the LCL's `Handled` var parameter through an inverted test - `if lua_isboolean(LuaVM,-1)=false then h:=lua_toboolean(LuaVM,-1)` (LuaCaller.pas:758-759) - so returning `true` or `false` is discarded and leaves `Handled` as the LCL passed it in, while returning any non-boolean truthy value (a number, a string, a table) sets `Handled`. Returning nothing sets `Handled` to false. Published `TMouseWheelUpDownEvent`, the type LuaCaller registers at LuaCaller.pas:3497, republished by `TCEForm` at ceguicomponents.pas:698 and reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks at LuaClass.pas:578 and LuaClass.pas:494 (tkMethod is written at LuaObject.pas:297).
---@field OnMouseWheelDown CECallback Called as `f(sender, x, y)` when the wheel is rolled down over the form; `x`/`y` are the mouse position and the shift state is not passed (LuaCaller.pas:746-757). The result is read back into the LCL's `Handled` var parameter through an inverted test - `if lua_isboolean(LuaVM,-1)=false then h:=lua_toboolean(LuaVM,-1)` (LuaCaller.pas:758-759) - so returning `true` or `false` is discarded and leaves `Handled` as the LCL passed it in, while returning any non-boolean truthy value (a number, a string, a table) sets `Handled`. Returning nothing sets `Handled` to false. Published `TMouseWheelUpDownEvent`, the type LuaCaller registers at LuaCaller.pas:3497, republished by `TCEForm` at ceguicomponents.pas:697 and reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks at LuaClass.pas:578 and LuaClass.pas:494 (tkMethod is written at LuaObject.pas:297). The plain `OnMouseWheel` published one line earlier (ceguicomponents.pas:696) is not assignable - `TMouseWheelEvent` is never passed to `registerLuaCall`, so `LuaCaller_setMethodProperty` (LuaCaller.pas:208) raises at LuaCaller.pas:227.
---@field OnMouseLeave CECallback Called as `f(sender)` when the mouse pointer leaves the form, the counterpart of `OnMouseEnter`. Published `TNotifyEvent` (registered with LuaCaller at LuaCaller.pas:3491), republished by `TCEForm` at ceguicomponents.pas:693 and reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks at LuaClass.pas:578 and LuaClass.pas:494 (tkMethod is written at LuaObject.pas:297). The LCL is not vendored here, but frmsourcedisplayunit.lfm:30 streams `OnMouseLeave = seSourceMouseLeave`, whose handler at frmsourcedisplayunit.pas:51 has the `TNotifyEvent` signature.
---@field OnMouseEnter CECallback Called as `f(sender)` when the mouse pointer enters the form. Published `TNotifyEvent` (registered with LuaCaller at LuaCaller.pas:3491), republished by `TCEForm` at ceguicomponents.pas:692 and reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks at LuaClass.pas:578 and LuaClass.pas:494 (tkMethod is written at LuaObject.pas:297). The LCL is not vendored here, but frmsourcedisplayunit.lfm:29 streams `OnMouseEnter = seSourceMouseEnter`, whose handler at frmsourcedisplayunit.pas:50 has the `TNotifyEvent` signature.
---@field AutoScroll boolean When true the form grows scrollbars once its controls no longer fit. Published `TForm` property, republished by `TCEForm` at ceguicomponents.pas:646 (inside the published block ceguicomponents.pas:640-723) and reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks at LuaClass.pas:578 and LuaClass.pas:494 (a tkBool property is read at LuaObject.pas:206 and written at LuaObject.pas:289). The LCL is not vendored here, but Cheat Engine assigns it on its own form at IconStuff.pas:210 (`iconpicker` is a `TCustomForm` descendant, IconStuff.pas:69).
---@field ShowInTaskBar string|integer Whether the form gets its own taskbar button. Published `TShowInTaskbar` of the form, republished by `TCEForm` at ceguicomponents.pas:717 and reached through the RTTI fallback: reading gives the member name, e.g. `'stNever'` (LuaObject.pas:213), and assigning takes that name or the matching integer (LuaObject.pas:299). LCL published property of `TForm` - the LCL is not vendored in this repository; the `stNever` member name appears in a commented-out line at Cheat Engine/Tutorial/frmhelpunit.pas:75.
---@field Icon Icon The form's window icon. Published `TForm` property, republished by `TCEForm` at ceguicomponents.pas:666 and reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks at LuaClass.pas:578 and LuaClass.pas:494 (a tkClass property is pushed at LuaObject.pas:208 and assigned at LuaObject.pas:291-294). Cheat Engine reads it off a Lua-created form at frmExeTrainerGeneratorUnit.pas:788 and 794 to seed the generated .exe trainer's icon.
---@field OnMouseUp CECallback Called as `f(sender, button, x, y)` when a mouse button is released over the form; the shift state is not passed (LuaCaller.pas:3495). The counterpart of the `OnMouseDown` declared on `Control`. Published `TMouseEvent`, republished by `TCEForm` at ceguicomponents.pas:695 and reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks at LuaClass.pas:578 and LuaClass.pas:494 (tkMethod is written at LuaObject.pas:297). The LCL is not vendored here, but hexviewunit.pas:3321 assigns `OnMouseUp:=mbCanvasMouseUp`, whose handler at hexviewunit.pas:1614 has the matching `(Sender; Button: TMouseButton; Shift: TShiftState; X, Y: Integer)` signature.
---@field VertScrollBar ControlScrollBar The form's vertical scroll bar; set its own properties rather than replacing it. Published `TScrollingWinControl` property inherited by every form - the LCL is not vendored here, but formDifferentBitSizeUnit.lfm:6 streams `VertScrollBar.Visible = False` and dbvmloadmanual.lfm:7 streams `VertScrollBar.Page = 1`, both on the form object itself (formDifferentBitSizeUnit.lfm:1, dbvmloadmanual.pas:16). Reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578 (a tkClass property is pushed at LuaObject.pas:208). Documented by Cheat Engine at celua.txt:1121.
---@field HorzScrollBar ControlScrollBar The form's horizontal scroll bar; set its own properties rather than replacing it. Published `TScrollingWinControl` property inherited by every form - the LCL is not vendored here, but dbvmloadmanual.lfm:6 streams `HorzScrollBar.Page = 1` on the `TfrmDBVMLoadManual` form object (dbvmloadmanual.pas:16), and IconStuff.pas:244/246 assign `iconpicker.HorzScrollBar.Range` and `.Tracking` on the `TCustomForm` descendant declared at IconStuff.pas:69. Reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578 (a tkClass property is pushed at LuaObject.pas:208). Documented by Cheat Engine at celua.txt:1120.
---@field OnWindowStateChange CECallback Called as `f(sender)` when the form's `WindowState` changes. Published `TForm` event, republished by `TCEForm` at ceguicomponents.pas:707 (inside the published block ceguicomponents.pas:640-723) and reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks at LuaClass.pas:578 and LuaClass.pas:494 (tkMethod is written at LuaObject.pas:297). LCL published property of `TCustomForm` - the LCL is not vendored in this repository and nothing here streams or assigns it, so the `TNotifyEvent` signature is inferred from the type LuaCaller registers at LuaCaller.pas:3491.
---@field BorderWidth integer Space in pixels kept between the form's edge and its aligned children. Published `TWinControl` property, republished by `TCEForm` at ceguicomponents.pas:651 (inside the published block ceguicomponents.pas:640-723) and reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks at LuaClass.pas:578 and LuaClass.pas:494 (a tkInteger property is read at LuaObject.pas:205 and written at LuaObject.pas:274). `createForm` builds a `TCEForm` (LuaForm.pas:47 into pluginexports.pas:1668) and LuaForm.pas:772 binds that class. The LCL is not vendored here, but frmdbvmwatchconfigunit.lfm:8 streams `BorderWidth = 5` on the form declared at frmdbvmwatchconfigunit.lfm:1, and Cheat Engine sets it itself on a `TWinControl` at addresslist.pas:2402.
---@field OnContextPopup CECallback Called as `f(sender, mousepos)` when the user asks for the context menu; `mousepos` is a table with `x` and `y` (`lua_pushpoint`, LuaHandler.pas:520-530). The result is read back into the LCL's `Handled` var parameter with `Handled:=lua_toboolean(LuaVM,-1)` (LuaCaller.pas:1749-1763), so returning true reports the event as handled and returning nothing leaves it false. Published `TControl` event, republished by `TCEForm` at ceguicomponents.pas:674 (inside the published block ceguicomponents.pas:640-723) and reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494, which resolve the name with `GetPropInfo` (LuaObject.pas:191) and write tkMethod at LuaObject.pas:297. `TContextPopupEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3554), so a Lua function can be assigned to it.
---@field OnCreate CECallback Called as `f(sender)` while the form is being constructed, which means an assignment from Lua never fires: `createForm()` returns an already-built `TCEForm` (pluginexports.pas:1663) and a designer form is streamed into an existing instance with `reader.ReadRootComponent(self)` (ceguicomponents.pas:1183). Use `registerCreateCallback()`, which adds to the separate `AddHandlerCreate` list (LuaForm.pas:559). LCL published event of `TForm`, republished by `TCEForm` at ceguicomponents.pas:675 - the LCL is not vendored here, but aboutunit.lfm:14 streams `OnCreate = FormCreate`. `TNotifyEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3491), so it is reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks at LuaClass.pas:578 and LuaClass.pas:494 (tkMethod is written at LuaObject.pas:297).
---@field PixelsPerInch integer The DPI value streamed with a form's layout - formAddressChange.lfm:14 streams `PixelsPerInch = 96` on the form declared at formAddressChange.lfm:1. Not what `fixDPI()` uses: that scales from `DesignTimePPI` to `screen.PixelsPerInch` (LuaForm.pas:60). LCL published property of `TForm`, republished by `TCEForm` at ceguicomponents.pas:710 - the LCL is not vendored here - and reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks at LuaClass.pas:578 and LuaClass.pas:494 (a tkInteger property is read at LuaObject.pas:205 and written at LuaObject.pas:274).
---@field DefaultMonitor string|integer Which monitor the form is positioned on when it is first shown. Published property republished by `TCEForm` at ceguicomponents.pas:658 (inside the published block ceguicomponents.pas:640-723) and reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494. Its `TDefaultMonitor` type is an enumeration, so reading yields the member name through the `else` arm of `lua_getProperty` (LuaObject.pas:211-214) and assigning takes that name or the matching integer, which `lua_setProperty` converts with `GetEnumName` (LuaObject.pas:299-308). LCL published property of `TCustomForm` - the LCL is not vendored in this repository and nothing here streams or assigns it, so the republish line at ceguicomponents.pas:658 is the only evidence.
---@field Constraints SizeConstraints Minimum and maximum size the form may be resized to; set its `MinWidth` / `MinHeight` / `MaxWidth` / `MaxHeight` rather than replacing the object. Published `TControl` property, republished by `TCEForm` at ceguicomponents.pas:657 (inside the published block ceguicomponents.pas:640-723) and reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578 (a tkClass property is pushed at LuaObject.pas:208, and the returned `TSizeConstraints` still gets a metatable because LuaObject.pas:511 registers `TObject`). The LCL is not vendored here, but formhotkeyunit.lfm:12 streams `Constraints.MinWidth = 240` on the form object declared at formhotkeyunit.lfm:1, and HotKeys.pas:717-718 assigns `constraints.MinWidth` / `Constraints.MinHeight` on `THotKeyForm` (a `TForm` descendant, HotKeys.pas:22).
---@field DragMode string|integer Whether the form begins a drag by itself on mouse-down (`'dmAutomatic'`) or only when code starts one (`'dmManual'`). Published `TControl` property, republished by `TCEForm` at ceguicomponents.pas:661 (inside the published block ceguicomponents.pas:640-723, three lines after `DefaultMonitor` at :658) and reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494. Its `TDragMode` type is an enumeration, so reading yields the member name through the `else` arm of `lua_getProperty` (LuaObject.pas:213-214) and assigning takes that name or the matching integer, which `lua_setProperty` converts with `GetEnumName` (LuaObject.pas:299-308). LCL published property of `TControl` - the LCL is not vendored in this repository, but AdvancedOptionsUnit.lfm:130 and MainUnit.lfm:1667 stream `DragMode = dmAutomatic` on Cheat Engine's own list views.
---@field ChildSizing Object How the form lays its child controls out automatically - spacing, enlarge/shrink policy, `Layout` and `ControlsPerLine`; set its own sub-properties rather than replacing it, e.g. `form.ChildSizing.ControlsPerLine=2`. Comes back as a plain `Object`: `TControlChildSizing` is never passed to `luaclass_register` and neither is `TPersistent`, so `luaclass_newClass` resolves it up to the nearest registered ancestor `TObject` (`findBestClassForObject`, LuaClass.pas:136; LuaObject.pas:511), and its own members are then read and written through the same RTTI fallback. Published `TWinControl` property, republished by `TCEForm` at ceguicomponents.pas:653 (inside the published block ceguicomponents.pas:640-723) and reached through the `lua_getProperty` RTTI fallback `luaclass_index` installs at LuaClass.pas:578, whose tkClass branch is LuaObject.pas:208. The LCL is not vendored here, but asktorunluascript.lfm:622-624 streams `ChildSizing.HorizontalSpacing`, `.Layout` and `.ControlsPerLine`, and ProcessWindowUnit.lfm:62-65 streams those plus `.EnlargeHorizontal`, both on a `TPanel` (asktorunluascript.lfm:606, ProcessWindowUnit.lfm:49) and both as dotted sub-property names, which the streaming format only accepts for a published `TPersistent` sub-object.
---@field DragKind string|integer Whether a drag begun on the form drags the control (`'dkDrag'`) or docks it (`'dkDock'`). Published `TControl` property, republished by `TCEForm` at ceguicomponents.pas:660 (inside the published block ceguicomponents.pas:640-723, directly above `DragMode` at :661) and reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494. Its `TDragKind` type is an enumeration, so reading yields the member name through the `else` arm of `lua_getProperty` (LuaObject.pas:211-214) and assigning takes that name or the matching integer, which `lua_setProperty` converts with `GetEnumName` (LuaObject.pas:299-308). LCL published property of `TControl` - the LCL is not vendored in this repository, but Cheat Engine republishes the same property in two of its own descendants: scrollTreeView.pas:47, in the published block that opens at scrollTreeView.pas:32 on the `TTreeView` descendant declared at scrollTreeView.pas:20, and betterControls/cecustombutton.pas:131.
---@field DockSite boolean When true the form accepts controls docked onto it. Published `TWinControl` property, republished by `TCEForm` at ceguicomponents.pas:659 (inside the published block ceguicomponents.pas:640-723, between `DefaultMonitor` at :658 and `DragKind` at :660) and reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494 (a tkBool property is read at LuaObject.pas:206 and written at LuaObject.pas:289). LCL published property of `TWinControl` - the LCL is not vendored in this repository and nothing here streams or assigns it on a form, so the republish line at ceguicomponents.pas:659 is the only evidence.
---@field ParentBiDiMode boolean When true the form takes its `BiDiMode` from its parent instead of its own setting. Published `TControl` property, republished by `TCEForm` at ceguicomponents.pas:708 (inside the published block ceguicomponents.pas:640-723, one line before `ParentFont`) and reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494 (a tkBool property is read at LuaObject.pas:206 and written at LuaObject.pas:289). LCL published property of `TControl` - the LCL is not vendored in this repository and nothing here streams or assigns it, so the republish line at ceguicomponents.pas:708 is the only evidence.
---@field BiDiMode string|integer Text direction the form and the controls that inherit from it lay their content out in. Published `TControl` property, republished by `TCEForm` at ceguicomponents.pas:648 (inside the published block ceguicomponents.pas:640-723, one line before `BorderIcons`) and reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494. Its `TBiDiMode` type is an enumeration, so reading yields the member name, e.g. `'bdLeftToRight'`, through the `else` arm of `lua_getProperty` (LuaObject.pas:213-214) and assigning takes that name or the matching integer, which `lua_setProperty` converts with `GetEnumName` (LuaObject.pas:299-308). LCL published property of `TControl` - the LCL is not vendored in this repository and nothing here streams or assigns it, so the republish line at ceguicomponents.pas:648 is the only evidence.
local CustomForm = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L113
---@overload fun()
function CustomForm:centerScreen() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L74
---@param value CECallback? nil clears the handler.
---@overload fun(value?: CECallback)
function CustomForm:setOnClose(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L65
---@return CECallback|nil
---@overload fun(): CECallback|nil
function CustomForm:getOnClose() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L217
---@overload fun()
function CustomForm:show() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L122
---@overload fun()
function CustomForm:hide() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L131
---@overload fun()
function CustomForm:close() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L140
---@overload fun()
function CustomForm:bringToFront() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L149
---@return integer
---@overload fun(): integer
function CustomForm:showModal() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L159
---@return boolean
---@overload fun(): boolean
function CustomForm:isForegroundWindow() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L168
---@return Menu|nil
---@overload fun(): Menu|nil
function CustomForm:getMenu() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L178
---@param value Menu
---@overload fun(value: Menu)
function CustomForm:setMenu(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L193
---@return integer
---@overload fun(): integer
function CustomForm:getBorderStyle() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L202
---@param value integer
---@overload fun(value: integer)
function CustomForm:setBorderStyle(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L226
---
--- Resizes `rasterimage` to the form's client area and renders the form's client region
--- into it.
---
--- Windows only; the whole body sits inside a `{$ifdef windows}` block, so on other
--- builds this does nothing and leaves `rasterimage` untouched.
---@param rasterimage RasterImage
---@overload fun(rasterimage: RasterImage)
function CustomForm:printToRasterImage(rasterimage) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L248
---
--- Starts a system window drag of the form, as if the user grabbed its title bar.
---
--- Windows only; the whole body sits inside a `{$ifdef windows}` block, so on other
--- builds this does nothing.
---@overload fun()
function CustomForm:dragNow() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L540
---@param callback CECallback
---@return LuaCaller
---@overload fun(callback: CECallback): LuaCaller
function CustomForm:registerCreateCallback(callback) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L605
---@param callback CECallback
---@return LuaCaller
---@overload fun(callback: CECallback): LuaCaller
function CustomForm:registerFirstShowCallback(callback) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L658
---@param callback CECallback
---@return LuaCaller
---@overload fun(callback: CECallback): LuaCaller
function CustomForm:registerCloseCallback(callback) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L522
---@param userdata LuaCaller
---@overload fun(userdata: LuaCaller)
function CustomForm:unregisterCreateCallback(userdata) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L576
---@param userdata LuaCaller
---@overload fun(userdata: LuaCaller)
function CustomForm:unregisterFirstShowCallback(userdata) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L640
---@param userdata LuaCaller
---@overload fun(userdata: LuaCaller)
function CustomForm:unregisterCloseCallback(userdata) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L260
---
--- Saves the form's position under its `Name`; does nothing when the form has no name.
--- The optional array is stored alongside the position and handed back by
--- `loadFormPosition()`.
---@param IntegerTable integer[]?
---@overload fun(IntegerTable?: integer[])
function CustomForm:saveFormPosition(IntegerTable) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L292
---@return boolean? success
---@return integer[]? values
---@overload fun(): boolean?, integer[]?
function CustomForm:loadFormPosition() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L55
---@overload fun()
function CustomForm:fixDPI() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L735
---
--- Pascal class: `TCEForm`.
---@class CEForm : CustomForm
---@field DoNotSaveInTable boolean
---@field AllowDropFiles boolean Lets the user drag files onto the form; `OnDropFiles` then fires. Published by `TCEForm` at ceguicomponents.pas:642.
---@field OnDropFiles CECallback `function(sender, filenames)`, where `filenames` is a 1-based array of the dropped paths (LuaCaller.pas:694). Fires only while `AllowDropFiles` is true. Published by `TCEForm` at ceguicomponents.pas:683.
---@field Scaled boolean When true the form rescales its layout from `DesignTimePPI` to the current screen DPI; clear it before positioning children in raw pixels. LCL published property of `TForm` - the LCL is not vendored here, but formsettingsunit.lfm:18 streams `Scaled = False` on the root object `formSettings: TformSettings` declared at formsettingsunit.lfm:1, whose class is `TformSettings = class(TForm)` (formsettingsunit.pas:30), and Cheat Engine writes it itself at trainergenerator.pas:431 on the `TTrainerForm=class(TCEForm)` declared at trainergenerator.pas:22. `TCEForm` descends from `TForm` (ceguicomponents.pas:606) and its published block (ceguicomponents.pas:640-723) does not re-list it, so it is reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494 (a tkBool property is read at LuaObject.pas:206 and written at LuaObject.pas:289). Not the same thing as `fixDPI()`, which rescales once on demand (LuaForm.pas:55).
local CEForm = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L416
---@param filename string
---@return true? success
---@return string? errorMessage
---@overload fun(filename: string): true?, string?
function CEForm:saveToFile(filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L374
---@param s Stream
---@return true? success
---@return string? errorMessage
---@overload fun(s: Stream): true?, string?
function CEForm:saveToStream(s) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L466
---@param value boolean
---@overload fun(value: boolean)
function CEForm:setDoNotSaveInTable(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L457
---@return boolean
---@overload fun(): boolean
function CEForm:getDoNotSaveInTable() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaForm.pas#L477
---@overload fun()
function CEForm:saveCurrentStateAsDesign() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCommonDialog.pas#L26
---
--- Pascal class: `TCommonDialog`.
---@class CommonDialog : Component
---@field Title string The dialog caption. LCL published property of `TCommonDialog` - the LCL is not vendored here, but LuaCommonDialog.pas:28 records that everything except `execute` is already published, frmMemviewPreferencesUnit.pas:322 writes it on the `TColorDialog` streamed at frmMemviewPreferencesUnit.lfm:760, and pointerscannerfrm.lfm:493 streams it on the `TSaveDialog` declared at pointerscannerfrm.lfm:492. Reached through the `lua_getProperty` / `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at LuaClass.pas:578 and LuaClass.pas:494.
local CommonDialog = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaCommonDialog.pas#L16
---@return boolean
---@overload fun(): boolean
function CommonDialog:execute() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFileDialog.pas#L23
---
--- Pascal class: `tfiledialog`.
---
--- `filedialog_addMetaData` exports only `Files` - "the rest is already published"
--- (LuaFileDialog.pas:25). The fields from `DefaultExt` down are those published
--- properties, reached through the `lua_getProperty` RTTI fallback `luaclass_index`
--- installs at LuaClass.pas:578.
---@class FileDialog : CommonDialog
---@field Files Strings Read-only.
---@field DefaultExt string Extension appended when the user types a name without one.
---@field FileName string The selected file name.
---@field Filter string Filter string in `'Description|*.ext|Description|*.ext'` form.
---@field FilterIndex integer 1-based index of the active entry in `Filter`.
---@field InitialDir string Folder the dialog opens in.
---@field Title string The dialog caption.
local FileDialog = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaFindDialog.pas#L71
---
--- Pascal class: `TFindDialog`.
---@class FindDialog : CommonDialog
---@field Left integer
---@field Top integer
---@field Width integer
---@field Height integer
---@field Title string The dialog caption. LCL published property of `TCommonDialog`, reached through the RTTI fallback; the LCL is not vendored here and no .lfm in this repository streams it on a `TFindDialog`, but LuaFindDialog.pas:73 records that everything except `execute` is already published, and the same property is declared on `FileDialog` above.
---@field OnFind CECallback Called as `f(sender)` each time the user presses Find Next. LCL published property of `TFindDialog`, reached through the RTTI fallback; the LCL is not vendored here, but StructuresFrm2.lfm:553/555 streams `OnFind = FindDialog1Find` on a `TFindDialog`.
---@field FindText string The text currently typed in the dialog's search box. LCL published property of `TFindDialog`, reached through the RTTI fallback; the LCL is not vendored here, but frmluaengineunit.pas:1339 reads `TFindDialog(sender).FindText` and dotnetinfo.lua:974 reads it from Lua without ever assigning it.
---@field Options string Published `TFindOptions` set of the LCL `TFindDialog` - the LCL is not vendored here, but StructuresFrm2.lfm:553/554 streams `Options = [frDown, frDisableWholeWord, frHideEntireScope]` on a `TFindDialog`. Reached through the RTTI fallback: reads back as a set string (LuaObject.pas:210), and assigning takes the same form (LuaObject.pas:296).
---@field OnClose CECallback Called as `f(sender)` once the dialog has closed. LCL published property reached through the RTTI fallback; the LCL is not vendored here, but frmEnumerateDLLsUnit.lfm:87 streams `OnClose = FindDialog1Close` on the `TFindDialog` declared at frmEnumerateDLLsUnit.pas:46, whose handler at frmEnumerateDLLsUnit.pas:211 has the `(Sender: TObject)` signature of a `TNotifyEvent`, one of the method types LuaCaller registers (LuaCaller.pas:3491).
local FindDialog = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/frmautoinjectunit.pas#L4342
---
--- Pascal class: `TfrmAutoInject`.
---@class AutoAssemblerForm : CustomForm
---@field TabScript table<integer, string> The script text of each tab, indexed from 0, so the last tab is `TabCount-1` (`TabCount` is `tablist.Count`, frmautoinjectunit.pas:2393). The Lua index is passed to `TfrmAutoInject.TabScript` unadjusted (frmautoinjectunit.pas:4284-4297); `getTabScript` (frmautoinjectunit.pas:2416) and `setTabScript` (frmautoinjectunit.pas:2435) both bail out on a negative index, so such a read yields `''` rather than nil and such a write is silently dropped. Stay inside `0..TabCount-1`.
---@field TabCount integer Number of script tabs. Setting it adds or removes tabs.
---@field isEditing boolean Read-only. True while the script is being edited.
---@field ScriptMode string|integer Reads back the `TScriptMode` member name, `'smAutoAssembler'`, `'smLua'` or `'smGnuAssembler'`; assigning takes that name or the matching integer.
---@field Assemblescreen SynEdit Read-only. The script editor. Not a published property - a runtime component of `TfrmAutoInject`, declared at frmautoinjectunit.pas:365, created as `TSynEditPlus.Create(self)` (frmautoinjectunit.pas:2752) and named `'Assemblescreen'` (frmautoinjectunit.pas:2781), reached by component name through the `component_findComponentByName` fallback in `luaclass_index` (LuaClass.pas:592, LuaComponent.pas:26-38). `TSynEditPlus` is a `TSynEdit` descendant through `TPlusSynEdit` (frmautoinjectunit.pas:31 and frmautoinjectunit.pas:25). Documented by Cheat Engine as `Assemblescreen: SynEdit` (bin/celua.txt:1196).
local AutoAssemblerForm = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/frmautoinjectunit.pas#L4313
---@return integer
---@overload fun(): integer
function AutoAssemblerForm:addTab() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/frmautoinjectunit.pas#L4327
---@param index integer
---@overload fun(index: integer)
function AutoAssemblerForm:deleteTab(index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/frmcodefilterunit.pas#L1234
---
--- Pascal class: `TfrmCodeFilter`.
---@class CodeFilterForm : CustomForm
local CodeFilterForm = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/frmcodefilterunit.pas#L1213
---@param address integer
---@return boolean
---@overload fun(address: integer): boolean
function CodeFilterForm:isInList(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/frmTracerUnit.pas#L2434
---
--- Pascal class: `TfrmTracer`.
---@class TracerForm : CustomForm
---@field count integer Read-only. Number of entries in the list.
---@field selectionCount integer Read-only. Number of selected entries.
---@field Entry table<integer, { address: integer, selected: boolean, instruction: string, instructionSize: integer, referencedAddress: integer, context: Context, referencedData: ByteTable, hasStackSnapshot: boolean }?> Read-only. Indexed from 0; nil past the end of the list.
---@field StackEntry table<integer, ByteTable?> Read-only. Nil when that entry has no stack snapshot.
local TracerForm = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/frmUltimap2Unit.pas#L4191
---
--- Pascal class: `TfrmUltimap2`.
---@class Ultimap2Form : CustomForm
---@field Count integer Read-only. Number of entries in the list.
local Ultimap2Form = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/frmUltimap2Unit.pas#L4162
---@param address integer
---@return boolean
---@return integer? count Only returned when the first result is true.
---@overload fun(address: integer): boolean, integer?
function Ultimap2Form:isMatchingAddress(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/frmUltimap2Unit.pas#L4162
---@param address integer
---@return boolean
---@return integer? count Only returned when the first result is true.
---@overload fun(address: integer): boolean, integer?
function Ultimap2Form:isInList(address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructureFrm.pas#L297
---
--- Pascal class: `TfrmStructures2`.
---@class StructureForm : CustomForm
---@field Column table<integer, StructColumn?> Read-only. Indexed from 0; nil at or above `ColumnCount` (StructuresFrm2.pas:7143-7154).
---@field Group table<integer, StructGroup?> Read-only. Indexed from 0. `structureForm_getGroup` passes the Lua index straight to `TfrmStructures2.group` (LuaStructureFrm.pas:231), whose getter returns nil for a negative index (StructuresFrm2.pas:7168), and `luaclass_newClass` pushes that nil through (LuaClass.pas:217). The getter's upper guard is inclusive (`i>fgroups.count`), so an index equal to `GroupCount` is handed to the underlying `TList` unchecked instead of returning nil; stay inside `0..GroupCount-1`.
---@field MainStruct Structure? The structure the form is showing. Nil until one is assigned.
---@field ColumnCount integer Read-only.
---@field GroupCount integer Read-only.
---@field DefaultColor integer Read-only.
---@field MatchColor integer Read-only.
---@field NoMatchColor integer Read-only.
---@field AllMatchColorSame integer Read-only.
---@field AllMatchColorDiff integer Read-only.
---@field OnStatusbarUpdate CECallback Called as `f(sender)` when the form refreshes its selection statusbar; `sender` is the form's `sbSelection` status bar, a `TStatusBar` (StructuresFrm2.pas:490) passed at StructuresFrm2.pas:5689. `TStatusBar` has no Lua class of its own, so it arrives with the metadata of its nearest registered ancestor. Published `TNotifyEvent` of `TfrmStructures2` (StructuresFrm2.pas:682), reached through the RTTI fallback.
local StructureForm = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructureFrm.pas#L110
---@return StructColumn
---@overload fun(): StructColumn
function StructureForm:addColumn() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructureFrm.pas#L122
---@param groupname string? Defaults to `Group <n>`.
---@return StructGroup
---@overload fun(groupname?: string): StructGroup
function StructureForm:addGroup(groupname) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructureFrm.pas#L193
---@overload fun()
function StructureForm:structChange() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaStructureFrm.pas#L142
---@return StructureElement? element Nothing is returned when no element is selected.
---@return table<integer, StructParentEntry>? parents Keyed by tree node level.
---@overload fun(): StructureElement?, table<integer, StructParentEntry>?
function StructureForm:getSelectedStructElement() end