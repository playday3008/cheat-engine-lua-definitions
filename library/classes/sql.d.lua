---@meta
---
--- classes / sql
---
--- Generated from the Cheat Engine source; every declaration carries a @source link.
---
--- Part of the Cheat Engine LuaLS definitions. Every file under `types/` shares one
--- namespace, so declarations here may refer to types declared in any other file.

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L848
---
--- Pascal class: `TDataset`.
---@class Dataset : Component
---@field BlockReadSize integer
---@field BOF boolean Read-only.
---@field CanModify boolean Read-only.
---@field DefaultFields boolean Read-only.
---@field EOF boolean Read-only.
---@field FieldCount integer Read-only.
---@field Fields Fields Read-only.
---@field Found boolean Read-only.
---@field Modified boolean Read-only.
---@field IsUniDirectional boolean Read-only.
---@field RecordCount integer Read-only.
---@field RecNo integer
---@field Filter string
---@field Filtered boolean
---@field FilterOptions string A `TFilterOptions` set, read and written as its set string. `dataset_getFilterOptions` builds it with `SetToString(..., true)` (LuaSQL.pas:625), which emits the bracketed form, and `dataset_setFilterOptions` parses it back with `StringToSet` (LuaSQL.pas:634).
---@field Active boolean
---@field AutoCalcFields boolean
---@field FieldValues table<string, any>
local Dataset = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L662
---@overload fun()
function Dataset:append() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L668
---@overload fun()
function Dataset:cancel() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L674
---@overload fun()
function Dataset:checkBrowseMode() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L680
---@overload fun()
function Dataset:clearFields() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L686
---@overload fun()
function Dataset:close() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L692
---@return boolean
---@overload fun(): boolean
function Dataset:controlsDisabled() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L698
---@overload fun()
function Dataset:cursorPosChanged() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L704
---@overload fun()
function Dataset:delete() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L710
---@overload fun()
function Dataset:disableControls() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L716
---@overload fun()
function Dataset:edit() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L722
---@overload fun()
function Dataset:enableControls() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L728
---@param name string
---@return Field
---@overload fun(name: string): Field
function Dataset:fieldByName(name) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L734
---@param fieldname string
---@return Field? field Nil when the dataset has no field with that name. Unlike `fieldByName`, this does not raise.
---@overload fun(fieldname: string): Field?
function Dataset:findField(fieldname) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L740
---@return boolean
---@overload fun(): boolean
function Dataset:findFirst() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L746
---@return boolean
---@overload fun(): boolean
function Dataset:findLast() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L752
---@return boolean
---@overload fun(): boolean
function Dataset:findNext() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L758
---@return boolean
---@overload fun(): boolean
function Dataset:findPrior() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L764
---@overload fun()
function Dataset:first() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L770
---@overload fun()
function Dataset:insert() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L776
---@return boolean
---@overload fun(): boolean
function Dataset:isEmpty() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L782
---@overload fun()
function Dataset:last() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L788
---@param keyfields string
---@param keyvalues any
---@param options string A `TLocateOptions` set string, e.g. `'[loCaseInsensitive,loPartialKey]'`.
---@return boolean
---@overload fun(keyfields: string, keyvalues: any, options: string): boolean
function Dataset:locate(keyfields, keyvalues, options) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L794
---@return any
---@param keyfields string
---@param KeyValues any
---@param ResultFields string
---@overload fun(keyfields: string, KeyValues: any, ResultFields: string): any
function Dataset:lookup(keyfields, KeyValues, ResultFields) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L800
---@param distance integer
---@return integer
---@overload fun(distance: integer): integer
function Dataset:moveBy(distance) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L806
---@overload fun()
function Dataset:next() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L812
---@overload fun()
function Dataset:open() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L818
---@overload fun()
function Dataset:post() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L824
---@overload fun()
function Dataset:prior() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L830
---@overload fun()
function Dataset:refresh() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L836
---@overload fun()
function Dataset:updateCursorPos() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L842
---@overload fun()
function Dataset:updateRecord() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L930
---
--- Pascal class: `TDBDataSet`.
---@class DBDataset : Dataset
---@field Database Database? Nil until a database is assigned.
---@field Transaction DBTransaction? Nil until a transaction is assigned.
local DBDataset = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L967
---
--- Pascal class: `TCustomBufDataset`.
---@class CustomBufDataset : DBDataset
---@field MaxIndexesCount integer
---@field ChangeCount integer Read-only.
---@field ReadOnly boolean
---@field FileName string Published property, reached through the RTTI fallback; the local file the dataset loads from and saves to.
---@field PacketRecords integer Published property, reached through the RTTI fallback; records fetched per packet, `-1` for all at once.
---@field IndexDefs Collection Read-only. Published property, reached through the RTTI fallback.
---@field IndexName string Published property, reached through the RTTI fallback; the active index, by name.
---@field IndexFieldNames string Published property, reached through the RTTI fallback; semicolon-separated field list to sort the buffer on.
---@field UniDirectional boolean Published property, reached through the RTTI fallback.
local CustomBufDataset = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L1485
---
--- Pascal class: `TCustomConnection`.
---
--- The fields below are published Pascal properties of FPC's `TCustomConnection`
--- (`db.pas`, not vendored in this repository), reached through the `lua_getProperty` /
--- `lua_setProperty` RTTI fallbacks `luaclass_index` and `luaclass_newindex` install at
--- LuaClass.pas:578 and LuaClass.pas:494.
---@class CustomConnection : Component
---@field Connected boolean Assigning true opens the connection.
---@field LoginPrompt boolean When true, opening the connection pops the driver's credentials dialog.
---@field AfterConnect CECallback Called as `f(sender)` after the connection has been opened. Published `TNotifyEvent` (LuaCaller.pas:3491), read at LuaObject.pas:209 and assigned at LuaObject.pas:297.
---@field BeforeConnect CECallback Called as `f(sender)` just before the connection is opened. Published `TNotifyEvent` (LuaCaller.pas:3491), reached through the same fallback.
---@field AfterDisconnect CECallback Called as `f(sender)` after the connection has been closed. Published `TNotifyEvent` (LuaCaller.pas:3491), reached through the same fallback.
---@field BeforeDisconnect CECallback Called as `f(sender)` just before the connection is closed. `TNotifyEvent` is one of the method types LuaCaller registers (LuaCaller.pas:3491), so a Lua function can be assigned through the `lua_setProperty` RTTI fallback `luaclass_newindex` installs at LuaClass.pas:494 (its tkMethod branch is LuaObject.pas:297) and read back through the `lua_getProperty` fallback at LuaClass.pas:578 (LuaObject.pas:209).
local CustomConnection = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L334
---@overload fun()
function CustomConnection:open() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L348
---@param force boolean?
---@overload fun(force?: boolean)
function CustomConnection:close(force) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L1043
---
--- Pascal class: `TCustomSQLQuery`.
---@class CustomSQLQuery : CustomBufDataset
---@field Prepared boolean Read-only.
---@field SQLConnection SQLConnection? Nil until a connection is assigned.
---@field SQLTransaction SQLTransaction? Nil until a transaction is assigned.
local CustomSQLQuery = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L1013
---@overload fun()
function CustomSQLQuery:prepare() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L1019
---@overload fun()
function CustomSQLQuery:unprepare() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L1025
---@overload fun()
function CustomSQLQuery:execSQL() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L1031
---@return integer
---@overload fun(): integer
function CustomSQLQuery:rowsAffected() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L1037
---@param paramname string
---@return Param
---@overload fun(paramname: string): Param
function CustomSQLQuery:paramByName(paramname) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L1492
---
--- Pascal class: `TDatabase`.
---
--- `DatabaseName`, `KeepConnection` and `Params` are published Pascal properties of FPC's
--- `TDatabase` (`db.pas`), reached through the `lua_getProperty` RTTI fallback
--- `luaclass_index` installs at LuaClass.pas:578.
---@class Database : CustomConnection
---@field TransactionCount integer Read-only.
---@field DatabaseName string
---@field KeepConnection boolean Keeps the connection open after the last dataset closes.
---@field Params Strings Extra driver-specific connection settings, one `name=value` per line.
local Database = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L1463
---
--- Pascal class: `TDBTransaction`.
---@class DBTransaction : Component
---@field DataBase Database? Nil until a database is assigned.
---@field Active boolean Published property, reached through the RTTI fallback; assigning true starts the transaction.
local DBTransaction = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L389
---@overload fun()
function DBTransaction:closeDataSets() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L1340
---
--- Pascal class: `TField`.
---
--- The fields from `FieldName` down are published Pascal properties of FPC's `TField`
--- (`db.pas`), reached through the `lua_getProperty` RTTI fallback `luaclass_index`
--- installs at LuaClass.pas:578. Enumeration properties read back as the enum member name
--- and accept either that name or the matching ordinal; set properties are bracketed
--- strings.
---@class Field : Component
---@field Value any
---@field DataType string Read-only.
---@field Size integer
---@field AsBoolean boolean
---@field AsByteTable ByteTable
---@field AsInteger integer
---@field AsNumber number
---@field AsString string
---@field Text string
---@field IsNull boolean Read-only.
---@field FieldName string
---@field Index integer The field's position in its `Fields` collection.
---@field ReadOnly boolean
---@field Required boolean
---@field Visible boolean
---@field DisplayLabel string Falls back to `FieldName` when never assigned.
---@field DisplayWidth integer
---@field Alignment string|integer A `TAlignment` member: `taLeftJustify`, `taRightJustify` or `taCenter`.
---@field FieldKind string|integer A `TFieldKind` member: `fkData`, `fkCalculated`, `fkLookup` or `fkInternalCalc`.
---@field Origin string
---@field ProviderFlags string A `TProviderFlags` set string, e.g. `'[pfInUpdate,pfInWhere]'`. Members: `pfInUpdate`, `pfInWhere`, `pfInKey`, `pfHidden`, `pfRefreshOnInsert`, `pfRefreshOnUpdate`.
---@field HasConstraints boolean Read-only.
---@field CustomConstraint string
---@field ImportedConstraint string
---@field ConstraintErrorMessage string
---@field DefaultExpression string
---@field KeyFields string
---@field LookupDataSet Dataset? Nil until a lookup dataset is assigned.
---@field LookupKeyFields string
---@field LookupResultField string
---@field LookupCache boolean
---@field Lookup boolean Deprecated in the Pascal source; set `FieldKind` to `fkLookup` instead.
local Field = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L1421
---
--- Pascal class: `TFields`.
---@class Fields : Object
---@field Count integer Read-only.
---@field Fields table<integer, Field>
---@field [integer] Field Same as `Fields[index]`. Zero-based: the first field is `fields[0]` and the last is `fields[fields.Count-1]`. `fields_getFields` passes the index straight to the Pascal `TFields.Fields[]` with no offset (LuaSQL.pas:1372), and the unit's own worked example indexes it that way (LuaSQL.pas:81-82).
local Fields = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L1391
---@param field Field
---@overload fun(field: Field)
function Fields:add(field) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L1397
---@overload fun()
function Fields:clear() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L1403
---@param name string
---@return Field
---@overload fun(name: string): Field
function Fields:fieldByName(name) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L1409
---@param fieldno integer The field's `FieldNo`, not its position in the collection.
---@return Field? field Nil when no field in the collection carries that `FieldNo`.
---@overload fun(fieldno: integer): Field?
function Fields:fieldByNumber(fieldno) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L1415
---@param field Field
---@return integer
---@overload fun(field: Field): integer
function Fields:indexOf(field) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L1499
---
--- Pascal class: `TSQLConnection`.
---@class SQLConnection : Database
---@field UserName string Published property, reached through the RTTI fallback.
---@field Password string Published property, reached through the RTTI fallback.
---@field HostName string Published property, reached through the RTTI fallback.
---@field CharSet string Published property, reached through the RTTI fallback.
---@field Role string Published property, reached through the RTTI fallback.
---@field Transaction SQLTransaction? Nil until a transaction is assigned. Published property, reached through the RTTI fallback; the transaction implicit statements run in.
---@field Options string Published property, reached through the RTTI fallback. A `TSQLConnectionOptions` set, read and written as its set string.
---@field LogEvents string Published property, reached through the RTTI fallback. A `TDBEventTypes` set, read and written as its set string.
local SQLConnection = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L212
---@overload fun()
function SQLConnection:startTransaction() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L226
---@overload fun()
function SQLConnection:endTransaction() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L240
---@param sql string
---@overload fun(sql: string)
function SQLConnection:executeDirect(sql) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L295
---@return string[]
---@overload fun(): string[]
function SQLConnection:getTableNames() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L258
---@param tablename string
---@return string[]
---@overload fun(tablename: string): string[]
function SQLConnection:getFieldNames(tablename) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L1510
---
--- Pascal class: `TODBCConnection`.
---@class ODBCConnection : SQLConnection
---@field Driver string Published property, reached through the RTTI fallback; passed to ODBC as the DRIVER connection parameter.
---@field FileDSN string Published property, reached through the RTTI fallback; passed to ODBC as the FILEDSN parameter.
local ODBCConnection = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L1450
---
--- Pascal class: `TParam`.
---
--- The fields from `Name` down are published Pascal properties of FPC's `TParam`
--- (`db.pas`), reached through the `lua_getProperty` RTTI fallback `luaclass_index`
--- installs at LuaClass.pas:578. Enumeration properties read back as the enum member name
--- and accept either that name or the matching ordinal.
---@class Param : CollectionItem
---@field AsBoolean boolean
---@field AsByteTable ByteTable
---@field AsInteger integer
---@field AsNumber number
---@field AsString string
---@field Text string
---@field IsNull boolean Read-only.
---@field Name string This is the name `paramByName` matches against.
---@field Value string `lua_getProperty` has no variant case, so reads and writes both go through the string branch - use `AsInteger`/`AsNumber`/`AsBoolean` for typed access.
---@field DataType string|integer A `TFieldType` member, e.g. `ftString`, `ftInteger`, `ftFloat`. Unlike `Field.DataType` this one is writable.
---@field ParamType string|integer A `TParamType` member: `ptUnknown`, `ptInput`, `ptOutput`, `ptInputOutput` or `ptResult`.
---@field Size integer
---@field Precision integer
---@field NumericScale integer
local Param = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L1440
---
--- Pascal class: `TParams`.
---@class Params : Collection
---@field Items table<integer, Param>
---@field [integer] Param Same as `Items[index]`. Zero-based: the first parameter is `params[0]` and the last is `params[params.Count-1]`. `params_getItem` passes the index straight to the Pascal `TParams.Items[]` with no offset (LuaSQL.pas:1186) and `params_addMetaData` chains `collection_addMetaData` (LuaSQL.pas:1442), so the base is `TCollection`'s - the FPC db and RTL units are not vendored here, so that base is inferred, but `Fields`, wired the same way at LuaSQL.pas:1427, is shown zero-based by the unit's own example at LuaSQL.pas:81-82.
local Params = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L1170
---@param Param Param
---@overload fun(Param: Param)
function Params:addParam(Param) end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L1515
---
--- Pascal class: `TSQLite3Connection`.
---@class SQLite3Connection : SQLConnection
---@field OpenFlags string Published property, reached through the RTTI fallback. A `TSQLiteOpenFlags` set, read and written as its set string, e.g. `'[sofReadWrite,sofCreate]'`; members are sofReadOnly, sofReadWrite, sofCreate, sofNoMutex, sofFullMutex, sofSharedCache, sofPrivateCache, sofURI, sofMemory.
---@field VFS string Published property, reached through the RTTI fallback; the sqlite3 VFS module name to open with.
---@field AlwaysUseBigint boolean Published property, reached through the RTTI fallback.
local SQLite3Connection = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L165
---@overload fun()
function SQLite3Connection:createDB() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L179
---@overload fun()
function SQLite3Connection:dropDB() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L193
---@return integer
---@overload fun(): integer
function SQLite3Connection:getInsertID() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L1072
---
--- Pascal class: `TSQLQuery`.
---@class SQLQuery : CustomSQLQuery
---@field SchemaType string Read-only.
---@field StatementType string Read-only.
---@field SQL StringList Published property, reached through the RTTI fallback; assign the statement with `q.SQL.Text = ...`.
---@field Params Params Published property, reached through the RTTI fallback.
---@field InsertSQL StringList Published property, reached through the RTTI fallback; the statement used to post inserted records.
---@field UpdateSQL StringList Published property, reached through the RTTI fallback; the statement used to post edited records.
---@field DeleteSQL StringList Published property, reached through the RTTI fallback; the statement used to post deleted records.
---@field RefreshSQL StringList Published property, reached through the RTTI fallback; the statement used by `refresh`.
---@field Macros Params Published property, reached through the RTTI fallback.
---@field ParamCheck boolean Published property, reached through the RTTI fallback; when true the SQL text is parsed for `:name` parameters.
---@field MacroCheck boolean Published property, reached through the RTTI fallback.
---@field MacroChar string Published property, reached through the RTTI fallback; a single character, `%` by default.
---@field ParseSQL boolean Published property, reached through the RTTI fallback.
---@field UpdateMode string|integer Published property, reached through the RTTI fallback. A `TUpdateMode` member: `upWhereAll`, `upWhereChanged` or `upWhereKeyOnly`. Reads back as the member name; writes accept either that name or the matching ordinal.
---@field UsePrimaryKeyAsKey boolean Published property, reached through the RTTI fallback.
---@field Options string Published property, reached through the RTTI fallback. A `TSQLQueryOptions` set, read and written as its set string.
---@field DataSource Component? Nil until a datasource is assigned. Published property, reached through the RTTI fallback; the master `TDataSource` this query takes its parameter values from.
---@field Sequence Object Published property, reached through the RTTI fallback; the `TSQLSequence` used to fill an autoinc field.
---@field ServerFilter string Published property, reached through the RTTI fallback; appended to the statement as a server-side WHERE clause.
---@field ServerFiltered boolean Published property, reached through the RTTI fallback.
---@field FieldDefs Collection Published property, reached through the RTTI fallback.
---@field ServerIndexDefs Collection Read-only. Published property, reached through the RTTI fallback.
local SQLQuery = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L1471
---
--- Pascal class: `TSQLTransaction`.
---
--- `Action`, `Params` and `Options` are published Pascal properties of FPC's
--- `TSQLTransaction` (`sqldb.pp`), reached through the `lua_getProperty` RTTI fallback
--- `luaclass_index` installs at LuaClass.pas:578.
---@class SQLTransaction : DBTransaction
---@field SQLConnection SQLConnection? Nil until a connection is assigned. The same slot as `DBTransaction.DataBase`; both properties are registered against `dbtransaction_getDataBase`/`dbtransaction_setDataBase` (LuaSQL.pas:1482).
---@field Action string|integer A `TCommitRollbackAction` member: `caNone`, `caCommit`, `caCommitRetaining`, `caRollback` or `caRollbackRetaining`. Decides what happens to an open transaction when the last dataset closes; defaults to `caRollback`.
---@field Params StringList Driver-specific transaction parameters, one per line.
---@field Options string A `TSQLTransactionOptions` set string. Members: `stoUseImplicit`, `stoExplicitStart`.
local SQLTransaction = {}

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L395
---@overload fun()
function SQLTransaction:commit() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L409
---@overload fun()
function SQLTransaction:commitRetaining() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L423
---@overload fun()
function SQLTransaction:rollback() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L437
---@overload fun()
function SQLTransaction:rollbackRetaining() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L451
---@overload fun()
function SQLTransaction:startTransaction() end

---@source https://github.com/cheat-engine/cheat-engine/blob/ec45d5f47f92a239ba0bf51ec5d04a7509c3fd37/Cheat%20Engine/LuaSQL.pas#L465
---@overload fun()
function SQLTransaction:endTransaction() end
