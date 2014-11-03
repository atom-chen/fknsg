-- Filename: DB_Xiaofei_leiji.lua
-- Author: auto-created by XmlToScript tool.
-- Function: it`s auto-created by XmlToScript tool.

module("DB_Xiaofei_leiji", package.seeall)

keys = {
	"id", "des", "expenseGold", "reward", 
}

Xiaofei_leiji = {
	id_1 = {1, nil, 500, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5", },
	id_2 = {2, nil, 1000, "1|0|200000,14|5010101|1,7|30003|5,7|30013|5,7|60006|5", },
	id_3 = {3, nil, 2000, "1|0|300000,14|5010101|1,7|60007|100,7|60002|500,7|60006|10,13|40001|15", },
	id_4 = {4, nil, 5000, "1|0|400000,7|30201|1,7|501010|1,7|30003|10,7|30013|10,7|60006|20", },
	id_5 = {5, nil, 10000, "1|0|500000,14|5015021|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,13|40001|30", },
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
	local id_data = Xiaofei_leiji["id_" .. key_id]
	if id_data == nil then
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
	for k, v in pairs(Xiaofei_leiji) do
		if v[fieldNo] == fieldValue then
			setmetatable (v, mt)
			arrData[#arrData+1] = v
		end
	end

	return arrData
end

function release()
	_G["DB_Xiaofei_leiji"] = nil
	package.loaded["DB_Xiaofei_leiji"] = nil
	package.loaded["db/DB_Xiaofei_leiji"] = nil
end

