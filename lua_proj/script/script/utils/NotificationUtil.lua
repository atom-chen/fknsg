--Filename:	NotificationUtil.lua
--Author:	chengliang
--Date:		2013/12/17
--Purpose:	通知的相关方法

module ("NotificationUtil", package.seeall)

require "script/utils/TimeUtil"

------------ 吃烧鸡 -----------------
local kChickenEnergy_key_noon 		= "chicken_energy_key_noon"			-- 中午吃鸡腿
local kChickenEnergy_key_evening 	= "chicken_energy_key_evening"		-- 晚上吃鸡腿

local chickenEnergy_body			= GetLocalizeStringBy("key_1577") 	-- 通知文本

-- if(BTUtil:isAppStore() == true ) then
-- 	chickenEnergy_body = GetLocalizeStringBy("key_2580")
-- end


-- 中午吃鸡腿
function addChickenEnergyNotification_noon()
    local noonTimeInterval = TimeUtil.getDevIntervalByTime(115900) 	
	local curTimeInterval = TimeUtil.getSvrTimeByOffset()
	local fireTimeInterval = 0
	if(curTimeInterval>noonTimeInterval)then
	 	fireTimeInterval = noonTimeInterval + 3600 * 24
	else
		fireTimeInterval = noonTimeInterval
	end
	NotificationManager:addLocalNotificationBy(kChickenEnergy_key_noon, chickenEnergy_body, fireTimeInterval, kCFCalendarUnitDay_BT)
end

-- 晚上吃鸡腿
function addChickenEnergyNotification_evening()
    local eveningTimeInterval = TimeUtil.getDevIntervalByTime(175900) 	
	local curTimeInterval = TimeUtil.getSvrTimeByOffset()
	local fireTimeInterval = 0
	if(curTimeInterval>eveningTimeInterval)then
	 	fireTimeInterval = eveningTimeInterval + 3600 * 24
	else
		fireTimeInterval = eveningTimeInterval
	end
	NotificationManager:addLocalNotificationBy(kChickenEnergy_key_evening, chickenEnergy_body, fireTimeInterval, kCFCalendarUnitDay_BT)
end


--------------------------- 体力回复满 -------------------------
local kEnergyRestoreFull_key = "key_energy_restore_full" 			-- 体力回复满
local energy_restore_full_body = GetLocalizeStringBy("key_2454")

-- 体力恢复满通知
function addRestoreEnergyNotification()
	local rest_time = UserModel.getEnergyFullTime()
	if(rest_time <= 0)then
		-- 取消 通知
		NotificationManager:cancelLocalNotificationBy(kEnergyRestoreFull_key)
	else
		local fireTimeInterval = BTUtil:getSvrTimeInterval()+rest_time
		NotificationManager:addLocalNotificationBy(kEnergyRestoreFull_key, energy_restore_full_body, fireTimeInterval, 0)
	end
end


------------------------- 长时间未登录通知 --------------------
local kLongTimeNoSee_key = "key_long_time_no_see"
local body_longTimeNoSee = GetLocalizeStringBy("key_2599")

-- 长时间未登录通知
function addLongTimeNoSeeNotification()
	local longTime = 3600*24*3
	local fireTimeInterval = BTUtil:getSvrTimeInterval()+longTime
	NotificationManager:addLocalNotificationBy(kLongTimeNoSee_key, body_longTimeNoSee, fireTimeInterval, kCFCalendarUnitDay_BT)
end


------------------------- 世界boss开始通知 ----------------------
local kWorldBossStart_key = "key_start_world_boss"
local body_worldBossStart = GetLocalizeStringBy("key_1555")

-- 世界boss开始通知
function addWorldBossStartNotification()
	require "db/DB_Worldboss"
	require "script/ui/boss/BossData"
	local startTimeInterval = TimeUtil.getSvrIntervalByTime(DB_Worldboss.getDataById(1).dayBeginTime+BossData.getBossTimeOffset()) 	
	local curTimeInterval = TimeUtil.getSvrTimeByOffset()
	local fireTimeInterval = 0
	if(curTimeInterval>=startTimeInterval)then
	 	fireTimeInterval = startTimeInterval + 3600 * 24
	else
		fireTimeInterval = startTimeInterval
	end
	NotificationManager:addLocalNotificationBy(kWorldBossStart_key, body_worldBossStart, fireTimeInterval, kCFCalendarUnitDay_BT)

end

-------------------------- 城池资源战报名推送 ---------------------
local kCityResourcesWarSign_key = "key_city_resources_war_sign"
local body_cityResourcesWarSign = GetLocalizeStringBy("key_2742")

-- 城池资源战报名推送
function addCityResourcesWarSignNotification()
	require "script/ui/guild/city/CityData"
	local timesInfo = CityData.getTimeTable()
	if( not table.isEmpty(timesInfo) and timesInfo.signupStart )then
		local fireTimeInterval = tonumber(timesInfo.signupStart) - 60
		if(fireTimeInterval <= BTUtil:getSvrTimeInterval())then
			fireTimeInterval = fireTimeInterval + 86400 * 7
		end
		NotificationManager:addLocalNotificationBy(kCityResourcesWarSign_key, body_cityResourcesWarSign, fireTimeInterval, kCFCalendarUnitWeek_BT)
	end
end

-------------------------- 城池资源战进入战场推送 ---------------------
local kCityResourcesWarEnter_key = "key_city_resources_war_enter"
local body_cityResourcesWarEnter = GetLocalizeStringBy("key_2113")

-- 城池资源战进入战场推送
function addCityResourcesWarEnterNotification()
	require "script/ui/guild/city/CityData"
	local timesInfo = CityData.getTimeTable()
	if( not table.isEmpty(timesInfo) and not table.isEmpty(timesInfo.arrAttack) and timesInfo.arrAttack[1][1]  )then
		local fireTimeInterval = tonumber(timesInfo.arrAttack[1][1]) - 60
		if(fireTimeInterval <= BTUtil:getSvrTimeInterval())then
			fireTimeInterval = fireTimeInterval + 86400 * 7
		end
		NotificationManager:addLocalNotificationBy(kCityResourcesWarEnter_key, body_cityResourcesWarEnter, fireTimeInterval, kCFCalendarUnitWeek_BT)
	end
end

--擂台赛报名推送
function addOlympicRegisterNotification()
	require "script/ui/olympic/OlympicData"
	local fireTimeInterval =OlympicData.getOlympicOpenTime() - 60
	NotificationManager:addLocalNotificationBy("key_olympic_register", 
		GetLocalizeStringBy("lcy_50042"),
		fireTimeInterval, 
		kCFCalendarUnitWeek_BT)
	
end

--擂台赛4强推送
function addOlympicFourNotification()
	require "script/ui/olympic/OlympicData"
	local fireTimeInterval =OlympicData.getOlympicOpenTime() + 600
	NotificationManager:addLocalNotificationBy("key_olympic_four", 
		GetLocalizeStringBy("lcy_50043"), 
		fireTimeInterval, 
		kCFCalendarUnitWeek_BT)
end

--擂台赛冠军推送
function addOlympicChampionNotification()
	require "script/ui/olympic/OlympicData"
	local fireTimeInterval =OlympicData.getOlympicOpenTime() + 900
	NotificationManager:addLocalNotificationBy("key_olympic_champion", 
		GetLocalizeStringBy("lcy_50044"), 
		fireTimeInterval, 
		kCFCalendarUnitWeek_BT)
end



-- 1)	跨服赛开始报名，推送：
function addKufuNotification( ... )
	require "script/ui/LordWar/LordWarData"
	local pushContent = {}
	pushContent[LordWarData.kRegister]      = { des ="1.跨服赛开始报名，推送："         ,content =GetLocalizeStringBy("lcy_50080")}
	pushContent[LordWarData.kInnerAudition] = { des ="2.服内海选赛开始，推送："    		,content =GetLocalizeStringBy("lcy_50081")}
	pushContent[LordWarData.kInner32To16]   = { des ="3.服内16强晋级赛开始，推送："     ,content =GetLocalizeStringBy("lcy_50082")}
	pushContent[LordWarData.kInner16To8]    = { des ="4.服内8强晋级赛开始，推送："      ,content =GetLocalizeStringBy("lcy_50083")}
	pushContent[LordWarData.kInner8To4]     = { des ="5.服内4强晋级赛开始，推送："      ,content =GetLocalizeStringBy("lcy_50084")}
	pushContent[LordWarData.kInner4To2]     = { des ="6.服内半决赛开始，推送："         ,content =GetLocalizeStringBy("lcy_50085")}
	pushContent[LordWarData.kInner2To1]     = { des ="7.服内决赛开始，推送："           ,content =GetLocalizeStringBy("lcy_50086")}
	pushContent[LordWarData.kCrossAudition] = { des ="9.跨服海选赛开始，推送："     	,content =GetLocalizeStringBy("lcy_50087")}
	pushContent[LordWarData.kCross32To16]   = { des ="10.跨服16强晋级赛开始，推送：" 	,content =GetLocalizeStringBy("lcy_50088")}
	pushContent[LordWarData.kCross16To8]    = { des ="11.跨服8强晋级赛开始，推送："  	,content =GetLocalizeStringBy("lcy_50089")}
	pushContent[LordWarData.kCross8To4]     = { des ="12.跨服4强晋级赛开始，推送："  	,content =GetLocalizeStringBy("lcy_50090")}
	pushContent[LordWarData.kCross4To2]     = { des ="13.跨服半决赛开始，推送："        ,content =GetLocalizeStringBy("lcy_50091")}
	pushContent[LordWarData.kCross2To1]     = { des ="14.跨服决赛开始，推送："      	,content =GetLocalizeStringBy("lcy_50092")}
	
	--服内冠军
	pushContent[100]  = { des ="8)	服内产生冠军，推送：",content = GetLocalizeStringBy("lcy_50095")}
	--跨服冠军
	pushContent[101]  = { des ="15)	跨服产生冠军，推送：",content = GetLocalizeStringBy("lcy_50096")}
	
	for k,v in pairs(pushContent) do
		local fireTimeInterval = LordWarData.getRoundStartTime(k) + math.random()%20
		NotificationManager:addLocalNotificationBy("kufu_" .. k, 
			GetLocalizeStringBy(v.content), 
			fireTimeInterval, 
			kCFCalendarUnitEra_BT)
	end
	
	--服内冠军
	local fireTimeInterval = LordWarData.getRoundStartTime(LordWarData.kInner2To1) + LordWarData.getOneTurnIntervalTime()*5 + math.random()%20
		NotificationManager:addLocalNotificationBy("kufu_" .. 100, 
			GetLocalizeStringBy(pushContent[100].content), 
			fireTimeInterval, 
			kCFCalendarUnitEra_BT)
	--跨服冠军
	local fireTimeInterval = LordWarData.getRoundStartTime(LordWarData.kCross2To1) + LordWarData.getOneTurnIntervalTime()*5 + math.random()%20
		NotificationManager:addLocalNotificationBy("kufu_" .. 101, 
			GetLocalizeStringBy(pushContent[101].content), 
			fireTimeInterval, 
			kCFCalendarUnitEra_BT)
end




