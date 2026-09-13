---@meta
---
--- gui
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---------------------------------------------------------------------------------------
-- User interface
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L1593
---
--- Shows a modal message box. Any number of parameters is accepted; the text shown is
--- the last one. Lightuserdata is shown as its 8-digit hexadecimal pointer.
---@param message string|number|userdata
---@param ... any Additional values. The last one is the text that gets shown.
function showMessage(message, ...) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L1572
---
--- Asks for a string. All three parameters are required.
---@param caption string
---@param prompt string
---@param defaultValue string
---@return string? value Nothing when the user cancelled.
function inputQuery(caption, prompt, defaultValue) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3822
---
--- Shows a message dialog. Without a `dialogType` the dialog is a confirmation with an
--- OK button; without any button constant an OK button is used. When the second
--- parameter is a string it is taken as the message and the first as the title.
---@param message string
---@param dialogType MsgDlgType?
---@param ... MsgDlgButton
---@return integer? modalResult
---@overload fun(title: string, message: string): integer?
---@overload fun(title: string, message: string, dialogType: MsgDlgType, ...: MsgDlgButton): integer?
function messageDialog(message, dialogType, ...) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14449
---
--- Shows a list the user picks from.
---@param title string
---@param caption string
---@param list Strings
---@param allowCustomInput boolean? Defaults to false.
---@param formName string? Name given to the form, for skinning. Defaults to "".
---@return integer? index Selected index, or -1 when cancelled.
---@return string? text
function showSelectionList(title, caption, list, allowCustomInput, formName) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3765
---
--- Cleans up and terminates Cheat Engine. Only acts on the first call.
function closeCE() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3785
function hideAllCEWindows() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3793
function unhideMainCEwindow() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4672
---@return MainForm mainForm
---@nodiscard
function getMainForm() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4664
---@return MemoryView memoryViewForm
---@nodiscard
function getMemoryViewForm() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4657
---@return CustomForm settingsForm
---@nodiscard
function getSettingsForm() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4682
---@return AddressList addressList The cheat table's address list.
---@nodiscard
function getAddressList() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4689
---@return Timer freezeTimer The timer that reapplies frozen values.
---@nodiscard
function getFreezeTimer() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4696
---@return Timer updateTimer The timer that refreshes the address list values.
---@nodiscard
function getUpdateTimer() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10467
---@return Application
---@nodiscard
function getApplication() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10443
---
--- The Lua engine window, created on first use.
---@return LuaEngineForm
---@nodiscard
function getLuaEngine() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10453
---
--- Creates an extra Lua engine window.
---@return LuaEngineForm
---@nodiscard
function createLuaEngine() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8379
---@return integer count Number of forms in the LCL screen list (`Screen.FormCount`). Ownership is irrelevant: forms created with a nil owner, as `createFormFromFile` does, are counted too.
---@nodiscard
function getFormCount() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8386
---@param index integer 0 based.
---@return CustomForm? form
---@nodiscard
function getForm(index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8346
---
--- Calls back whenever a form is created. The callback is called as `f(form)` with the
--- newly created form as its only argument - the LCL event's `Sender` is not passed - and
--- no return value is read (LuaCaller.pas:1248-1249).
---@param callback CECallback `function(form: CustomForm)`
---@return LuaCaller? handler Pass this to `unregisterFormAddNotification`.
function registerFormAddNotification(callback) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8332
---@param handler LuaCaller The object `registerFormAddNotification` returned.
function unregisterFormAddNotification(handler) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3804
---@param owner WinControl
---@return Label?
---@nodiscard
function createLabel(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7782
---@param owner WinControl?
---@return Splitter
---@nodiscard
function createSplitter(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L7807
---@param owner WinControl?
---@return PaintBox
---@nodiscard
function createPaintBox(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4796
---@param owner WinControl?
---@return ToggleBox
---@nodiscard
function createToggleBox(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14886
---@param owner Component?
---@return ColorBox
---@nodiscard
function createColorBox(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14903
---
--- Opens an auto assembler window, optionally pre-filled with a script.
---@param script string?
---@return AutoAssemblerForm
function createAutoAssemblerForm(script) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9692
---
--- Instantiates a registered `TPersistent` class by name.
---@param classname string
---@return Object? instance
---@return string? errorMessage
---@nodiscard
function createClass(classname) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9716
---
--- Instantiates a registered `TComponent` class by name.
---@param classname string
---@param owner Component
---@return Component? instance
---@return string? errorMessage
---@nodiscard
function createComponentClass(classname, owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4721
---@param object Object
---@return boolean? isObject
---@nodiscard
function inheritsFromObject(object) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4739
---@param object Object
---@return boolean? isComponent
---@nodiscard
function inheritsFromComponent(object) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4757
---@param object Object
---@return boolean? isControl
---@nodiscard
function inheritsFromControl(object) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4777
---@param object Object
---@return boolean? isWinControl
---@nodiscard
function inheritsFromWinControl(object) end


---------------------------------------------------------------------------------------
-- Dialogs
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4835
---@param owner Component?
---@return OpenDialog
---@nodiscard
function createOpenDialog(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4849
---@param owner Component?
---@return SaveDialog
---@nodiscard
function createSaveDialog(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4863
---@param owner Component?
---@return SelectDirectoryDialog
---@nodiscard
function createSelectDirectoryDialog(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14869
---@param owner Component?
---@return ColorDialog
---@nodiscard
function createColorDialog(owner) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L4822
---
--- Cheat Engine 6.2 and older API. Executes the dialog and returns nil on success,
--- or the file name when the user cancelled.
---@deprecated Use the dialog object's own `execute` method.
---@param dialog OpenDialog
---@return string? filename
function openDialog_execute(dialog) end


---------------------------------------------------------------------------------------
-- Screen and graphics
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14276
---@return integer
---@nodiscard
function getScreenHeight() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14282
---@return integer
---@nodiscard
function getScreenWidth() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14269
---@return integer dpi Screen pixels per inch.
---@nodiscard
function getScreenDPI() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14288
---@return integer
---@nodiscard
function getWorkAreaHeight() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14294
---@return integer
---@nodiscard
function getWorkAreaWidth() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14301
---
--- Canvas of the whole desktop, created once and reused.
---@return Canvas
---@nodiscard
function getScreenCanvas() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14254
---@param index integer `SM_*` index.
---@return integer? value
---@nodiscard
function getSystemMetrics(index) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8958
---@param width integer? Defaults to the screen width.
---@param height integer? Defaults to the screen height.
---@return Bitmap
---@nodiscard
function createBitmap(width, height) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8989
---@param width integer? Defaults to the screen width.
---@param height integer? Defaults to the screen height.
---@return PNG
---@nodiscard
function createPNG(width, height) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9020
---@param width integer? Defaults to the screen width.
---@param height integer? Defaults to the screen height.
---@return Jpeg
---@nodiscard
function createJpeg(width, height) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9051
---@param width integer? Defaults to 64.
---@param height integer? Defaults to 64.
---@return Icon
---@nodiscard
function createIcon(width, height) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L16041
---@param color integer
---@return integer? inverted
---@nodiscard
function invertColor(color) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L13184
---
--- Installs a font from a memory stream for the lifetime of the process. Windows only.
---@param stream MemoryStream
---@return integer? handle Pass it to `unloadLoadedFont`.
function loadFontFromStream(stream) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L13174
---
--- Windows only.
---@param handle integer
function unloadLoadedFont(handle) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15085
---
--- Sets the taskbar progress indicator state. Windows only.
---@param state TaskBarProgressState
function setProgressState(state) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15094
---
--- Windows only.
---@param current integer
---@param max integer
function setProgressValue(current, max) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8933
---@param text string
function writeToClipboard(text) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8946
---@return string text
---@nodiscard
function readFromClipboard() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10357
---
--- Plays a wave file held in memory. Windows only.
---@param sound MemoryStream|TableFile A memory stream, or a table file entry.
---@param synchronous boolean? Block until the sound finished. Defaults to false.
function playSound(sound, synchronous) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L13258
---
--- Speaks the text with the system TTS voice. Windows only.
---@param text string
---@param synchronousOrFlags boolean|integer?
function speak(text, synchronousOrFlags) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L13264
---
--- Same as `speak`, but forces an English voice. Windows only.
---@param text string
---@param synchronousOrFlags boolean|integer?
function speakEnglish(text, synchronousOrFlags) end


---------------------------------------------------------------------------------------
-- Memory viewer views
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8191
---
--- Cheat Engine 6.2 and older API.
---@deprecated Use the view's `SelectedAddress` and `SelectedAddress2` properties.
---@param disassemblerView DisassemblerView
---@return integer address
---@return integer address2 End of the selection.
---@nodiscard
function disassemblerview_getSelectedAddress(disassemblerView) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8201
---
--- Cheat Engine 6.2 and older API; LuaHandler.pas:8201 marks it `//6.2-`, the same marker
--- its sibling `disassemblerview_getSelectedAddress` carries.
---
--- Broken in the implementation: `luaclass_getClassObject` is called without a
--- paramstart, so the address is read from stack index 1, which still holds
--- `disassemblerView`. A userdata converts to 0, so the selection is always set to 0.
---@deprecated Use the view's `SelectedAddress` property.
---@param disassemblerView DisassemblerView
---@param address CEAddress Ignored; 0 is written instead.
function disassemblerview_setSelectedAddress(disassemblerView, address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8216
---@param disassemblerView DisassemblerView
---@param callback CECallback? nil clears the handler.
function disassemblerview_onSelectionChange(disassemblerView, callback) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8085
---@param hexadecimalView HexadecimalView
---@return integer address
---@nodiscard
function hexadecimalview_getTopAddress(hexadecimalView) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8094
---
--- Broken in the implementation: `luaclass_getClassObject` is called without a
--- paramstart, so the address is read from stack index 1, which still holds
--- `hexadecimalView`. A userdata converts to 0, so the top address is always set to 0.
---@param hexadecimalView HexadecimalView
---@param address CEAddress Ignored; 0 is written instead.
function hexadecimalview_setTopAddress(hexadecimalView, address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8109
---@param hexadecimalView HexadecimalView
---@param callback CECallback? nil clears the handler.
function hexadecimalview_onAddressChange(hexadecimalView, callback) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8149
---@param hexadecimalView HexadecimalView
---@param callback CECallback? nil clears the handler.
function hexadecimalview_onByteSelect(hexadecimalView, callback) end
