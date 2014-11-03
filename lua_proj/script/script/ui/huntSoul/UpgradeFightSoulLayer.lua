-- FileName: UpgradeFightSoulLayer.lua 
-- Author:   Li Cong 
-- Date:     14-2-18 
-- Purpose: function description of module 


module("UpgradeFightSoulLayer", package.seeall)
require "script/ui/huntSoul/HuntSoulData"
require "script/ui/huntSoul/HuntSoulService"
require "script/utils/LevelUpUtil"
require "script/ui/hero/HeroPublicLua"

local _bgLayer 				= nil   
local topBg 				= nil
local _silverLabel 			= nil
local _goldLabel 			= nil
local btnFrameSp 			= nil
local upgradeBtn			= nil
local bulletinLayerSize 	= nil
local closeMenuItem  		= nil
local _tSign 				= nil
local yesMenuItem 			= nil
local cancelMenuItem  		= nil
local _desItemData 			= nil
local _progressSp 			= nil
local allOneMenuItem 		= nil
local allTwoMenuItem 		= nil
local _fsoulData 			= nil
local _fsoulDataButton 		= {}
local _bagTableView 		= nil
local fs_bg 				= nil
local expLabel 				= nil
local maxSprrite 			= nil
local bgProress 			= nil
local _maxLevel 			= nil
local upMaskLayer 			= nil
local upAnimSprite 			= nil
local levelLabel 			= nil
local atrrLabel				= nil
local addLevelLabel  		= nil
local realLevelLabel   		= nil
local addAttrLabel  		= nil
local realAttrLabel  		= nil
local realLevelNum 			= nil
local addLevelNum 			= nil
local realAttrNum     		= nil
local addAttrNum 			= nil
local realExpNum 			= nil
local addExpNum 			= nil
local realNeedNum 			= nil
local addNeedNum 			= nil
local level_font  			= nil
local atrr_font 			= nil
local needHeroLv 			= nil
local chooseMenuItem 		= nil
local oldLeveNum			= nil

-- 初始化
function init( ... )
	_bgLayer 			= nil  
	_bgSprite 			= nil
	topBg 				= nil
	_silverLabel 		= nil
	_goldLabel 			= nil
	btnFrameSp 			= nil
	upgradeBtn			= nil
	bulletinLayerSize 	= nil
	closeMenuItem  		= nil
	_tSign 				= nil
	yesMenuItem 		= nil
	cancelMenuItem  	= nil
	_desItemData 		= nil
	_progressSp 		= nil
	allOneMenuItem 		= nil
	allTwoMenuItem 		= nil
	_fsoulData 			= nil
	_fsoulDataButton 	= {}
	_bagTableView 		= nil
	fs_bg 				= nil
	expLabel 			= nil
	maxSprrite 			= nil
	bgProress 			= nil
	_maxLevel 			= nil
	upMaskLayer 		= nil
	upAnimSprite 		= nil
	levelLabel 			= nil
	atrrLabel			= nil
	addLevelLabel  		= nil
	realLevelLabel   	= nil
	addAttrLabel  		= nil
	realAttrLabel  		= nil
	realLevelNum 		= nil
	addLevelNum 		= nil
	realAttrNum     	= nil
	addAttrNum 			= nil
	realExpNum 			= nil
	addExpNum 			= nil
	realNeedNum 		= nil
	addNeedNum 			= nil
	level_font  		= nil
	atrr_font 			= nil
	chooseMenuItem 		= nil
	oldLeveNum			= nil
end

-- 按钮item
local function createButtonItem( str )
	local normalSprite  =CCScale9Sprite:create("images/common/btn/btn_blue_n.png")
    normalSprite:setContentSize(CCSizeMake(140,64))
    local selectSprite  =CCScale9Sprite:create("images/common/btn/btn_blue_h.png")
    selectSprite:setContentSize(CCSizeMake(140,64))
    local item = CCMenuItemSprite:create(normalSprite,selectSprite)
    -- 字体
	local item_font = CCRenderLabel:create( str , g_sFontPangWa, 30, 1, ccc3( 0x00, 0x00, 0x00), type_stroke)
    item_font:setColor(ccc3(0xfe, 0xdb, 0x1c))
    item_font:setAnchorPoint(ccp(0.5,0.5))
    item_font:setPosition(ccp(item:getContentSize().width*0.5,item:getContentSize().height*0.5))
   	item:addChild(item_font)
   	return item
end

-- 星星 最多6星
function getStarByQuality( num )
	local node = CCNode:create()
	node:setContentSize(CCSizeMake(40*tonumber(num),32))
	for i=1,num do
		local sprite = CCSprite:create("images/common/star.png")
		sprite:setAnchorPoint(ccp(0,0))
		sprite:setPosition(ccp((i-1)*(sprite:getContentSize().width+10),0))
		node:addChild(sprite)
		-- if(i <= tonumber(num))then
			-- local starSprite = CCSprite:create("images/common/star.png")
			-- starSprite:setAnchorPoint(ccp(0.5,0.5))
			-- starSprite:setPosition(ccp(sprite:getContentSize().width*0.5,sprite:getContentSize().height*0.5))
			-- sprite:addChild(starSprite)
		-- end
	end
	return node
end

-- 初始化猎魂界面
function initUpgradeFightSoulLayer( ... )
	-- 公告栏大小
	require "script/ui/main/BulletinLayer"
    bulletinLayerSize = BulletinLayer.getLayerContentSize()

    -- 上标题栏 显示战斗力，银币，金币
	topBg = CCSprite:create("images/hero/avatar_attr_bg.png")
	topBg:setAnchorPoint(ccp(0,1))
	topBg:setPosition(ccp(0, _bgLayer:getContentSize().height-bulletinLayerSize.height*g_fScaleX))
	_bgLayer:addChild(topBg,10)
	topBg:setScale(g_fScaleX)
	
	-- 战斗力
	local powerDescLabel = CCSprite:create("images/common/fight_value.png")
    powerDescLabel:setAnchorPoint(ccp(0.5,0.5))
    powerDescLabel:setPosition(topBg:getContentSize().width*0.13,topBg:getContentSize().height*0.43)
    topBg:addChild(powerDescLabel)
    local _powerDescLabel = CCRenderLabel:create(UserModel.getFightForceValue() , g_sFontName, 23, 1, ccc3( 0x00, 0x00, 0x00), type_stroke)
    _powerDescLabel:setColor(ccc3(0xff, 0xf6, 0x00))
    _powerDescLabel:setPosition(topBg:getContentSize().width*0.23,topBg:getContentSize().height*0.66)
    topBg:addChild(_powerDescLabel)

	-- 银币
	_silverLabel = CCLabelTTF:create(UserModel.getSilverNumber(), g_sFontName, 20)
	_silverLabel:setColor(ccc3(0xe5, 0xf9, 0xff))
	_silverLabel:setAnchorPoint(ccp(0, 0))
	_silverLabel:setPosition(ccp(390, 10))
	topBg:addChild(_silverLabel)

	-- 金币
	_goldLabel = CCLabelTTF:create(UserModel.getGoldNumber(), g_sFontName, 20)
	_goldLabel:setColor(ccc3(0xff, 0xf6, 0x00))
	_goldLabel:setAnchorPoint(ccp(0, 0))
	_goldLabel:setPosition(ccp(522, 10))
	topBg:addChild(_goldLabel)

	--按钮背景
    local fullRect = CCRectMake(0,0,58,99)
	local insetRect = CCRectMake(20,20,18,59)
	btnFrameSp = CCScale9Sprite:create("images/common/menubg.png", fullRect, insetRect)
	btnFrameSp:setPreferredSize(CCSizeMake(640, 100))
	btnFrameSp:setAnchorPoint(ccp(0.5, 1))
	btnFrameSp:setPosition(ccp(_bgLayer:getContentSize().width/2 , _bgLayer:getContentSize().height-topBg:getContentSize().height*g_fScaleX-bulletinLayerSize.height*g_fScaleX))
	_bgLayer:addChild(btnFrameSp,10)
	btnFrameSp:setScale(g_fScaleX)

	local menuBar = CCMenu:create()
	menuBar:setTouchPriority(-230)
	menuBar:setPosition(ccp(0, 0))
	btnFrameSp:addChild(menuBar)
	-- 升级战魂魂
	upgradeBtn = LuaMenuItem.createMenuItemSprite( GetLocalizeStringBy("key_2708"))
	upgradeBtn:setAnchorPoint(ccp(0, 0))
	upgradeBtn:setPosition(ccp(btnFrameSp:getContentSize().width*0.01, btnFrameSp:getContentSize().height*0.1))
	menuBar:addChild(upgradeBtn, 2, 10001)
	-- 禁用按钮
	upgradeBtn:setEnabled(false)
	upgradeBtn:selected()

	-- 大背景
	_bgSprite = CCScale9Sprite:create("images/hunt/upFS_bg.png")
	_bgSprite:setContentSize(CCSizeMake(_bgLayer:getContentSize().width,_bgLayer:getContentSize().height))
    _bgSprite:setAnchorPoint(ccp(0.5,0.5))
    _bgSprite:setPosition(ccp(_bgLayer:getContentSize().width*0.5,_bgLayer:getContentSize().height*0.5))
    _bgLayer:addChild(_bgSprite)

   	-- 返回按钮
	closeMenuItem = CCMenuItemImage:create("images/common/close_btn_n.png","images/common/close_btn_h.png")
	closeMenuItem:setAnchorPoint(ccp(0, 0))
	closeMenuItem:registerScriptTapHandler(fnCloseAction)
	closeMenuItem:setAnchorPoint(ccp(1,0.5))
	closeMenuItem:setPosition(ccp(btnFrameSp:getContentSize().width-20,btnFrameSp:getContentSize().height*0.5))
	menuBar:addChild(closeMenuItem)

	-- -- 确定按钮
 --    yesMenuItem = createButtonItem(GetLocalizeStringBy("key_1985"))
	-- yesMenuItem:registerScriptTapHandler(yesMenuItemAction)
	-- yesMenuItem:setAnchorPoint(ccp(1,0.5))
	-- yesMenuItem:setPosition(ccp(btnFrameSp:getContentSize().width-20,btnFrameSp:getContentSize().height*0.5))
	-- menuBar:addChild(yesMenuItem)
 --    -- 取消按钮
 --    cancelMenuItem = createButtonItem(GetLocalizeStringBy("key_1202"))
	-- cancelMenuItem:registerScriptTapHandler(cancelMenuItemAction)
	-- cancelMenuItem:setAnchorPoint(ccp(1,0.5))
	-- cancelMenuItem:setPosition(ccp(btnFrameSp:getContentSize().width-yesMenuItem:getContentSize().width-50,btnFrameSp:getContentSize().height*0.5))
	-- menuBar:addChild(cancelMenuItem)

	-- 默认显示返回按钮
	-- menuItemSetVisible(true,false)

	-- -- 全选二星
	-- local choose_menuBar = CCMenu:create()
	-- choose_menuBar:setTouchPriority(-230)
	-- choose_menuBar:setPosition(ccp(0, 0))
	-- _bgLayer:addChild(choose_menuBar)
	-- allOneMenuItem = LuaCC.create9ScaleMenuItem("images/common/btn/btn1_d.png","images/common/btn/btn1_n.png",CCSizeMake(198, 73),GetLocalizeStringBy("key_1560"),ccc3(0xfe, 0xdb, 0x1c),35,g_sFontPangWa,1, ccc3(0x00, 0x00, 0x00))
	-- allOneMenuItem:setAnchorPoint(ccp(0.5,0))
	-- allOneMenuItem:setPosition(ccp(_bgLayer:getContentSize().width*0.25,MenuLayer.getHeight()+10*g_fScaleX))
	-- choose_menuBar:addChild(allOneMenuItem)
	-- allOneMenuItem:registerScriptTapHandler(allOneMenuItemAction)
	-- allOneMenuItem:setScale(g_fScaleX)

	-- -- 全选三星
	-- allTwoMenuItem = LuaCC.create9ScaleMenuItem("images/common/btn/btn1_d.png","images/common/btn/btn1_n.png",CCSizeMake(198, 73),GetLocalizeStringBy("key_1431"),ccc3(0xfe, 0xdb, 0x1c),35,g_sFontPangWa,1, ccc3(0x00, 0x00, 0x00))
	-- allTwoMenuItem:setAnchorPoint(ccp(0.5,0))
	-- allTwoMenuItem:setPosition(ccp(_bgLayer:getContentSize().width*0.75,MenuLayer.getHeight()+10*g_fScaleX))
	-- choose_menuBar:addChild(allTwoMenuItem)
	-- allTwoMenuItem:registerScriptTapHandler(allTwoMenuItemAction)
	-- allTwoMenuItem:setScale(g_fScaleX)

	-- 自动选择按钮
	local choose_menuBar = CCMenu:create()
	choose_menuBar:setTouchPriority(-230)
	choose_menuBar:setPosition(ccp(0, 0))
	_bgLayer:addChild(choose_menuBar)
	chooseMenuItem = LuaCC.create9ScaleMenuItem("images/common/btn/btn1_d.png","images/common/btn/btn1_n.png",CCSizeMake(198, 73),GetLocalizeStringBy("key_3138"),ccc3(0xfe, 0xdb, 0x1c),35,g_sFontPangWa,1, ccc3(0x00, 0x00, 0x00))
	chooseMenuItem:setAnchorPoint(ccp(0.5,0))
	chooseMenuItem:setPosition(ccp(_bgLayer:getContentSize().width*0.18,MenuLayer.getHeight()+10*g_fScaleX))
	choose_menuBar:addChild(chooseMenuItem)
	chooseMenuItem:registerScriptTapHandler(chooseMenuItemAction)
	chooseMenuItem:setScale(g_fScaleX)

	-- 确认按钮
	yesMenuItem = LuaCC.create9ScaleMenuItem("images/common/btn/btn1_d.png","images/common/btn/btn1_n.png",CCSizeMake(150, 73),GetLocalizeStringBy("key_2637"),ccc3(0xfe, 0xdb, 0x1c),35,g_sFontPangWa,1, ccc3(0x00, 0x00, 0x00))
	yesMenuItem:setAnchorPoint(ccp(0.5,0))
	yesMenuItem:setPosition(ccp(_bgLayer:getContentSize().width*0.84,MenuLayer.getHeight()+10*g_fScaleX))
	choose_menuBar:addChild(yesMenuItem)
	yesMenuItem:registerScriptTapHandler(yesMenuItemAction)
	yesMenuItem:setScale(g_fScaleX)

	-- 取消按钮 
	cancelMenuItem = LuaCC.create9ScaleMenuItem("images/common/btn/btn1_d.png","images/common/btn/btn1_n.png",CCSizeMake(198, 73),GetLocalizeStringBy("key_2982"),ccc3(0xfe, 0xdb, 0x1c),35,g_sFontPangWa,1, ccc3(0x00, 0x00, 0x00))
	cancelMenuItem:setAnchorPoint(ccp(0.5,0))
	cancelMenuItem:setPosition(ccp(_bgLayer:getContentSize().width*0.53,MenuLayer.getHeight()+10*g_fScaleX))
	choose_menuBar:addChild(cancelMenuItem)
	cancelMenuItem:registerScriptTapHandler(cancelMenuItemAction)
	cancelMenuItem:setScale(g_fScaleX) 
	
	-- 创建战魂信息
	createFightSoulInfo()
	
	-- 创建经验条
	createExpProgress()

	-- 创建战魂背包tableView
	createFSTableView()

end

-- 创建战魂信息
function createFightSoulInfo( ... )
	-- 创建战魂背景
	fs_bg = CCSprite:create("images/hunt/fsoul_bg.png")
	fs_bg:setAnchorPoint(ccp(0.5,0.5))
	local fs_bgPoy = btnFrameSp:getPositionY()-btnFrameSp:getContentSize().height*g_fScaleX- fs_bg:getContentSize().height*0.5*g_fScaleX
	fs_bg:setPosition(ccp(_bgLayer:getContentSize().width*0.23,fs_bgPoy))
	_bgLayer:addChild(fs_bg)
	fs_bg:setScale(g_fScaleX)

	-- 战魂icon
	local iconSprite = ItemSprite.getItemSpriteByItemId(_desItemData.item_template_id,_desItemData.va_item_text.fsLevel,false)
	iconSprite:setAnchorPoint(ccp(0.5,0.5))
	iconSprite:setPosition(ccp(fs_bg:getContentSize().width*0.5,fs_bg:getContentSize().height*0.5))
	fs_bg:addChild(iconSprite)

	-- 星星
	local star_sprite = getStarByQuality(_desItemData.itemDesc.quality)
	star_sprite:setAnchorPoint(ccp(0.5,0))
	star_sprite:setPosition(ccp(fs_bg:getContentSize().width*0.5,0))
	fs_bg:addChild(star_sprite)

	-- 战魂名字
	local name_color = HeroPublicLua.getCCColorByStarLevel(_desItemData.itemDesc.quality)
 	local nameLabel = CCRenderLabel:create(_desItemData.itemDesc.name, g_sFontPangWa, 24, 1, ccc3( 0x00, 0x00, 0x00), type_stroke)
    nameLabel:setColor(name_color)
    nameLabel:setAnchorPoint(ccp(0.5,1))
    nameLabel:setPosition(ccp(400,fs_bg:getContentSize().height*0.8))
    fs_bg:addChild(nameLabel,2)
    -- 分割线
    local lineSprite = CCScale9Sprite:create("images/hunt/brownline.png")
    lineSprite:setContentSize(CCSizeMake(185,4))
    lineSprite:setAnchorPoint(ccp(0.5,1))
    lineSprite:setPosition(ccp(nameLabel:getPositionX(),nameLabel:getPositionY()-nameLabel:getContentSize().height-3))
    fs_bg:addChild(lineSprite,2)

    -- 基础类型
    local leixing_font = CCRenderLabel:create( GetLocalizeStringBy("key_2519") , g_sFontPangWa, 24, 1, ccc3( 0x00, 0x00, 0x00), type_stroke)
    leixing_font:setColor(ccc3(0xff,0xe4,0x00))
    leixing_font:setAnchorPoint(ccp(0,1))
    leixing_font:setPosition(ccp(310,lineSprite:getPositionY()-lineSprite:getContentSize().height-10))
    fs_bg:addChild(leixing_font,2)
	-- 类型
 	local leixingLabel = CCRenderLabel:create(_desItemData.itemDesc.desc, g_sFontPangWa, 24, 1, ccc3( 0x00, 0x00, 0x00), type_stroke)
    leixingLabel:setColor(ccc3(0xff,0xff,0xff))
    leixingLabel:setAnchorPoint(ccp(0,1))
    leixingLabel:setPosition(ccp(leixing_font:getPositionX()+leixing_font:getContentSize().width+5,leixing_font:getPositionY()))
    fs_bg:addChild(leixingLabel)
    -- 分割线
    local lineSprite = CCScale9Sprite:create("images/hunt/brownline.png")
    lineSprite:setContentSize(CCSizeMake(185,4))
    lineSprite:setAnchorPoint(ccp(0,1))
    lineSprite:setPosition(ccp(leixing_font:getPositionX()-5,leixing_font:getPositionY()-leixing_font:getContentSize().height-3))
    fs_bg:addChild(lineSprite,2)

    -- 等级
    level_font = CCRenderLabel:create( GetLocalizeStringBy("key_1178") , g_sFontPangWa, 24, 1, ccc3( 0x00, 0x00, 0x00), type_stroke)
    level_font:setColor(ccc3(0xff,0xe4,0x00))
    level_font:setAnchorPoint(ccp(0,1))
    level_font:setPosition(ccp(leixing_font:getPositionX(),lineSprite:getPositionY()-lineSprite:getContentSize().height-10))
    fs_bg:addChild(level_font,2)
	-- 等级
	realLevelNum = tonumber(_desItemData.va_item_text.fsLevel)
 	levelLabel = CCRenderLabel:create("Lv." .. _desItemData.va_item_text.fsLevel, g_sFontPangWa, 24, 1, ccc3( 0x00, 0x00, 0x00), type_stroke)
    levelLabel:setColor(ccc3(0xff,0xff,0xff))
    levelLabel:setAnchorPoint(ccp(0,1))
    levelLabel:setPosition(ccp(level_font:getPositionX()+level_font:getContentSize().width+5,level_font:getPositionY()))
    fs_bg:addChild(levelLabel)
    -- 分割线
    local lineSprite = CCScale9Sprite:create("images/hunt/brownline.png")
    lineSprite:setContentSize(CCSizeMake(185,4))
    lineSprite:setAnchorPoint(ccp(0,1))
    lineSprite:setPosition(ccp(level_font:getPositionX()-5,level_font:getPositionY()-level_font:getContentSize().height-3))
    fs_bg:addChild(lineSprite,2)

    -- 属性
    -- 获得相关数值
	local cur_tData = HuntSoulData.getFightSoulAttrByItem_id( tonumber(_desItemData.item_id) )
	local displayName = "xxx"
	local displayNum = "0"
	for k,v in pairs(cur_tData) do
		displayName = v.desc.displayName
		displayNum = v.displayNum
	end
	if(not table.isEmpty(cur_tData) ) then
	    atrr_font = CCRenderLabel:create(displayName .. ":", g_sFontPangWa, 24, 1, ccc3( 0x00, 0x00, 0x00), type_stroke)
	    atrr_font:setColor(ccc3(0xff,0xe4,0x00))
	    atrr_font:setAnchorPoint(ccp(0,1))
	    atrr_font:setPosition(ccp(leixing_font:getPositionX(),lineSprite:getPositionY()-lineSprite:getContentSize().height-10))
	    fs_bg:addChild(atrr_font,2)
		-- 属性值
		realAttrNum = displayNum
	 	atrrLabel = CCRenderLabel:create(displayNum, g_sFontPangWa, 24, 1, ccc3( 0x00, 0x00, 0x00), type_stroke)
	    atrrLabel:setColor(ccc3(0xff,0xff,0xff))
	    atrrLabel:setAnchorPoint(ccp(0,1))
	    atrrLabel:setPosition(ccp(atrr_font:getPositionX()+atrr_font:getContentSize().width+5,atrr_font:getPositionY()))
	    fs_bg:addChild(atrrLabel)
	end
end

-- 增加值特效
function setAddAttrAnimation()
	addLevelNum,addExpNum,addNeedNum = HuntSoulData.getCurLvAndCurExpAndNeedExp( _desItemData.itemDesc.upgradeID, _desItemData.item_id )
	if(addLevelNum > _maxLevel)then
		addLevelNum = _maxLevel
	end
	-- 增加的数值
	local cur_tData = HuntSoulData.getFightSoulAttrByItem_id( tonumber(_desItemData.item_id), addLevelNum )
	for k,v in pairs(cur_tData) do
		addAttrNum = v.displayNum
	end
	if(realLevelLabel)then  
		realLevelLabel:removeFromParentAndCleanup(true)
		realLevelLabel = nil
	end

    if(realAttrLabel)then  
		realAttrLabel:removeFromParentAndCleanup(true)
		realAttrLabel = nil
	end

	if(addLevelLabel) then
		addLevelLabel:removeFromParentAndCleanup(true)
		addLevelLabel=nil
	end
	if(addAttrLabel) then
		addAttrLabel:removeFromParentAndCleanup(true)
		addAttrLabel=nil
	end

	if(addLevelNum <= realLevelNum)then
		-- 不显示
	else
	 	local growLevelNum = addLevelNum - realLevelNum
		local p_x,p_y = levelLabel:getPositionX()+levelLabel:getContentSize().width+10,levelLabel:getPositionY()
		addLevelLabel = CCRenderLabel:create("+" .. growLevelNum, g_sFontPangWa, 24, 1, ccc3( 0x00, 0x00, 0x00), type_stroke)
	    addLevelLabel:setAnchorPoint(ccp(0,1))
	    addLevelLabel:setPosition(ccp(p_x, p_y))
	    addLevelLabel:setColor(ccc3(0x2c, 0xdb, 0x23))
 		fs_bg:addChild(addLevelLabel)
	   
		-- 增加的数值
		local cur_tData = HuntSoulData.getFightSoulAttrByItem_id( tonumber(_desItemData.item_id), addLevelNum )
		local displayName = "xxx"
		local growNum = "0"
		for k,v in pairs(cur_tData) do
			displayName = v.desc.displayName
			growNum = v.growNum
			addAttrNum = v.displayNum
		end
		growNum = (addLevelNum - realLevelNum) * growNum
		local p_x,p_y = atrrLabel:getPositionX()+atrrLabel:getContentSize().width+10,atrrLabel:getPositionY()
		addAttrLabel = CCRenderLabel:createWithAlign("+" ..growNum, g_sFontPangWa, 24, 1, ccc3(0x00, 0x00, 0x00), type_stroke, CCSizeMake(225, 80), kCCTextAlignmentLeft, kCCVerticalTextAlignmentTop)
		addAttrLabel:setColor(ccc3(0x2c, 0xdb, 0x23))
		addAttrLabel:setAnchorPoint(ccp(0, 1))
		addAttrLabel:setPosition(ccp(p_x, p_y))
		fs_bg:addChild(addAttrLabel)
	
		local arrActions_1 = CCArray:create()
		arrActions_1:addObject(CCFadeIn:create(0.8))
		arrActions_1:addObject(CCFadeOut:create(0.8))
		local sequence_1 = CCSequence:create(arrActions_1)
		local action_1 = CCRepeatForever:create(sequence_1)
		addLevelLabel:stopAllActions()
		addLevelLabel:runAction(action_1)

		local arrActions_4 = CCArray:create()
		arrActions_4:addObject(CCFadeIn:create(0.8))
		arrActions_4:addObject(CCFadeOut:create(0.8))
		local sequence_4 = CCSequence:create(arrActions_4)
		local action_4 = CCRepeatForever:create(sequence_4)
		addAttrLabel:stopAllActions()
		addAttrLabel:runAction(action_4)
	end
	-- 刷新新增经验条
	local rate = nil
	if(realLevelNum < addLevelNum)then 
		rate = 1
	else
		rate = addExpNum/addNeedNum
	end
	-- 显示
	_addProgressGreenBar:setVisible(true)
	if(rate > 1)then
		rate = 1
	end
	_addProgressGreenBar:setContentSize(CCSizeMake(570 * rate, 22))
end

-- 移除增加值特效
function removeAddAttrAnimation( ... )
	if(realLevelLabel)then  
		realLevelLabel:removeFromParentAndCleanup(true)
		realLevelLabel = nil
	end
 	if(realAttrLabel)then  
		realAttrLabel:removeFromParentAndCleanup(true)
		realAttrLabel = nil
	end
	if(addLevelLabel) then
		addLevelLabel:removeFromParentAndCleanup(true)
		addLevelLabel=nil
	end
	if(addAttrLabel) then
		addAttrLabel:removeFromParentAndCleanup(true)
		addAttrLabel=nil
	end
	-- 隐藏
	_addProgressGreenBar:setVisible(false)
end


-- 创建经验进度条
function createExpProgress()
	-- print("id",_desItemData.itemDesc.upgradeID)
	-- print(GetLocalizeStringBy("key_1736"),_desItemData.va_item_text.fsExp)
	-- print("lv",_desItemData.va_item_text.fsLevel)
	realExpNum,realNeedNum = LevelUpUtil.getCurExp(_desItemData.itemDesc.upgradeID,_desItemData.va_item_text.fsExp,_desItemData.va_item_text.fsLevel)
	bgProress = CCScale9Sprite:create("images/hunt/exp_bg.png")
	bgProress:setContentSize(CCSizeMake(_bgLayer:getContentSize().width/g_fScaleX, 49))
	bgProress:setAnchorPoint(ccp(0.5, 0.5))
	local posY = fs_bg:getPositionY()-fs_bg:getContentSize().height*0.5*g_fScaleX-10*g_fScaleX-bgProress:getContentSize().height*0.5*g_fScaleX
	bgProress:setPosition(ccp(_bgLayer:getContentSize().width*0.5, posY))
	_bgLayer:addChild(bgProress)
	bgProress:setScale(g_fScaleX)

	-- 增长经验条
	local rate = realExpNum/realNeedNum
	if(rate > 1)then
		rate = 1
	end
	_addProgressGreenBar = CCScale9Sprite:create("images/hunt/exp_line.png")
	_addProgressGreenBar:setContentSize( CCSizeMake(570 * rate, 22) )
	_addProgressGreenBar:setAnchorPoint(ccp(0,0.5))
	_addProgressGreenBar:setPosition(ccp(35, bgProress:getContentSize().height *0.5))
	bgProress:addChild(_addProgressGreenBar)
	local arrActions = CCArray:create()
	arrActions:addObject(CCFadeIn:create(0.8))
	arrActions:addObject(CCFadeOut:create(0.8))
	local sequence = CCSequence:create(arrActions)
	local action = CCRepeatForever:create(sequence)
	_addProgressGreenBar:runAction(action)

	_progressSp = CCScale9Sprite:create("images/hunt/real_exp_line.png")
	_progressSp:setAnchorPoint(ccp(0, 0.5))
	_progressSp:setPosition(ccp(35, bgProress:getContentSize().height * 0.5+1))
	bgProress:addChild(_progressSp)

	if( realLevelNum < _maxLevel )then 
		_progressSp:setContentSize(CCSizeMake(570 * rate, 22))
		-- 经验值
		expLabel = CCLabelTTF:create(realExpNum .. "/" .. realNeedNum, g_sFontName, 23)
		expLabel:setColor(ccc3(0x00, 0x00, 0x00))
		expLabel:setAnchorPoint(ccp(0.5, 0.5))
		expLabel:setPosition(ccp(bgProress:getContentSize().width*0.5, bgProress:getContentSize().height*0.5))
		bgProress:addChild(expLabel)
	else
		_progressSp:setContentSize(CCSizeMake(570, 22))
		maxSprrite = CCSprite:create("images/common/max.png")
		maxSprrite:setAnchorPoint(ccp(0.5, 0.5))
		maxSprrite:setPosition(ccp(bgProress:getContentSize().width*0.5, bgProress:getContentSize().height * 0.5))
		bgProress:addChild(maxSprrite)
	end
end

-- 刷新真实进度条
function refreshRealProgress( ... )
	-- 刷新进度条
    if( addLevelNum < _maxLevel )then 
    	local rate = addExpNum/addNeedNum
    	if(rate > 1)then
    		rate = 1
    	end
		_progressSp:setContentSize(CCSizeMake(570 * rate, 22))
		-- 经验值
		if(maxSprrite)then
			maxSprrite:removeFromParentAndCleanup(true)
			maxSprrite = nil
		end
		if(expLabel)then
			expLabel:removeFromParentAndCleanup(true)
			expLabel = nil
		end
		expLabel = CCLabelTTF:create(addExpNum .. "/" .. addNeedNum, g_sFontName, 23)
		expLabel:setColor(ccc3(0x00, 0x00, 0x00))
		expLabel:setAnchorPoint(ccp(0.5, 0.5))
		expLabel:setPosition(ccp(bgProress:getContentSize().width*0.5, bgProress:getContentSize().height*0.5))
		bgProress:addChild(expLabel)
		realExpNum 	= addExpNum
		realNeedNum = addNeedNum
	else
		if(maxSprrite)then
			maxSprrite:removeFromParentAndCleanup(true)
			maxSprrite = nil
		end
		if(expLabel)then
			expLabel:removeFromParentAndCleanup(true)
			expLabel = nil
		end
		_progressSp:setContentSize(CCSizeMake(570*1, 22))
		maxSprrite = CCSprite:create("images/common/max.png")
		maxSprrite:setAnchorPoint(ccp(0.5, 0.5))
		maxSprrite:setPosition(ccp(bgProress:getContentSize().width*0.5, bgProress:getContentSize().height * 0.5))
		bgProress:addChild(maxSprrite)
	end
end

-- 刷新真实等级和属性值
function refreshLevelAndAttr( ... )
	if(levelLabel)then
		levelLabel:removeFromParentAndCleanup(true)
		levelLabel = nil
	end
	realLevelNum = addLevelNum
	realAttrNum  = addAttrNum
	
	levelLabel = CCRenderLabel:create("Lv." .. addLevelNum, g_sFontPangWa, 24, 1, ccc3( 0x00, 0x00, 0x00), type_stroke)
    levelLabel:setColor(ccc3(0xff,0xff,0xff))
    levelLabel:setAnchorPoint(ccp(0,1))
    levelLabel:setPosition(ccp(level_font:getPositionX()+level_font:getContentSize().width+5,level_font:getPositionY()))
    fs_bg:addChild(levelLabel)
    if(addAttrNum)then
	    if(atrrLabel)then
			atrrLabel:removeFromParentAndCleanup(true)
			atrrLabel = nil
		end
		atrrLabel = CCRenderLabel:create(addAttrNum, g_sFontPangWa, 24, 1, ccc3( 0x00, 0x00, 0x00), type_stroke)
	    atrrLabel:setColor(ccc3(0xff,0xff,0xff))
	    atrrLabel:setAnchorPoint(ccp(0,1))
	    atrrLabel:setPosition(ccp(atrr_font:getPositionX()+atrr_font:getContentSize().width+5,atrr_font:getPositionY()))
	    fs_bg:addChild(atrrLabel)
	end
end


-- 创建战魂背包
function createFSTableView( ... )
	-- up
	local upSprite = CCSprite:create("images/hunt/up_line.png")
	upSprite:setAnchorPoint(ccp(0.5,1))
	local posY = bgProress:getPositionY()-10*g_fScaleX-bgProress:getContentSize().height*0.5*g_fScaleX
	upSprite:setPosition(ccp(_bgLayer:getContentSize().width*0.5,posY))
	_bgLayer:addChild(upSprite,10)
	upSprite:setScale(g_fScaleX)
	-- down
	local downSprite = CCSprite:create("images/hunt/down_line.png")
	downSprite:setAnchorPoint(ccp(0.5,0))
	local posY = chooseMenuItem:getPositionY()+chooseMenuItem:getContentSize().height*g_fScaleX+15*g_fScaleX
	downSprite:setPosition(ccp(_bgLayer:getContentSize().width*0.5,posY))
	_bgLayer:addChild(downSprite,10)
	downSprite:setScale(g_fScaleX)

	-- 背包里战魂数据
	_fsoulData = HuntSoulData.getBagInfoWithOutDesItem(_desItemData.item_id)
	local cellSize = CCSizeMake(610,120)		--计算cell大小
	local handler = LuaEventHandler:create(function(fn, table, a1, a2)
		local r
		if (fn == "cellSize") then
			r = CCSizeMake(cellSize.width*g_fScaleX, cellSize.height*g_fScaleX)
		elseif (fn == "cellAtIndex") then
		    a2 = CCTableViewCell:create()
		    a2:setContentSize(cellSize)
			local posArrX = {0.1,0.3,0.5,0.7,0.9}
			for i=1,5 do
				if(_fsoulData[a1*5+i] ~= nil)then
					local fsMenu = BTSensitiveMenu:create()
					if(fsMenu:retainCount()>1)then
						fsMenu:release()
						fsMenu:autorelease()
					end
					fsMenu:setAnchorPoint(ccp(0,0))
					fsMenu:setPosition(ccp(0,0))
					a2:addChild(fsMenu)
					fsMenu:setTouchPriority(-131)
					local normalSprite = ItemSprite.getItemSpriteByItemId( tonumber(_fsoulData[a1*5+i].item_template_id),_fsoulData[a1*5+i].va_item_text.fsLevel)
					local selectSprite = ItemSprite.getItemSpriteByItemId( tonumber(_fsoulData[a1*5+i].item_template_id),_fsoulData[a1*5+i].va_item_text.fsLevel)
					local fsMenuItem = CCMenuItemSprite:create(normalSprite,selectSprite)
					fsMenuItem:setAnchorPoint(ccp(0.5,0.5))
					fsMenuItem:setPosition(ccp(610*posArrX[i],120-fsMenuItem:getContentSize().height*0.5))
					fsMenu:addChild(fsMenuItem,1,tonumber(_fsoulData[a1*5+i].item_id))
					fsMenuItem:registerScriptTapHandler(fsMenuItemAction)
					-- 名字
					local name_color = HeroPublicLua.getCCColorByStarLevel(_fsoulData[a1*5+i].itemDesc.quality)
					local iconName = CCLabelTTF:create(_fsoulData[a1*5+i].itemDesc.name,g_sFontName,18)
					iconName:setColor(name_color)
					iconName:setAnchorPoint(ccp(0.5,0.5))
					iconName:setPosition(ccp(fsMenuItem:getContentSize().width*0.5,-10))
					fsMenuItem:addChild(iconName)
					-- 添加到数据按钮中 以itemId为key
					_fsoulDataButton[tonumber(_fsoulData[a1*5+i].item_id)] = fsMenuItem
					-- 给已经选择的数据添加选择框
					local chooseData = HuntSoulData.getChooseFSItemTable()
					for k,v in pairs(chooseData) do
						if(tonumber(v) == tonumber(_fsoulData[a1*5+i].item_id))then
							local sprite = CCSprite:create("images/hunt/choose.png")
							sprite:setAnchorPoint(ccp(0.5,0.5))
							sprite:setPosition(fsMenuItem:getContentSize().width*0.5,fsMenuItem:getContentSize().height*0.5)
							fsMenuItem:addChild(sprite,1,110)
							local duiSprite = CCSprite:create("images/common/checked.png")
							duiSprite:setAnchorPoint(ccp(0.5,0.5))
							duiSprite:setPosition(sprite:getContentSize().width*0.5,sprite:getContentSize().height*0.5)
							sprite:addChild(duiSprite)
							break
						end
					end
				end
			end
			r = a2
			r:setScale(g_fScaleX)
		elseif (fn == "numberOfCells") then
			num = #_fsoulData
			r = math.ceil(num/5)
		elseif (fn == "cellTouched") then
			-- print ("a1: ", a1, ", a2: ", a2)
			-- print ("cellTouched, index is: ", a1:getIdx())
		else
			-- print (fn, " event is not handled.")
		end
		return r
	end)
	local tableViewHeight = upSprite:getPositionY()-downSprite:getPositionY()-20*g_fScaleX
	_bagTableView  = LuaTableView:createWithHandler(handler, CCSizeMake(610*g_fScaleX,tableViewHeight))
	_bagTableView:setBounceable(true)
	_bagTableView:ignoreAnchorPointForPosition(false)
	_bagTableView:setAnchorPoint(ccp(0.5, 0))
	_bagTableView:setPosition(ccp(_bgLayer:getContentSize().width*0.5, downSprite:getPositionY()+10*g_fScaleX))
	_bgLayer:addChild(_bagTableView,2)
	_bagTableView:setVerticalFillOrder(kCCTableViewFillTopDown)
	-- _bagTableView:setContentOffset(ccp(0,0))
	_bagTableView:setTouchPriority(-132)
end


-- 添加选中高亮 已添加删除，未添加就加上
function setSelectBox( item_id )
	if(_fsoulDataButton[item_id]:getChildByTag(110))then
		-- print("remove .. ")
		_fsoulDataButton[item_id]:getChildByTag(110):removeFromParentAndCleanup(true)
	else
		local sprite = CCSprite:create("images/hunt/choose.png")
		sprite:setAnchorPoint(ccp(0.5,0.5))
		sprite:setPosition(_fsoulDataButton[item_id]:getContentSize().width*0.5,_fsoulDataButton[item_id]:getContentSize().height*0.5)
		_fsoulDataButton[item_id]:addChild(sprite,1,110)
		local duiSprite = CCSprite:create("images/common/checked.png")
		duiSprite:setAnchorPoint(ccp(0.5,0.5))
		duiSprite:setPosition(sprite:getContentSize().width*0.5,sprite:getContentSize().height*0.5)
		sprite:addChild(duiSprite)
	end
end

-- 按钮是否显示 
-- is_close:返回按钮
-- is_choose:取消确定按钮
function menuItemSetVisible( is_close, is_choose )
	closeMenuItem:setVisible(is_close)
	yesMenuItem:setVisible(is_choose)
	cancelMenuItem:setVisible(is_choose)
end

-- 确认回调
function yesMenuItemAction( ... )
	require "script/audio/AudioUtil"
	AudioUtil.playEffect("audio/effect/zhujiemian.mp3")
	-- 选择列表
	local chooseTab = HuntSoulData.getChooseFSItemTable()
	if( table.isEmpty(chooseTab) )then
		require "script/ui/tip/AnimationTip"
     	AnimationTip.showTip( GetLocalizeStringBy("key_2724"))
     	return
	end
	-- print("*-*-*-*-*")
	-- print_t(chooseTab)
	-- 品质不能高于目标品质
	local isTip = false
	for k,v in pairs(chooseTab) do
		local data = ItemUtil.getItemInfoByItemId(v)
		if( tonumber(data.itemDesc.quality) > tonumber(_desItemData.itemDesc.quality) )then
			isTip = true
			break
		end
	end
	if(isTip)then
		require "script/ui/tip/AnimationTip"
     	AnimationTip.showTip( GetLocalizeStringBy("key_2985"))
     	return
	end
	-- 是否包含4星级以上的战魂要被吞噬
	local isHave = false
	for k,v in pairs(chooseTab) do
		-- print("/*/*///* " ,v)
		local data = ItemUtil.getItemInfoByItemId(v)
		if(tonumber(data.itemDesc.quality) >= 4 )then
			isHave = true
			break
		end
	end
	if(isHave)then
		require "script/ui/tip/AlertTip"
		local str = GetLocalizeStringBy("key_1332")
		AlertTip.showAlert(str,sendHuntSoulService,true,chooseTab)
	else
		sendHuntSoulService(true,chooseTab)
	end
end

-- 发送强化请求
function sendHuntSoulService( isConfirm, chooseTab )
	if(isConfirm == false)then
		return 
	end
	local curLv = tonumber(_desItemData.va_item_text.fsLevel)
	if(curLv >= _maxLevel)then
		require "script/ui/tip/AnimationTip"
     	AnimationTip.showTip(GetLocalizeStringBy("key_3416") .. needHeroLv .. GetLocalizeStringBy("key_3099"))
		return 
	end
	-- print("0.00.0.0.0.0")
	-- print_t(chooseTab)
	local function createNextFun(curLv, totalExp, item_id)
		-- 修改目标装备的等级和经验
		if(_desItemData.equip_hid and tonumber(_desItemData.equip_hid) > 0)then
			-- 修改装备战魂数据
			HeroModel.addFSLevelOnHerosBy( _desItemData.hid, _desItemData.pos, curLv, totalExp )
		else
			-- 修改背包战魂数据
			DataCache.changeFSLvByItemId(_desItemData.item_id,curLv,totalExp)
		end
		-- 刷新一下背包
		_fsoulData = HuntSoulData.getDifferentData( _fsoulData, chooseTab )
		-- print(GetLocalizeStringBy("key_2516"))
		-- print_t(_fsoulData)
		_bagTableView:reloadData()
		-- 清空选择战魂列表
		HuntSoulData.ClearChooseFSItemTable()
		-- 去除增加值特效
		removeAddAttrAnimation()
		-- 升级特效
		upAnimation()
		-- 刷新
		refreshUI()
		-- 刷新真实进度条
		refreshRealProgress()
		-- 漂增加属性提示
		if(tonumber(oldLeveNum) < tonumber(curLv))then
			local arr = {}
			local arr1 = {}
			arr1.txt,arr1.num = addAttrNumAndAtrrName(tonumber(oldLeveNum),tonumber(curLv))
			table.insert(arr,arr1)
			require "script/utils/LevelUpUtil"
			LevelUpUtil.showFlyText(arr)
			oldLeveNum = tonumber(curLv)
		end
		-- 刷新真实等级
		refreshLevelAndAttr()
		-- 修改数据
		_desItemData = HuntSoulData.getDesItemInfoByItemId(item_id)
		
		addLevelNum 		= nil
		addAttrNum 			= nil
		addExpNum 			= nil
		addNeedNum 			= nil
   	end
	HuntSoulService.promote(_desItemData.item_id,chooseTab,createNextFun)
end

-- 取消回调
function cancelMenuItemAction( ... )
	require "script/audio/AudioUtil"
	AudioUtil.playEffect("audio/effect/zhujiemian.mp3")
	-- 选择列表
	local chooseTab = HuntSoulData.getChooseFSItemTable()
	if( table.isEmpty(chooseTab) )then
		require "script/ui/tip/AnimationTip"
     	AnimationTip.showTip( GetLocalizeStringBy("key_2724"))
     	return
	end
	-- 清空选择战魂列表
	HuntSoulData.ClearChooseFSItemTable()
	-- 刷新一下背包
	_bagTableView:reloadData()
	-- 刷新ui
	refreshUI()
end

-- -- 全选二星
-- function allOneMenuItemAction( ... )
-- 	local curLv = tonumber(_desItemData.va_item_text.fsLevel)
-- 	if(curLv >= _maxLevel)then
-- 		require "script/ui/tip/AnimationTip"
--      	AnimationTip.showTip(GetLocalizeStringBy("key_3416") .. needHeroLv .. GetLocalizeStringBy("key_3099"))
-- 		return 
-- 	end
-- 	if( tonumber(_desItemData.itemDesc.quality) < 2 )then
-- 		require "script/ui/tip/AnimationTip"
--      	AnimationTip.showTip( GetLocalizeStringBy("key_2986"))
--      	return
-- 	end
-- 	-- 清空选择战魂列表
-- 	HuntSoulData.ClearChooseFSItemTable()
-- 	-- 添加所有一星战魂
-- 	local isHave = false
-- 	for k,v in pairs(_fsoulData) do
-- 		if( tonumber(v.itemDesc.quality) == 2 )then
-- 			-- 进行判断是否溢出
-- 			-- 已经选择的战魂可以提供的等级
-- 			local canUpLv,a,b = HuntSoulData.getCurLvAndCurExpAndNeedExp( _desItemData.itemDesc.upgradeID, _desItemData.item_id )
-- 			if(canUpLv >= _maxLevel)then
-- 				break
-- 			end
-- 			isHave = true
-- 			-- 添加到列表中
-- 			HuntSoulData.addChooseFSItemId(v.item_id)
-- 		end
-- 	end
-- 	if(isHave == false)then
-- 		require "script/ui/tip/AnimationTip"
--      	AnimationTip.showTip( GetLocalizeStringBy("key_2759"))
-- 	end
-- 	-- 刷新一下背包
-- 	_bagTableView:reloadData()
--  	-- 刷新ui
-- 	refreshUI()
-- end

-- -- 全选三星
-- function allTwoMenuItemAction( ... )
-- 	local curLv = tonumber(_desItemData.va_item_text.fsLevel)
-- 	if(curLv >= _maxLevel)then
-- 		require "script/ui/tip/AnimationTip"
--      	AnimationTip.showTip(GetLocalizeStringBy("key_3416") .. needHeroLv .. GetLocalizeStringBy("key_3099"))
-- 		return 
-- 	end
-- 	if( tonumber(_desItemData.itemDesc.quality) < 3 )then
-- 		require "script/ui/tip/AnimationTip"
--      	AnimationTip.showTip( GetLocalizeStringBy("key_2986"))
--      	return
-- 	end
-- 	-- 清空选择战魂列表
-- 	HuntSoulData.ClearChooseFSItemTable()
-- 	-- 添加所有二星战魂
-- 	local isHave = false
-- 	for k,v in pairs(_fsoulData) do
-- 		if( tonumber(v.itemDesc.quality) == 3 )then
-- 			-- 进行判断是否溢出
-- 			-- 已经选择的战魂可以提供的等级
-- 			local canUpLv,a,b = HuntSoulData.getCurLvAndCurExpAndNeedExp( _desItemData.itemDesc.upgradeID, _desItemData.item_id )
-- 			if(canUpLv >= _maxLevel)then
-- 				break
-- 			end
-- 			isHave = true
-- 			-- 添加到列表中
-- 			HuntSoulData.addChooseFSItemId(v.item_id)
-- 		end
-- 	end
-- 	if(isHave == false)then
-- 		require "script/ui/tip/AnimationTip"
--      	AnimationTip.showTip( GetLocalizeStringBy("key_1044"))
-- 	end
-- 	-- 刷新一下背包
-- 	_bagTableView:reloadData()
--  	-- 刷新ui
-- 	refreshUI()
-- end

-- 选择战魂回调
function fsMenuItemAction( tag, itemBtn )
	require "script/audio/AudioUtil"
	AudioUtil.playEffect("audio/effect/zhujiemian.mp3")
	-- print("选择的战魂itemId==>",tag)
	local chooseData = HuntSoulData.getChooseFSItemTable()
	local isIn = false
	for k,v in pairs(chooseData) do
		if(tonumber(v) == tonumber(tag))then
			isIn = true
		end
	end
	if(isIn)then
		-- print("here ...")
		-- 添加选择数据
		HuntSoulData.addChooseFSItemId(tag)
		-- 添加选择框
		setSelectBox(tag)
		-- 刷新ui
		refreshUI()
	else
		local curLv = tonumber(_desItemData.va_item_text.fsLevel)
		if(curLv >= _maxLevel)then
			require "script/ui/tip/AnimationTip"
	     	AnimationTip.showTip(GetLocalizeStringBy("key_3416") .. needHeroLv .. GetLocalizeStringBy("key_3099"))
			return 
		end
		local srcData = ItemUtil.getItemInfoByItemId(tag)
		print("srcData .. ")
		print_t(srcData)
		if( tonumber(_desItemData.itemDesc.quality) < tonumber(srcData.itemDesc.quality) )then
			require "script/ui/tip/AnimationTip"
	     	AnimationTip.showTip( GetLocalizeStringBy("key_2986"))
	     	return
		end
		-- 进行判断是否溢出
		-- 已经选择的战魂可以提供的等级
		local canUpLv,a,b = HuntSoulData.getCurLvAndCurExpAndNeedExp( _desItemData.itemDesc.upgradeID, _desItemData.item_id )
		if(canUpLv >= _maxLevel)then
			require "script/ui/tip/AnimationTip"
	     	AnimationTip.showTip(GetLocalizeStringBy("key_3416") .. needHeroLv .. GetLocalizeStringBy("key_3099"))
			return
		end
		-- 添加选择数据
		HuntSoulData.addChooseFSItemId(tag)
		-- 添加选择框
		setSelectBox(tag)
		-- 刷新ui
		refreshUI()
	end
end

-- 返回按钮回调
function fnCloseAction( ... )
	-- 音效
	require "script/audio/AudioUtil"
	AudioUtil.playEffect("audio/effect/guanbi.mp3")

	if(_tSign.sign == "fightSoulBag")then
		require "script/ui/huntSoul/HuntSoulLayer"
		local layer = HuntSoulLayer.createHuntSoulLayer(_tSign.sign)
	    MainScene.changeLayer(layer,"HuntSoulLayer")
	elseif(_tSign.sign == "equipFightSoul")then
		require "script/ui/formation/FormationLayer"
		local layer = FormationLayer.createLayer(_tSign.hid, false, false, false, 2)
		MainScene.changeLayer(layer,"FormationLayer")
	else
		print(GetLocalizeStringBy("key_2288"))
		require "script/ui/huntSoul/HuntSoulLayer"
		local layer = HuntSoulLayer.createHuntSoulLayer("fightSoulBag")
	    MainScene.changeLayer(layer,"HuntSoulLayer")
	end
end

-- 刷新需要变动的UI
-- 根据选择列表刷新数值 chooseTable
function refreshUI()
	-- 刷新右上按钮显示
	local chooseData = HuntSoulData.getChooseFSItemTable()
	-- print("chooseData ----")
	-- print_t(chooseData)
	if(table.isEmpty(chooseData))then
		-- 显示返回按钮
     	-- menuItemSetVisible(true,false)
     	-- 去除增加值特效
     	removeAddAttrAnimation()
	else
		-- 显示取消和确定
		-- menuItemSetVisible(false,true)
		-- 增加值特效
		setAddAttrAnimation()
	end
end

-- 升级特效
function upAnimation( callfun )
	-- if(upMaskLayer)then
	-- 	upMaskLayer:removeFromParentAndCleanup(true)
	-- 	upMaskLayer = nil
	-- end
	-- local runningScene = CCDirector:sharedDirector():getRunningScene()
	-- upMaskLayer = BaseUI.createMaskLayer(-5000,nil,nil,0)
	-- runningScene:addChild(upMaskLayer, 10000)
	local function fnupAnimSpriteEnd( ... )
		if(upAnimSprite)then
			upAnimSprite:release()
			upAnimSprite:removeFromParentAndCleanup(true)
			upAnimSprite = nil
		end
		if(callfun)then
			callfun()
		end
		-- if(upMaskLayer)then
		-- 	upMaskLayer:removeFromParentAndCleanup(true)
		-- 	upMaskLayer = nil
		-- end
	end
    upAnimSprite = CCLayerSprite:layerSpriteWithName(CCString:create("images/base/effect/fightSoulUp/wuhunshengji"), -1,CCString:create(""))
    upAnimSprite:setAnchorPoint(ccp(0.5, 0.5))
    upAnimSprite:setPosition(ccp(122,122))
    fs_bg:addChild(upAnimSprite,888)
    upAnimSprite:retain()
    -- 注册代理
    local downDelegate = BTAnimationEventDelegate:create()
    downDelegate:registerLayerEndedHandler(fnupAnimSpriteEnd)
    upAnimSprite:setDelegate(downDelegate)
end

-- 得到增加的属性
function addAttrNumAndAtrrName( oldLeveNum, newLevelNum )
	local cur_tData = HuntSoulData.getFightSoulAttrByItem_id( tonumber(_desItemData.item_id), newLevelNum )
	local displayName = "xxx"
	local retGrowNum = 0
	local growNum = 0
	for k,v in pairs(cur_tData) do
		displayName = v.desc.displayName
		growNum = v.growNum
		addAttrNum = v.displayNum
	end
	retGrowNum = (newLevelNum - oldLeveNum) * growNum
	return displayName, retGrowNum
end

-- 得到能用来升级的数据
function getFsoulData( ... ) 
	return _fsoulData
end

-- 刷新tableView
function refreshTableView( ... )
	_bagTableView:reloadData()
	refreshUI()
end

-- 自动选择回调
function chooseMenuItemAction( ... )
	require "script/audio/AudioUtil"
	AudioUtil.playEffect("audio/effect/zhujiemian.mp3")
	local curLv = tonumber(_desItemData.va_item_text.fsLevel)
	if(curLv >= _maxLevel)then
		require "script/ui/tip/AnimationTip"
     	AnimationTip.showTip(GetLocalizeStringBy("key_3416") .. needHeroLv .. GetLocalizeStringBy("key_3099"))
		return 
	end
	require "script/ui/huntSoul/UpgradeByStarLayer"
	UpgradeByStarLayer.createLayerStar()
end

function getNeedUpgradeItemDataAndMaxLv( ... )
	return _desItemData,_maxLevel
end

-- 创建升级界面
-- tSign:用于记住返回到哪个界面
function createUpgradeFightSoulLayer(item_id, tSign)
	init()
	_bgLayer = CCLayer:create()

	-- 隐藏玩家信息栏
	MainScene.setMainSceneViewsVisible(true, false, true)

	-- 入口标志
	_tSign = tSign

	-- 要升级的目标战魂信息
	_desItemData = HuntSoulData.getDesItemInfoByItemId(item_id)
	-- 升级前等级
	oldLeveNum = tonumber(_desItemData.va_item_text.fsLevel)
	-- print("_desItemData")
	-- print_t(_desItemData)
	-- 可以强化到的最大等级
	_maxLevel = HuntSoulData.getMaxLvByFSTempId(_desItemData.item_template_id)
	-- print("_maxLevel",_maxLevel)

	-- 提升强化等级上限需要英雄的级数（玩家当前等级/10+1 ）*10 向下取整
	needHeroLv = math.floor((UserModel.getHeroLevel()/10+1)*10)

	-- 清空选择战魂列表 
	HuntSoulData.ClearChooseFSItemTable()
	
	-- 初始化猎魂界面
	initUpgradeFightSoulLayer()


	return _bgLayer
end











































