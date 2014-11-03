-- Filename: DB_Hero_evolve.lua
-- Author: auto-created by XmlToScript tool.
-- Function: it`s auto-created by XmlToScript tool.

module("DB_Hero_evolve", package.seeall)

keys = {
	"id", "needHeroId", "needHeroRebirth", "needHeroLevel", "afteRevolveTid", "costSilver", "costItems", "costHeros", 
}

Hero_evolve = {
	id_10001 = {10001, 10001, 7, 70, 60001, 1000000, "60019|1000", "10001|1|1,10175|1|1,10004|1|1,10027|1|1,10058|1|1", },
	id_10002 = {10002, 10002, 7, 70, 60002, 1000000, "60019|1000", "10002|1|1", },
	id_10003 = {10003, 10003, 7, 70, 60003, 2000000, "60019|1500", "10003|1|1,10004|1|1,10005|1|1,10026|1|1,10025|1|1", },
	id_10004 = {10004, 10004, 7, 70, 60004, 2000000, "60019|1500", "10004|1|1,10005|1|1,10003|1|1,10022|1|1,10047|1|1", },
	id_10005 = {10005, 10005, 7, 70, 60005, 2000000, "60019|1500", "10005|1|1,10004|1|1,10003|1|1,10023|1|1,10046|1|1", },
	id_10006 = {10006, 10006, 7, 70, 60006, 2000000, "60019|1500", "10189|1|1,10010|1|1,10007|1|1,10030|1|1,10179|1|1", },
	id_10007 = {10007, 10007, 7, 70, 60007, 2000000, "60019|1500", "10007|1|1,10010|1|2,10097|1|1,10032|1|1", },
	id_10008 = {10008, 10008, 7, 70, 60008, 1000000, "60019|1000", "10008|1|1", },
	id_10009 = {10009, 10009, 7, 70, 60009, 1000000, "60019|1000", "10009|1|1,10201|1|1,10007|1|1,10032|1|1,10033|1|1", },
	id_10010 = {10010, 10010, 7, 70, 60010, 2000000, "60019|1500", "10010|1|1,10007|1|2,10031|1|1,10049|1|1", },
	id_10011 = {10011, 10011, 7, 70, 60011, 1000000, "60019|1000", "10011|1|1", },
	id_10012 = {10012, 10012, 7, 70, 60012, 2000000, "60019|1500", "10012|1|1,10013|1|1,10015|1|1,10051|1|1,10070|1|1", },
	id_10013 = {10013, 10013, 7, 70, 60013, 2000000, "60019|1500", "10013|1|1,10015|1|1,10012|1|1,10075|1|1,10035|1|1", },
	id_10014 = {10014, 10014, 7, 70, 60014, 1000000, "60019|1000", "10014|1|1,10172|1|1,10013|1|1,10039|1|1,10037|1|1", },
	id_10015 = {10015, 10015, 7, 70, 60015, 2000000, "60019|1500", "10015|1|1,10013|1|1,10012|1|1,10036|1|1,10050|1|1", },
	id_10016 = {10016, 10016, 7, 70, 60016, 1000000, "60019|1000", "10016|1|1", },
	id_10017 = {10017, 10017, 7, 70, 60017, 2000000, "60019|1500", "10017|1|1,10018|1|1,10019|1|1,10043|1|1,10042|1|1", },
	id_10018 = {10018, 10018, 7, 70, 60018, 2000000, "60019|1500", "10018|1|1,10019|1|1,10017|1|1,10044|1|1,10052|1|1", },
	id_10019 = {10019, 10019, 7, 70, 60019, 2000000, "60019|1500", "10019|1|1,10018|1|1,10017|1|1,10041|1|1,10040|1|1", },
	id_10020 = {10020, 10020, 7, 70, 60020, 1000000, "60019|1000", "10020|1|1,10191|1|1,10017|1|1,10042|1|1,10045|1|1", },
	id_10021 = {10021, 10021, 7, 70, 60021, 1000000, "60019|1000", "10021|1|1", },
	id_10022 = {10022, 10022, 7, 70, 60022, 3000000, "60019|2000", "10022|1|1", },
	id_10023 = {10023, 10023, 7, 70, 60023, 3000000, "60019|2000", "10023|1|1", },
	id_10024 = {10024, 10024, 7, 70, 60024, 3000000, "60019|2000", "10024|1|1", },
	id_10025 = {10025, 10025, 7, 70, 60025, 3000000, "60019|2000", "10025|1|1", },
	id_10026 = {10026, 10026, 7, 70, 60026, 3000000, "60019|2000", "10026|1|1", },
	id_10027 = {10027, 10027, 7, 70, 60027, 3000000, "60019|2000", "10027|1|1,10004|1|1,10005|1|1,10003|1|1,10060|1|1,10058|1|1", },
	id_10028 = {10028, 10028, 7, 70, 60028, 3000000, "60019|2000", "10028|1|1", },
	id_10029 = {10029, 10029, 7, 70, 60029, 3000000, "60019|2000", "10029|1|1,10007|1|1,10010|1|2,10028|1|1,10048|1|1", },
	id_10030 = {10030, 10030, 7, 70, 60030, 3000000, "60019|2000", "10030|1|1", },
	id_10031 = {10031, 10031, 7, 70, 60031, 3000000, "60019|2000", "10031|1|1", },
	id_10032 = {10032, 10032, 7, 70, 60032, 3000000, "60019|2000", "10032|1|1", },
	id_10033 = {10033, 10033, 7, 70, 60033, 3000000, "60019|2000", "10033|1|1", },
	id_10034 = {10034, 10034, 7, 70, 60034, 3000000, "60019|2000", "10034|1|1,10013|1|1,10015|1|1,10012|1|1,10070|1|1,10037|1|1", },
	id_10035 = {10035, 10035, 7, 70, 60035, 3000000, "60019|2000", "10035|1|1", },
	id_10036 = {10036, 10036, 7, 70, 60036, 3000000, "60019|2000", "10036|1|1", },
	id_10037 = {10037, 10037, 7, 70, 60037, 3000000, "60019|2000", "10037|1|1", },
	id_10038 = {10038, 10038, 7, 70, 60038, 3000000, "60019|2000", "10038|1|1", },
	id_10039 = {10039, 10039, 7, 70, 60039, 3000000, "60019|2000", "10039|1|1", },
	id_10040 = {10040, 10040, 7, 70, 60040, 3000000, "60019|2000", "10040|1|1", },
	id_10041 = {10041, 10041, 7, 70, 60041, 3000000, "60019|2000", "10041|1|1", },
	id_10042 = {10042, 10042, 7, 70, 60042, 3000000, "60019|2000", "10042|1|1,10017|1|1,10018|1|1,10019|1|1,10083|1|1,10053|1|1", },
	id_10043 = {10043, 10043, 7, 70, 60043, 3000000, "60019|2000", "10043|1|1", },
	id_10044 = {10044, 10044, 7, 70, 60044, 3000000, "60019|2000", "10044|1|1", },
	id_10045 = {10045, 10045, 7, 70, 60045, 3000000, "60019|2000", "10045|1|1", },
	id_10046 = {10046, 10046, 7, 70, 60046, 3000000, "60019|2000", "10046|1|1", },
	id_10047 = {10047, 10047, 7, 70, 60047, 3000000, "60019|2000", "10047|1|1", },
	id_10048 = {10048, 10048, 7, 70, 60048, 3000000, "60019|2000", "10048|1|1", },
	id_10049 = {10049, 10049, 7, 70, 60049, 3000000, "60019|2000", "10049|1|1", },
	id_10050 = {10050, 10050, 7, 70, 60050, 3000000, "60019|2000", "10050|1|1", },
	id_10051 = {10051, 10051, 7, 70, 60051, 3000000, "60019|2000", "10050|1|1", },
	id_10052 = {10052, 10052, 7, 70, 60052, 3000000, "60019|2000", "10050|1|1", },
	id_10053 = {10053, 10053, 7, 70, 60053, 3000000, "60019|2000", "10050|1|1", },
	id_10058 = {10058, 10058, 7, 70, 60058, 3000000, "60019|2000", "10050|1|1", },
	id_10060 = {10060, 10060, 7, 70, 60060, 3000000, "60019|2000", "10050|1|1", },
	id_10070 = {10070, 10070, 7, 70, 60070, 3000000, "60019|2000", "10050|1|1", },
	id_10075 = {10075, 10075, 7, 70, 60075, 3000000, "60019|2000", "10050|1|1", },
	id_10083 = {10083, 10083, 7, 70, 60083, 3000000, "60019|2000", "10050|1|1", },
	id_10097 = {10097, 10097, 7, 70, 60097, 3000000, "60019|2000", "10050|1|1", },
	id_10179 = {10179, 10179, 7, 70, 60179, 3000000, "60019|2000", "10050|1|1", },
}

local mt = {}
mt.__index = function (table, key)
	for i = 1, #keys do
		if (keys[i] == key) then
			return table[i]
		end
	end
end

function getDataById(key_id)
	local id_data = Hero_evolve["id_" .. key_id]
	if id_data == nil then
		print("don't find data by id " .. key_id)
		return nil
	end
	if getmetatable(id_data) ~= nil then
		return id_data
	end
	setmetatable(id_data, mt)

	return id_data
end

function getArrDataByField(fieldName, fieldValue)
	local arrData = {}
	local fieldNo = 1
	for i=1, #keys do
		if keys[i] == fieldName then
			fieldNo = i
			break
		end
	end
	for k, v in pairs(Hero_evolve) do
		if v[fieldNo] == fieldValue then
			setmetatable (v, mt)
			arrData[#arrData+1] = v
		end
	end

	return arrData
end

function release()
	_G["DB_Hero_evolve"] = nil
	package.loaded["DB_Hero_evolve"] = nil
	package.loaded["db/DB_Hero_evolve"] = nil
end

