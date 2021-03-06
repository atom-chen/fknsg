-- FileName: CityService.lua 
-- Author: licong 
-- Date: 14-4-18 
-- Purpose: function description of module 


module("CityService", package.seeall)

-- 得到城池信息
-- callbackFunc:回调
function getCityInfo( cityId, callbackFunc )
	local function requestFunc( cbFlag, dictData, bRet )
		print ("getCityInfo---后端数据")
		if(bRet == true)then
			print_t(dictData.ret)
			local dataRet = dictData.ret
			-- 回调
			if(callbackFunc)then
				callbackFunc( dataRet )
			end
		end
	end
	local args = CCArray:create()
	args:addObject(CCInteger:create(tonumber(cityId)))
	Network.rpc(requestFunc, "citywar.getCityInfo", "citywar.getCityInfo", args, true)
end


-- 报名
-- callbackFunc:回调
function signup( cityId, callbackFunc )
	local function requestFunc( cbFlag, dictData, bRet )
		print ("signup---后端数据")
		if(bRet == true)then
			print_t(dictData.ret)
			local dataRet = dictData.ret
			-- 回调
			if(callbackFunc)then
				callbackFunc( dataRet )
			end
		end
	end
	local args = CCArray:create()
	args:addObject(CCInteger:create(tonumber(cityId)))
	Network.rpc(requestFunc, "citywar.signup", "citywar.signup", args, true)
end


-- 报名列表 返回前10
-- callbackFunc:回调
function getCitySignupList( cityId, guildId, callbackFunc )
	local function requestFunc( cbFlag, dictData, bRet )
		print ("getCitySignupList---后端数据")
		if(bRet == true)then
			print_t(dictData.ret)
			local dataRet = dictData.ret
			
			-- 回调
			if(callbackFunc)then
				callbackFunc( dataRet )
			end
		end
	end
	local args = CCArray:create()
	args:addObject(CCInteger:create(tonumber(cityId)))
	args:addObject(CCInteger:create(tonumber(guildId)))
	Network.rpc(requestFunc, "citywar.getCitySignupList", "citywar.getCitySignupList", args, true)
end


-- 城池领奖
-- callbackFunc:回调
function getReward( cityId, callbackFunc )
	local function requestFunc( cbFlag, dictData, bRet )
		print ("getReward---后端数据")
		if(bRet == true)then
			print_t(dictData.ret)
			local dataRet = dictData.ret
			if(dataRet.ret == "ok")then
				-- 回调
				if(callbackFunc)then
					callbackFunc( dataRet )
				end
			end
		end
	end
	local args = CCArray:create()
	args:addObject(CCInteger:create(tonumber(cityId)))
	Network.rpc(requestFunc, "citywar.getReward", "citywar.getReward", args, true)
end






