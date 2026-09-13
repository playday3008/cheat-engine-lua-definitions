---@meta
---
--- table
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---------------------------------------------------------------------------------------
-- Cheat table
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3038
---
--- Appends a new entry to the cheat table's address list. It is not blank: the entry is
--- created with the description "Plugin Address", the address string "0" and value type
--- vtDword (pluginexports.pas:894).
---@return MemoryRecord entry
function createTableEntry() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3049
---@param description string
---@return MemoryRecord? entry First entry with that description.
---@nodiscard
function getTableEntry(description) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9450
---
--- Loads a cheat table from a file, or from a stream holding the XML. Returns nothing
--- at all when called without parameters, or when the first parameter is neither a
--- string nor a Cheat Engine object (LuaHandler.pas:9473).
---@param fileNameOrStream string|Stream
---@param merge boolean? Add to the current table instead of replacing it. Defaults to false.
---@param ignoreLuaScriptDialog boolean? Stream form only. Defaults to false.
---@return boolean? success
---@return string? errorMessage
function loadTable(fileNameOrStream, merge, ignoreLuaScriptDialog) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9509
---
--- Saves the cheat table to a file, or writes the XML into a stream. Returns nothing at
--- all when called without parameters, or when the first parameter is neither a string
--- nor a `Stream` (LuaHandler.pas:9530-9534).
---@param fileNameOrStream string|Stream
---@param protect boolean? Protect the table. File form only. Defaults to false.
---@param dontDeactivateDesignerForms boolean? Defaults to true.
---@return boolean? success
---@return string? errorMessage
function saveTable(fileNameOrStream, protect, dontDeactivateDesignerForms) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9585
---
--- Signs a saved table file. Windows only; other builds return false plus a message.
---@param filename string
---@return boolean success
---@return string? errorMessage
function signTable(filename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3977
---
--- The *extra* auto attach list: a second, initially empty list that Cheat Engine merges
--- with the list configured in Settings when it looks for a process to attach to
--- (MainUnit.pas:10300, 10301). Reading it back never shows the Settings entries, and
--- emptying it does not stop auto attaching.
---@return StringList list Extra process names Cheat Engine auto attaches to.
---@nodiscard
function getAutoAttachList() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5121
---
--- Creates a scan object.
---@param progressbar ProgressBar? Progress bar to drive. Must be a progress bar or nil,
--- otherwise an error is raised.
---@return MemScan
---@nodiscard
function createMemScan(progressbar) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5145
---@return MemScan memscan The scan object of the main window.
---@nodiscard
function getCurrentMemscan() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5108
---
--- Creates a fresh Lua state. The old one keeps running until it is collected.
function resetLuaState() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5115
function reloadSettingsFromRegistry() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3917
---@param speed number 1.0 is normal speed.
function speedhack_setSpeed(speed) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L3911
---@return number speed
---@nodiscard
function speedhack_getSpeed() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10434
---
--- Applies a deny-all DACL to a process object so other programs can no longer open it.
--- Windows only; a no-op on other builds.
---@param processID integer? Process to protect. Defaults to 0, which means Cheat
--- Engine's own process.
function activateProtection(processID) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5157
---
--- Shows the "support Cheat Engine" ad window docked to a form.
---@param attachWindow CustomForm
---@param hasCloseButton boolean
---@param width integer
---@param height integer
---@param position AdWindowPosition
---@param yourUrl string?
---@param extraParameters string?
---@param percentageShown integer?
function supportCheatEngine(attachWindow, hasCloseButton, width, height, position, yourUrl, extraParameters, percentageShown) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L5221
---
--- Hides the ad window opened by `supportCheatEngine`.
function fuckCheatEngine() end


---------------------------------------------------------------------------------------
-- Extension points
---------------------------------------------------------------------------------------

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9757
---
--- Adds a command the auto assembler will hand to `callback` when it meets it. A line
--- whose text before the first `(` matches the registered name - compared uppercase
--- (autoassembler.pas:2071), and uppercased at registration (autoassembler.pas:281) - is
--- handed to the callback as `f(parameters, syntaxcheckonly)`, where `parameters` is the
--- text between that `(` and the last `)` on the line (autoassembler.pas:2076-2078).
--- Whatever the callback returns replaces the line and may span several lines
--- (autoassembler.pas:2080-2088). Returning nil as the first result and a string as the
--- second makes the assembler fail with that string as the error message
--- (LuaCaller.pas:1204-1205), and an error inside the callback fails the script too
--- (LuaCaller.pas:1210).
---@param command string
---@param callback CECallback `function(parameters, syntaxcheckonly): string` - or `nil, errormessage` to fail the script.
function registerAutoAssemblerCommand(command, callback) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9794
---@param command string
function unregisterAutoAssemblerCommand(command) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9805
---
--- Hooks a stage of the symbol lookup. Note the callback comes first. The callback is
--- called as `f(symbolname)`; return the address as an integer, or nil to decline - nil
--- and a failed call both resolve to 0 (LuaCaller.pas:1368).
---@param callback CECallback `function(symbolname): integer?`
---@param stage SymbolLookupCallbackPoint
---@return integer? id
function registerSymbolLookupCallback(callback, stage) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9843
---@param id integer
function unregisterSymbolLookupCallback(id) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9851
---
--- Lets Lua provide a name for an address the symbol handler cannot name. The callback
--- is called as `f(address)`; return the name as a string, or nil to decline - nil and
--- a failed call both leave the address unnamed (LuaCaller.pas:1350).
---@param callback CECallback `function(address): string?`
---@return integer? id
function registerAddressLookupCallback(callback) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9884
---@param id integer
function unregisterAddressLookupCallback(id) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10011
---
--- Replaces the disassembler output for every address. The callback is wrapped as a
--- `TDisassembleEvent` (LuaHandler.pas:10038) and called as
--- `f(sender, address, ldd, output, description)` (LuaCaller.pas:1155-1167). `sender` is the
--- `Disassembler` doing the work (disassembler.pas:1807 passes `self`) and `ldd` is a
--- `LastDisassembleData` table built from its record (LuaCaller.pas:1151-1153), which at this
--- point has just been cleared with only `address` filled in (disassembler.pas:1771-1787);
--- edit it in place. `output` and `description` are the text produced so far, passed as nil
--- when empty (LuaCaller.pas:1159-1167).
---
--- Return the replacement opcode text plus an optional description. Returning nil as the
--- first result declines: the built-in disassembler handles the address as usual and the
--- `ldd` edits are dropped (LuaCaller.pas:1171). On an accepted result the description falls
--- back to an empty string when the second result is nil and the table is read back into the
--- record (LuaCaller.pas:1174-1181); the disassembler then skips its own decoding and
--- advances by `ldd.Bytes`, forcing a single byte when that array was left empty
--- (disassembler.pas:1809-1813).
---@param callback CECallback `function(sender: Disassembler, address: integer, ldd: LastDisassembleData, output: string?, description: string?): string?, string?`
---@return integer? id
function registerGlobalDisassembleOverride(callback) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10044
---@param id integer
function unregisterGlobalDisassembleOverride(id) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10173
---
--- Adds a Lua assembler that gets a chance before the built-in one. The callback is
--- called as `f(address, instruction)` and returns the encoded bytes as a table.
--- Anything that is not a table, and a failed call, leave the byte list empty, which is
--- how the callback declines the instruction (LuaCaller.pas:1593).
---@param callback CECallback `function(address, instruction): ByteTable?`
---@return integer? id
function registerAssembler(callback) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10205
---@param id integer
function unregisterAssembler(id) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10213
---
--- Adds a callback that can prepend lines to every auto assembler script. The callback
--- is called as `f(code, syntaxcheckonly)`, where `code` is the script as a `Strings`
--- object to be edited in place; no return value is read (LuaCaller.pas:1626).
---
--- Pass the callback as a function whenever you also pass `postAOB`. The string form is
--- broken in that combination: LuaHandler.pas:10235 reads the routine name with
--- `lua_tostring(L,-1)` instead of index 1 - unlike every sibling here, which use index 1
--- (LuaHandler.pas:9829, LuaHandler.pas:9872, LuaHandler.pas:10194) - so with two
--- arguments it reads `postAOB`. `lua_tostring` on a boolean returns nil (lua.pas:654),
--- leaving the routine name empty, so `pushFunction` looks up the global `''`
--- (LuaCaller.pas:352) and the `lua_pcall` at LuaCaller.pas:1635 fails silently - while the
--- id still comes back as if it had worked.
---@param callback CECallback `function(code: Strings, syntaxcheckonly: boolean)`
---@param postAOB boolean? Run after AOB scans are resolved. Defaults to false.
---@return integer? id
function registerAutoAssemblerPrologue(callback, postAOB) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10251
---@param id integer
function unregisterAutoAssemblerPrologue(id) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L13012
---
--- Adds an entry to the auto assembler template menu. The callback is called as
--- `f(script, sender)`, where `script` is the editor's lines as a `Strings` object to be
--- edited in place and `sender` is the auto assembler window: `t.m(assemblescreen.Lines,
--- self)` at frmautoinjectunit.pas:582, from the `TfrmAutoInject` declared at
--- frmautoinjectunit.pas:209. That is the only call site in the source, so `sender` is
--- always an `AutoAssemblerForm`. No return value is read (LuaCaller.pas:1641).
---@param name string Menu caption.
---@param callback CECallback `function(script: Strings, sender: AutoAssemblerForm)`
---@param shortcut integer|string? Shortcut value or text. Defaults to none.
---@return integer? id
function registerAutoAssemblerTemplate(name, callback, shortcut) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L13058
---@param id integer
function unregisterAutoAssemblerTemplate(id) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10051
---
--- Overrides how the structure dissector builds a structure. The callback is called as
--- `f(structure, address)` with the `Structure` being filled in, and returns true when it
--- handled the dissect: a true return stops the remaining overrides and skips the built-in
--- `autoGuessStruct` (StructuresFrm2.pas:1456, 1460-1461). An error inside the callback is
--- not swallowed - it is re-raised as "StructureDissectEvent: Lua Function error(...)"
--- (LuaCaller.pas:1232).
---@param callback CECallback `function(structure: Structure, address: integer): boolean`
---@return integer? id
function registerStructureDissectOverride(callback) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10084
---@param id integer
function unregisterStructureDissectOverride(id) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10092
---
--- Lets Lua name a structure the dissector found. The callback is called as `f(address)`
--- and is asked for two results: the name, and optionally a replacement address.
--- Returning nil as the first result declines the lookup (LuaCaller.pas:1398). A non-nil
--- second result is written back over the address that was passed in
--- (LuaCaller.pas:1403-1404); the automatic-naming path then stores it on the structure's
--- first column (StructuresFrm2.pas:4664-4667), while `lookupStructureName` discards it
--- (StructuresFrm2.pas:950, :964).
---@param callback CECallback `function(address): name, address?`
---@return integer? id
function registerStructureNameLookup(callback) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10124
---@param id integer
function unregisterStructureNameLookup(id) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10132
---
--- Called whenever the global structure list changes. The callback is wrapped as a
--- `TNotifyEvent` (LuaHandler.pas:10159), so it is called as `f(sender)` with no other
--- arguments and no return value read (`lua_pcall(L, 1, 0, 0)` at LuaCaller.pas:437).
---
--- `sender` is the `Structure` that was renamed when the notification comes from
--- `TDissectedStruct.setName` (StructuresFrm2.pas:1573), and the `DissectedStructs` list
--- itself when an entry is added to or removed from it - the observer attached at
--- StructuresFrm2.pas:7638 forwards its own sender (StructuresFrm2.pas:7630). That list is a
--- bare `TList` (StructuresFrm2.pas:687), which no `luaclass_register` call binds, so
--- `findBestClassForObject` falls back to the always-registered `TObject`
--- (LuaClass.pas:136, LuaObject.pas:511) and it arrives as a plain `Object`. The notification
--- only ever fires on the main thread - off it, Cheat Engine raises `Structure access outside
--- of main thread is not allowed. Synchronize first` (StructuresFrm2.pas:876-877).
---@param callback CECallback `function(sender: Structure|Object)`
---@return integer? id
function registerGlobalStructureListUpdateNotification(callback) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10164
---@param id integer
function unregisterGlobalStructureListUpdateNotification(id) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9892
---
--- Adds a Lua provided structure list and the element list for its entries. Argument 1
--- becomes the structure list callback and argument 2 the element list callback
--- (LuaHandler.pas:9936).
---
--- `structureListCallback` is called as `f(max)` with the greatest number of entries wanted,
--- or -1 for no limit (LuaCaller.pas:1430-1431). Return an array of tables, each with a
--- `name` string and the two integers `id1` and `id2` that identify the type
--- (LuaCaller.pas:1446-1465); Cheat Engine stops reading once `max` entries have been
--- collected (LuaCaller.pas:1468).
---
--- `elementListCallback` is called as `f(id1, id2)` with the pair from that entry
--- (LuaCaller.pas:1500-1502). Return an array of tables, each with a `name` string, an
--- `offset` integer and a `vartype` integer - a `vt*` constant, cast to `TVariableType`
--- (LuaCaller.pas:1514-1531).
---
--- Either callback fails the whole lookup by returning something that is not a table, or a
--- table holding a non-table element (LuaCaller.pas:1433, LuaCaller.pas:1444,
--- LuaCaller.pas:1504, LuaCaller.pas:1512).
---@param structureListCallback CECallback `function(max: integer): {name: string, id1: integer, id2: integer}[]`
---@param elementListCallback CECallback `function(id1: integer, id2: integer): {name: string, offset: integer, vartype: integer}[]`
---@return integer? id
function registerStructureAndElementListCallback(structureListCallback, elementListCallback) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9942
---@param id integer
function unregisterStructureAndElementListCallback(id) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9951
---
--- Hooks speedhack activation and speed changes. Argument 1 becomes the activation
--- handler and argument 2 the set-speed handler (LuaHandler.pas:9994). Both are asked
--- for three results: whether the callback handled the request, whether it succeeded,
--- and an error message. The second is read only when the first is true, and the third
--- only when the second is false (LuaCaller.pas:1546, LuaCaller.pas:1570). Returning
--- true makes Cheat Engine skip its own speedhack for that call, and a false second
--- result then raises the third as an exception (speedhack2.pas:123-127,
--- speedhack2.pas:604-608).
---@param onActivate CECallback `function(): handled, success, errormessage` - called with no arguments when the speedhack is activated (LuaCaller.pas:1570).
---@param onSetSpeed CECallback `function(speed): handled, success, errormessage` - called with the requested speed multiplier (LuaCaller.pas:1546).
---@return integer? id
function registerSpeedhackCallbacks(onActivate, onSetSpeed) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10000
---@param id integer
function unregisterSpeedhackCallbacks(id) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L13484
---
--- Adds a checkbox captioned `featurename` to the "generate trainer" window
--- (frmExeTrainerGeneratorUnit.pas:801-803) and runs `callback` while the trainer is
--- built. It only runs when the user ticked that checkbox
--- (frmExeTrainerGeneratorUnit.pas:441), and only for a full trainer - the "tiny" build
--- skips the whole archive step it sits in (frmExeTrainerGeneratorUnit.pas:325,
--- frmExeTrainerGeneratorUnit.pas:498-499).
---
--- The callback is called with no arguments and one result is read
--- (`lua_pcall(luavm, 0,1,0)` at frmExeTrainerGeneratorUnit.pas:446). Return an array of
--- tables naming extra files to bundle into the trainer: each entry needs a `PathToFile`
--- string, and may add a `RelativePath` string naming the folder the file is unpacked
--- into, which is only read when `PathToFile` is not empty and defaults to the trainer's
--- own folder (frmExeTrainerGeneratorUnit.pas:458-478). A result that is not a table, and
--- an entry that is not a table, add nothing (frmExeTrainerGeneratorUnit.pas:448,
--- frmExeTrainerGeneratorUnit.pas:455).
---@param featurename string
---@param callback function `function(): {PathToFile: string, RelativePath: string?}[]` - must be a function, a name is not accepted here.
---@return integer? id
function registerEXETrainerFeature(featurename, callback) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L13509
---@param id integer
function unregisterEXETrainerFeature(id) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15069
---
--- Adds a word to the Lua syntax highlighter's function list.
---@param name string
function registerLuaFunctionHighlight(name) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15077
---@param name string
function unregisterLuaFunctionHighlight(name) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10741
---
--- Registers an external binutils toolchain and adds it to the memory viewer menu.
---@param definition BinUtilDefinition
function registerBinUtil(definition) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8409
---
--- Replaces the value type guesser used when adding addresses. The callback is called
--- as `f(address, originalVariableType)` with the type Cheat Engine guessed by itself,
--- and returns the variable type to use (a `vtByte`-style constant). A failed call
--- keeps the original type (LuaCaller.pas:727).
---@param callback CECallback? `function(address, originalVariableType): integer`. nil clears the handler.
function onAutoGuess(callback) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8446
---
--- Called whenever a plugin changes one of the API pointers. The callback is wrapped as a
--- `TNotifyEvent` (LuaHandler.pas:8466, :8474), so it runs as `f(sender)` and its return
--- value is discarded (`lua_pcall(L, 1, 0, 0)` at LuaCaller.pas:437). Every call site passes
--- nil - `TPluginHandler.handlechangedpointers` (plugin.pas:1818-1819) and the two GDB server
--- paths (ProcessWindowUnit.pas:747, :835) - and `luaclass_newClass` pushes nil for a nil
--- object (LuaClass.pas:208-218), so `sender` is always nil.
---
--- One handler at a time: this writes the single `plugin.onAPIPointerChange` global
--- (plugin.pas:910), which Cheat Engine overwrites itself when it attaches to a GDB server
--- target (ProcessWindowUnit.pas:746, :834) and when the network interface initialises
--- (networkInterfaceApi.pas:432-434, which saves the previous handler at :430 and never
--- calls it again).
---@param callback CECallback? `function(sender)` - `sender` is always nil. nil clears the handler.
function onAPIPointerChange(callback) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8483
---
--- Replaces one of the memory access APIs with the routine at `address`.
--- Windows only.
---@param apiID APIPointerID
---@param address CEAddress
function setAPIPointer(apiID, address) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9114
---
--- Loads and enables a Cheat Engine plugin DLL.
---@param path string
---@return integer? pluginID nil when loading failed.
function loadPlugin(path) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L9742
---
--- Starts a named pipe server that lets another process run Lua here. Windows only.
---@param name string? Defaults to "cheatenginebla".
function openLuaServer(name) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10416
---
--- Stores the value on top of the stack in the registry and returns its reference.
---@param value any
---@return integer ref
function createRef(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10422
---
--- Reads back a value stored by `createRef`.
---
--- Main Lua state only. LuaHandler.pas:10424 is
--- `lua_rawgeti(Luavm, LUA_REGISTRYINDEX, lua_tointeger(L,1))`: it takes the reference from
--- the calling state but pushes the value onto the main state, while `result:=1` still
--- reports one return value to the caller, so the caller gets its own stack top back. Inside
--- a `createNativeThread` body the calling state is the coroutine `lua_newthread` created
--- (LuaThread.pas:252, run at LuaThread.pas:146), so there `getRef(ref)` hands back `ref`
--- itself and leaves the value stranded on the main state's stack. `createRef`
--- (LuaHandler.pas:10418) and `destroyRef` (LuaHandler.pas:10430) both use the calling state
--- and work from a native thread, whose registry is shared with the main state.
---@param ref integer
---@return any value
---@nodiscard
function getRef(ref) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L10428
---@param ref integer
function destroyRef(ref) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15822
---
--- Reads a global from the main Lua state. Useful from a secondary state.
---@param name string
---@return boolean|number|string|userdata|nil value
---@nodiscard
function getGlobalVariable(name) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L15850
---
--- Writes a global into the main Lua state. Only nil, boolean, number, string and
--- userdata are supported; anything else returns nothing.
---
--- Light userdata is broken: LuaHandler.pas:15861 pushes onto the calling state and reads
--- from the main state, the reverse of every other branch, so nothing reaches the main
--- state and `lua_setglobal` at LuaHandler.pas:15868 stores whatever already sat on top of
--- it, while the call still reports success. `getGlobalVariable` hands back every userdata
--- global as light userdata (LuaHandler.pas:15837, :15840), so feeding one of its results
--- straight back in lands on this path.
---@param name string
---@param value boolean|number|string|userdata|nil
---@return true? success
function setGlobalVariable(name, value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8897
---
--- Wraps an integer as a Cheat Engine userdata object.
---@param value integer
---@return userdata?
---@nodiscard
function integerToUserData(value) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L8915
---@param object userdata
---@return integer? pointer
---@nodiscard
function userDataToInteger(object) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14514
---
--- Enables or disables the passive Lua garbage collection timer.
---@param state boolean
function gc_setPassive(state) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14514
---
--- Registered as an alias of `gc_setPassive`, so it drives the passive timer, not the
--- active one.
---@param state boolean
function gc_setActive(state) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaHandler.pas#L14514
---
--- Alias of `gc_setPassive`.
---@param state boolean
function gc_setActivate(state) end