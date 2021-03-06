-- Filename: config_PP.lua
-- Author: chao he
-- Date: 2013-09-22
-- Purpose: PP平台配置


module("config", package.seeall)

loginInfoTable = {}

function getFlag( ... )
	return "ppphone"
	-- return "ppcopyphone"
end


function getServerListUrl( ... )
 	return "http://mapifknsg.zuiyouxi.com/phone/serverlistnotice/?".. Platform.getUrlParam()
end 

function getPidUrl( sessionid )
	local url = "http://mapifknsg.zuiyouxi.com/phone/login/"
	if(sessionid == nil)then
        sessionid = Platform.getSdk():callStringFuncWithParam("getSessionId",nil)
    end
	local postString = url .. "?token=" .. sessionid .. Platform.getUrlParam() .. "&bind=" .. g_dev_udid
 	return postString
end 

function getHashUrl( )
 	return "http://mapifknsg.zuiyouxi.com/phone/getHash/"
end 

function getAppId( ... )
	return "1433"
end

function getAppKey( ... )
	return "4a0107e99c0a8d81fddcec3d49491ba6"
end

function getName( ... )
	return GetLocalizeStringBy("key_2421")
end

function getPayParam( coins, payType, amount )
	-- 支付类型枚举(payType)
	kPay_GoldCoins  =  "00"
	kPay_MonthCard  =  "01"
	local dict = CCDictionary:create()
	dict:setObject(CCString:create(coins),"coins")
	dict:setObject(CCString:create(BTUtil:getSvrTimeInterval()),"serverTime")
	dict:setObject(CCString:create(CCUserDefault:sharedUserDefault():getStringForKey("lastLoginGroup")),"groupId")
	dict:setObject(CCString:create(loginInfoTable.uid),"uid")
	dict:setObject(CCString:create(UserModel.getUserUid()),"appUid")
	if( payType ~= nil and payType == kPay_MonthCard )then
	--月卡购买
		local m_amount = 1
	    if( amount ~= nil )then
      		m_amount = amount
    	end
		dict:setObject(CCString:create(m_amount.."月卡"),"title")
  	elseif ( payType ~= nil and payType == kPay_GoldCoins ) then
  	--金币充值
		dict:setObject(CCString:create(coins.."金币"),"title")
  	else
  	--金币充值
  		dict:setObject(CCString:create(coins.."金币"),"title")
  	end
	
	return dict
end

function setLoginInfo( xmlTable )
	loginInfoTable.uid = xmlTable:find("uid")[1]
	loginInfoTable.newuser = xmlTable:find("newuser")[1]
	print("loginInfoTable.uid:",loginInfoTable.uid)
end

--debug conifg

function getPidUrl_debug( sessionid )
	local url = "http://119.255.38.86/phone/login/"
	-- local url = "http://124.205.151.82/phone/login/"
 	if(sessionid == nil)then
        sessionid = Platform.getSdk():callStringFuncWithParam("getSessionId",nil)
    end
	local postString = url .. "?token=" .. sessionid .. Platform.getUrlParam() .. "&bind=" .. g_dev_udid
 	return postString
end 
function getServerListUrl_debug( ... )
 	return "http://119.255.38.86/phone/serverlistnotice/?".. Platform.getUrlParam()
 	-- return "http://124.205.151.82/phone/serverlistnotice/?".. Platform.getUrlParam()
end 

function getAppId_debug( ... )
	return "1605"
	--《巴别PP充值测试》
end

function getAppKey_debug( ... )
	return "63116dcfc726ce64d073a9240dce92a6"
end
