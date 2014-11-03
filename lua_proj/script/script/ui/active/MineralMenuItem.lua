-- Filename：	MineralMenuItem.lua
-- Author：		Cheng Liang
-- Date：		2013-8-15
-- Purpose：		menuItem

module("MineralMenuItem", package.seeall)

require "script/model/user/UserModel"
require "script/utils/BaseUI"
require "script/ui/active/MineralUtil"
require "db/DB_Res"

function createMenuItemByData( mineral_data )

    local mineralDesc = nil
	local normalImageName 		= "images/active/mineral/btn_mineral_n.png"
	local hightLightedImageName = "images/active/mineral/btn_mineral_h.png"
    
	if(not table.isEmpty( mineral_data) )then
		-- 本地数据
		require "db/DB_Res"
		mineralDesc = DB_Res.getDataById(tonumber(mineral_data.domain_id))
		
		normalImageName 		= "images/active/mineral/icon/" .. mineralDesc["res_icon"..mineral_data.pit_id]
		hightLightedImageName 	= "images/active/mineral/icon/" .. mineralDesc["res_icon"..mineral_data.pit_id]
	end
	
	local itemImage = CCMenuItemImage:create(normalImageName, hightLightedImageName)
	local itemImageSize = itemImage:getContentSize()
	if( tonumber(mineral_data.uid) >0 ) then
        print("fuck", mineral_data.uid, UserModel.getUserUid())
		if MineralUtil.isMyMineral(mineral_data) then
        -- 为自己占领的矿加特效
            addEffect(itemImage)
        end
        -- 等级
        local level_and_name = {}
        level_and_name[1] = CCSprite:create("images/common/lv.png")
        level_and_name[2] = CCRenderLabel:create(tostring(mineral_data.level) .. "  ", g_sFontName, 22, 1,ccc3(0x00, 0x00, 0x00), type_stroke)
        level_and_name[2]:setColor(ccc3(0xfe, 0xdb, 0x1c))
        level_and_name[3] = CCRenderLabel:create(mineral_data.uname, g_sFontName, 22, 1,ccc3(0x00, 0x00, 0x00), type_stroke)
        local level_and_name_node = BaseUI.createHorizontalNode(level_and_name)
        itemImage:addChild(level_and_name_node)
        level_and_name_node:setAnchorPoint(ccp(0.5, 0.5))
        level_and_name_node:setPosition(ccp(itemImageSize.width * 0.5, itemImageSize.height * 0.2 - 20))
        if mineral_data. domain_type ~= "3" then
            addGuard(itemImage, mineral_data, mineralDesc)
        end
        if mineral_data.guild_name ~= nil then
            local guild_name = CCRenderLabel:create(string.format("[%s]", mineral_data.guild_name), g_sFontName, 22, 1,ccc3(0x00, 0x00, 0x00), type_shadow)
            itemImage:addChild(guild_name)
            guild_name:setColor(ccc3(0xff, 0xf6, 0x00))
            guild_name:setAnchorPoint(ccp(0.5, 0.5))
            guild_name:setPosition(ccp(itemImageSize.width * 0.5, itemImageSize.height * 0.2 - 40))
        end
	else
		local textLabel = CCRenderLabel:create(GetLocalizeStringBy("key_1991"), g_sFontName, 21, 1,ccc3(0x00, 0x00, 0x00), type_stroke)
        textLabel:setAnchorPoint(ccp(0.5, 0.5))
		textLabel:setPosition(ccp(itemImageSize.width * 0.5, itemImageSize.height * 0.2))
		itemImage:addChild(textLabel)
	end
    
	return itemImage
end

-- 为矿加特效
function addEffect(item_image)
    local spellEffectSprite = CCLayerSprite:layerSpriteWithName(
             CCString:create("images/base/effect/copy/fubenkegongji01"), -1,CCString:create(""));
    spellEffectSprite:retain()
    spellEffectSprite:setPosition(item_image:getContentSize().width * 0.5, 40)
    item_image:addChild(spellEffectSprite, -1);
    spellEffectSprite:release()
end

-- 加守卫军标识以及当前收益加成
function addGuard(item_image, mineral_data, mineral_desc, is_small)
    if mineral_data.guards == nil then
        return
    end
    -- 加小人
    local res_attr = mineral_desc["res_attr" .. mineral_data.pit_id]
    local res_attr_arry = string.split(res_attr, ",")
    local guard_limit = tonumber(res_attr_arry[#res_attr_arry])
    local guard_node = CCNode:create()
    item_image:addChild(guard_node)
    guard_node:setPosition(ccp(30, 80))
    for i = 1, guard_limit do
        local guard = nil
        if i <= #mineral_data.guards then
            local guard_info = mineral_data.guards[i]
            if tonumber(guard_info.uid) == UserModel.getUserUid() then
                guard = CCSprite:create("images/active/mineral/self.png")
            else
                guard = CCSprite:create("images/active/mineral/full.png")
            end
        else
            guard = CCSprite:create("images/active/mineral/empty.png")
        end
        guard_node:addChild(guard)
        guard:setPosition(ccp(-i * 20, 0))
    end
    -- 加成
    local addition_node = nil
    if #mineral_data.guards > 0 then
        addition_node = CCNode:create()
        item_image:addChild(addition_node)
        addition_node:setPosition(ccp(item_image:getContentSize().width - 20, 68))
        local arrow = CCSprite:create("images/active/mineral/arrow.png")
        addition_node:addChild(arrow)
        arrow:setAnchorPoint(ccp(0, 0))
        require "db/DB_Normal_config"
        local normal_config = DB_Normal_config.getDataById(1)
        local addition = normal_config.oneHelpArmyEnhance * #mineral_data.guards + GuildDataCache.getGuildCityRewardRate(6).rate * 100
        local addition_lable = CCRenderLabel:create(tonumber(addition) .. "%", g_sFontName, 20, 1, ccc3(0x00, 0x00, 0x00))
        addition_node:addChild(addition_lable)
        addition_lable:setColor(ccc3(0x2a, 0xff, 0x00))
        addition_lable:setAnchorPoint(ccp(0, 0))
        addition_lable:setPosition(ccp(arrow:getContentSize().width, 0))
    end
    if is_small == true then
        guard_node:setPosition(30, 55)
        guard_node:setScale(0.8)
        if addition_node ~= nil then
            addition_node:setScale(0.7)
            addition_node:setPosition(ccp(item_image:getContentSize().width - 20, 55))
        end
    end
end
