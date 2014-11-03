-- Filename: DB_Item_treasure_fragment.lua
-- Author: auto-created by XmlToScript tool.
-- Function: it`s auto-created by XmlToScript tool.

module("DB_Item_treasure_fragment", package.seeall)

keys = {
	"id", "name", "info", "icon_small", "icon_big", "item_type", "quality", "sellable", "sellType", "sellNum", "maxStacking", "canDestroy", "type", "treasureId", 
}

Item_treasure_fragment = {
	id_5013011 = {5013011, "白鹤碎片一", "曹家所养的名马，所谓凭空虚跃，曹家白鹤！", "small_3_ma_1_1.png", "big_3_ma_1_1.png", 12, 3, 1, 1, 300, 999, nil, 1, 501301, },
	id_5013012 = {5013012, "白鹤碎片二", "曹家所养的名马，所谓凭空虚跃，曹家白鹤！", "small_3_ma_1_2.png", "big_3_ma_1_2.png", 12, 3, 1, 1, 300, 999, nil, 1, 501301, },
	id_5013013 = {5013013, "白鹤碎片三", "曹家所养的名马，所谓凭空虚跃，曹家白鹤！", "small_3_ma_1_3.png", "big_3_ma_1_3.png", 12, 3, 1, 1, 300, 999, nil, 1, 501301, },
	id_5013021 = {5013021, "黑云碎片一", "被称为打不死的黑云马，与白雪马可配成一对。", "small_3_ma_2_1.png", "big_3_ma_2_1.png", 12, 3, 1, 1, 300, 999, nil, 1, 501302, },
	id_5013022 = {5013022, "黑云碎片二", "被称为打不死的黑云马，与白雪马可配成一对。", "small_3_ma_2_2.png", "big_3_ma_2_2.png", 12, 3, 1, 1, 300, 999, nil, 1, 501302, },
	id_5013023 = {5013023, "黑云碎片三", "被称为打不死的黑云马，与白雪马可配成一对。", "small_3_ma_2_3.png", "big_3_ma_2_3.png", 12, 3, 1, 1, 300, 999, nil, 1, 501302, },
	id_5013031 = {5013031, "奔雷碎片一", "张家所养的名马，奔跑起来如风驰电掣，故取名奔雷。", "small_3_ma_3_1.png", "big_3_ma_3_1.png", 12, 3, 1, 1, 300, 999, nil, 1, 501303, },
	id_5013032 = {5013032, "奔雷碎片二", "张家所养的名马，奔跑起来如风驰电掣，故取名奔雷。", "small_3_ma_3_2.png", "big_3_ma_3_2.png", 12, 3, 1, 1, 300, 999, nil, 1, 501303, },
	id_5013033 = {5013033, "奔雷碎片三", "张家所养的名马，奔跑起来如风驰电掣，故取名奔雷。", "small_3_ma_3_3.png", "big_3_ma_3_3.png", 12, 3, 1, 1, 300, 999, nil, 1, 501303, },
	id_5013034 = {5013034, "奔雷碎片四", "张家所养的名马，奔跑起来如风驰电掣，故取名奔雷。", "small_3_ma_3_4.png", "big_3_ma_3_4.png", 12, 3, 1, 1, 300, 999, nil, 1, 501303, },
	id_5013041 = {5013041, "乌骓碎片一", "勇将的坐骑，不知是不是随主人，这马越长越黑。", "small_3_ma_4_1.png", "big_3_ma_4_1.png", 12, 3, 1, 1, 300, 999, nil, 1, 501304, },
	id_5013042 = {5013042, "乌骓碎片二", "勇将的坐骑，不知是不是随主人，这马越长越黑。", "small_3_ma_4_2.png", "big_3_ma_4_2.png", 12, 3, 1, 1, 300, 999, nil, 1, 501304, },
	id_5013043 = {5013043, "乌骓碎片三", "勇将的坐骑，不知是不是随主人，这马越长越黑。", "small_3_ma_4_3.png", "big_3_ma_4_3.png", 12, 3, 1, 1, 300, 999, nil, 1, 501304, },
	id_5013044 = {5013044, "乌骓碎片四", "勇将的坐骑，不知是不是随主人，这马越长越黑。", "small_3_ma_4_4.png", "big_3_ma_4_4.png", 12, 3, 1, 1, 300, 999, nil, 1, 501304, },
	id_5013051 = {5013051, "白鸽碎片一", "儒将所骑的名马，举止儒雅，浑身雪白。", "small_3_ma_5_1.png", "big_3_ma_5_1.png", 12, 3, 1, 1, 300, 999, nil, 1, 501305, },
	id_5013052 = {5013052, "白鸽碎片二", "儒将所骑的名马，举止儒雅，浑身雪白。", "small_3_ma_5_2.png", "big_3_ma_5_2.png", 12, 3, 1, 1, 300, 999, nil, 1, 501305, },
	id_5013053 = {5013053, "白鸽碎片三", "儒将所骑的名马，举止儒雅，浑身雪白。", "small_3_ma_5_3.png", "big_3_ma_5_3.png", 12, 3, 1, 1, 300, 999, nil, 1, 501305, },
	id_5013054 = {5013054, "白鸽碎片四", "儒将所骑的名马，举止儒雅，浑身雪白。", "small_3_ma_5_4.png", "big_3_ma_5_4.png", 12, 3, 1, 1, 300, 999, nil, 1, 501305, },
	id_5013061 = {5013061, "白雪碎片一", "与黑云马配对的名马，在马中可以说是聪明绝顶，据说还会下棋写字。", "small_3_ma_6_1.png", "big_3_ma_6_1.png", 12, 3, 1, 1, 300, 999, nil, 1, 501306, },
	id_5013062 = {5013062, "白雪碎片二", "与黑云马配对的名马，在马中可以说是聪明绝顶，据说还会下棋写字。", "small_3_ma_6_2.png", "big_3_ma_6_2.png", 12, 3, 1, 1, 300, 999, nil, 1, 501306, },
	id_5013063 = {5013063, "白雪碎片三", "与黑云马配对的名马，在马中可以说是聪明绝顶，据说还会下棋写字。", "small_3_ma_6_3.png", "big_3_ma_6_3.png", 12, 3, 1, 1, 300, 999, nil, 1, 501306, },
	id_5013064 = {5013064, "白雪碎片四", "与黑云马配对的名马，在马中可以说是聪明绝顶，据说还会下棋写字。", "small_3_ma_6_4.png", "big_3_ma_6_4.png", 12, 3, 1, 1, 300, 999, nil, 1, 501306, },
	id_5014011 = {5014011, "灰影碎片一", "名马，后有人称：“负问天，跨灰影，威震逍遥津”！", "small_4_ma_1_1.png", "big_4_ma_1_1.png", 12, 4, 1, 1, 400, 999, nil, 1, 501401, },
	id_5014012 = {5014012, "灰影碎片二", "名马，后有人称：“负问天，跨灰影，威震逍遥津”！", "small_4_ma_1_2.png", "big_4_ma_1_2.png", 12, 4, 1, 1, 400, 999, nil, 1, 501401, },
	id_5014013 = {5014013, "灰影碎片三", "名马，后有人称：“负问天，跨灰影，威震逍遥津”！", "small_4_ma_1_3.png", "big_4_ma_1_3.png", 12, 4, 1, 1, 400, 999, nil, 1, 501401, },
	id_5014014 = {5014014, "灰影碎片四", "名马，后有人称：“负问天，跨灰影，威震逍遥津”！", "small_4_ma_1_4.png", "big_4_ma_1_4.png", 12, 4, 1, 1, 400, 999, nil, 1, 501401, },
	id_5014015 = {5014015, "灰影碎片五", "名马，后有人称：“负问天，跨灰影，威震逍遥津”！", "small_4_ma_1_5.png", "big_4_ma_1_5.png", 12, 4, 1, 1, 400, 999, nil, 1, 501401, },
	id_5014021 = {5014021, "惊帆碎片一", "名马，被称作有驰骤烈风举帆之疾，故名惊帆。", "small_4_ma_2_1.png", "big_4_ma_2_1.png", 12, 4, 1, 1, 400, 999, nil, 1, 501402, },
	id_5014022 = {5014022, "惊帆碎片二", "名马，被称作有驰骤烈风举帆之疾，故名惊帆。", "small_4_ma_2_2.png", "big_4_ma_2_2.png", 12, 4, 1, 1, 400, 999, nil, 1, 501402, },
	id_5014023 = {5014023, "惊帆碎片三", "名马，被称作有驰骤烈风举帆之疾，故名惊帆。", "small_4_ma_2_3.png", "big_4_ma_2_3.png", 12, 4, 1, 1, 400, 999, nil, 1, 501402, },
	id_5014024 = {5014024, "惊帆碎片四", "名马，被称作有驰骤烈风举帆之疾，故名惊帆。", "small_4_ma_2_4.png", "big_4_ma_2_4.png", 12, 4, 1, 1, 400, 999, nil, 1, 501402, },
	id_5014025 = {5014025, "惊帆碎片五", "名马，被称作有驰骤烈风举帆之疾，故名惊帆。", "small_4_ma_2_5.png", "big_4_ma_2_5.png", 12, 4, 1, 1, 400, 999, nil, 1, 501402, },
	id_5014031 = {5014031, "沙里飞碎片一", "名马，由于在西凉长大，故适于在沙地奔跑。", "small_4_ma_3_1.png", "big_4_ma_3_1.png", 12, 4, 1, 1, 400, 999, nil, 1, 501403, },
	id_5014032 = {5014032, "沙里飞碎片二", "名马，由于在西凉长大，故适于在沙地奔跑。", "small_4_ma_3_2.png", "big_4_ma_3_2.png", 12, 4, 1, 1, 400, 999, nil, 1, 501403, },
	id_5014033 = {5014033, "沙里飞碎片三", "名马，由于在西凉长大，故适于在沙地奔跑。", "small_4_ma_3_3.png", "big_4_ma_3_3.png", 12, 4, 1, 1, 400, 999, nil, 1, 501403, },
	id_5014034 = {5014034, "沙里飞碎片四", "名马，由于在西凉长大，故适于在沙地奔跑。", "small_4_ma_3_4.png", "big_4_ma_3_4.png", 12, 4, 1, 1, 400, 999, nil, 1, 501403, },
	id_5014035 = {5014035, "沙里飞碎片五", "名马，由于在西凉长大，故适于在沙地奔跑。", "small_4_ma_3_5.png", "big_4_ma_3_5.png", 12, 4, 1, 1, 400, 999, nil, 1, 501403, },
	id_5014041 = {5014041, "白龙碎片一", "刘备送给庞统的名马，庞统还为它编了一句歌谣：白龙马，蹄儿朝西…", "small_4_ma_4_1.png", "big_4_ma_4_1.png", 12, 4, 1, 1, 400, 999, nil, 1, 501404, },
	id_5014042 = {5014042, "白龙碎片二", "刘备送给庞统的名马，庞统还为它编了一句歌谣：白龙马，蹄儿朝西…", "small_4_ma_4_2.png", "big_4_ma_4_2.png", 12, 4, 1, 1, 400, 999, nil, 1, 501404, },
	id_5014043 = {5014043, "白龙碎片三", "刘备送给庞统的名马，庞统还为它编了一句歌谣：白龙马，蹄儿朝西…", "small_4_ma_4_3.png", "big_4_ma_4_3.png", 12, 4, 1, 1, 400, 999, nil, 1, 501404, },
	id_5014044 = {5014044, "白龙碎片四", "刘备送给庞统的名马，庞统还为它编了一句歌谣：白龙马，蹄儿朝西…", "small_4_ma_4_4.png", "big_4_ma_4_4.png", 12, 4, 1, 1, 400, 999, nil, 1, 501404, },
	id_5014045 = {5014045, "白龙碎片五", "刘备送给庞统的名马，庞统还为它编了一句歌谣：白龙马，蹄儿朝西…", "small_4_ma_4_5.png", "big_4_ma_4_5.png", 12, 4, 1, 1, 400, 999, nil, 1, 501404, },
	id_5014051 = {5014051, "玉龙碎片一", "一战闻名的战马，在孙权危难之际，背着孙权越过断桥逃离追兵。", "small_4_ma_5_1.png", "big_4_ma_5_1.png", 12, 4, 1, 1, 400, 999, nil, 1, 501405, },
	id_5014052 = {5014052, "玉龙碎片二", "一战闻名的战马，在孙权危难之际，背着孙权越过断桥逃离追兵。", "small_4_ma_5_2.png", "big_4_ma_5_2.png", 12, 4, 1, 1, 400, 999, nil, 1, 501405, },
	id_5014053 = {5014053, "玉龙碎片三", "一战闻名的战马，在孙权危难之际，背着孙权越过断桥逃离追兵。", "small_4_ma_5_3.png", "big_4_ma_5_3.png", 12, 4, 1, 1, 400, 999, nil, 1, 501405, },
	id_5014054 = {5014054, "玉龙碎片四", "一战闻名的战马，在孙权危难之际，背着孙权越过断桥逃离追兵。", "small_4_ma_5_4.png", "big_4_ma_5_4.png", 12, 4, 1, 1, 400, 999, nil, 1, 501405, },
	id_5014061 = {5014061, "乌孙碎片一", "名马，浑身乌黑，双眼炯炯有神，性格在马中可谓老谋深算。", "small_4_ma_6_1.png", "big_4_ma_6_1.png", 12, 4, 1, 1, 400, 999, nil, 1, 501406, },
	id_5014062 = {5014062, "乌孙碎片二", "名马，浑身乌黑，双眼炯炯有神，性格在马中可谓老谋深算。", "small_4_ma_6_2.png", "big_4_ma_6_2.png", 12, 4, 1, 1, 400, 999, nil, 1, 501406, },
	id_5014063 = {5014063, "乌孙碎片三", "名马，浑身乌黑，双眼炯炯有神，性格在马中可谓老谋深算。", "small_4_ma_6_3.png", "big_4_ma_6_3.png", 12, 4, 1, 1, 400, 999, nil, 1, 501406, },
	id_5014064 = {5014064, "乌孙碎片四", "名马，浑身乌黑，双眼炯炯有神，性格在马中可谓老谋深算。", "small_4_ma_6_4.png", "big_4_ma_6_4.png", 12, 4, 1, 1, 400, 999, nil, 1, 501406, },
	id_5015011 = {5015011, "的卢碎片一", "蔡瑁设计暗杀刘备，追至檀溪之处，的卢马一跃而起飞过檀溪，使得刘备幸免于难。", "small_5_ma_1_1.png", "big_5_ma_1_1.png", 12, 5, 1, 1, 500, 999, nil, 1, 501501, },
	id_5015012 = {5015012, "的卢碎片二", "蔡瑁设计暗杀刘备，追至檀溪之处，的卢马一跃而起飞过檀溪，使得刘备幸免于难。", "small_5_ma_1_2.png", "big_5_ma_1_2.png", 12, 5, 1, 1, 500, 999, nil, 1, 501501, },
	id_5015013 = {5015013, "的卢碎片三", "蔡瑁设计暗杀刘备，追至檀溪之处，的卢马一跃而起飞过檀溪，使得刘备幸免于难。", "small_5_ma_1_3.png", "big_5_ma_1_3.png", 12, 5, 1, 1, 500, 999, nil, 1, 501501, },
	id_5015014 = {5015014, "的卢碎片四", "蔡瑁设计暗杀刘备，追至檀溪之处，的卢马一跃而起飞过檀溪，使得刘备幸免于难。", "small_5_ma_1_4.png", "big_5_ma_1_4.png", 12, 5, 1, 1, 500, 999, nil, 1, 501501, },
	id_5015015 = {5015015, "的卢碎片五", "蔡瑁设计暗杀刘备，追至檀溪之处，的卢马一跃而起飞过檀溪，使得刘备幸免于难。", "small_5_ma_1_5.png", "big_5_ma_1_5.png", 12, 5, 1, 1, 500, 999, nil, 1, 501501, },
	id_5015016 = {5015016, "的卢碎片六", "蔡瑁设计暗杀刘备，追至檀溪之处，的卢马一跃而起飞过檀溪，使得刘备幸免于难。", "small_5_ma_1_6.png", "big_5_ma_1_6.png", 12, 5, 1, 1, 500, 999, nil, 1, 501501, },
	id_5015021 = {5015021, "绝影碎片一", "绝影是大宛名马，在宛城之战中身上中了三箭竟然仍能奋蹄疾驰，而且速度极快。", "small_5_ma_2_1.png", "big_5_ma_2_1.png", 12, 5, 1, 1, 500, 999, nil, 1, 501502, },
	id_5015022 = {5015022, "绝影碎片二", "绝影是大宛名马，在宛城之战中身上中了三箭竟然仍能奋蹄疾驰，而且速度极快。", "small_5_ma_2_2.png", "big_5_ma_2_2.png", 12, 5, 1, 1, 500, 999, nil, 1, 501502, },
	id_5015023 = {5015023, "绝影碎片三", "绝影是大宛名马，在宛城之战中身上中了三箭竟然仍能奋蹄疾驰，而且速度极快。", "small_5_ma_2_3.png", "big_5_ma_2_3.png", 12, 5, 1, 1, 500, 999, nil, 1, 501502, },
	id_5015024 = {5015024, "绝影碎片四", "绝影是大宛名马，在宛城之战中身上中了三箭竟然仍能奋蹄疾驰，而且速度极快。", "small_5_ma_2_4.png", "big_5_ma_2_4.png", 12, 5, 1, 1, 500, 999, nil, 1, 501502, },
	id_5015025 = {5015025, "绝影碎片五", "绝影是大宛名马，在宛城之战中身上中了三箭竟然仍能奋蹄疾驰，而且速度极快。", "small_5_ma_2_5.png", "big_5_ma_2_5.png", 12, 5, 1, 1, 500, 999, nil, 1, 501502, },
	id_5015026 = {5015026, "绝影碎片六", "绝影是大宛名马，在宛城之战中身上中了三箭竟然仍能奋蹄疾驰，而且速度极快。", "small_5_ma_2_6.png", "big_5_ma_2_6.png", 12, 5, 1, 1, 500, 999, nil, 1, 501502, },
	id_5015031 = {5015031, "赤兔碎片一", "所谓人中吕布，马中赤兔。赤兔马伴随了一代又一代的英雄活跃于三国的历史舞台之上。", "small_5_ma_3_1.png", "big_5_ma_3_1.png", 12, 5, 1, 1, 500, 999, nil, 1, 501503, },
	id_5015032 = {5015032, "赤兔碎片二", "所谓人中吕布，马中赤兔。赤兔马伴随了一代又一代的英雄活跃于三国的历史舞台之上。", "small_5_ma_3_2.png", "big_5_ma_3_2.png", 12, 5, 1, 1, 500, 999, nil, 1, 501503, },
	id_5015033 = {5015033, "赤兔碎片三", "所谓人中吕布，马中赤兔。赤兔马伴随了一代又一代的英雄活跃于三国的历史舞台之上。", "small_5_ma_3_3.png", "big_5_ma_3_3.png", 12, 5, 1, 1, 500, 999, nil, 1, 501503, },
	id_5015034 = {5015034, "赤兔碎片四", "所谓人中吕布，马中赤兔。赤兔马伴随了一代又一代的英雄活跃于三国的历史舞台之上。", "small_5_ma_3_4.png", "big_5_ma_3_4.png", 12, 5, 1, 1, 500, 999, nil, 1, 501503, },
	id_5015035 = {5015035, "赤兔碎片五", "所谓人中吕布，马中赤兔。赤兔马伴随了一代又一代的英雄活跃于三国的历史舞台之上。", "small_5_ma_3_5.png", "big_5_ma_3_5.png", 12, 5, 1, 1, 500, 999, nil, 1, 501503, },
	id_5015036 = {5015036, "赤兔碎片六", "所谓人中吕布，马中赤兔。赤兔马伴随了一代又一代的英雄活跃于三国的历史舞台之上。", "small_5_ma_3_6.png", "big_5_ma_3_6.png", 12, 5, 1, 1, 500, 999, nil, 1, 501503, },
	id_5015041 = {5015041, "爪黄飞电碎片一", "气质高贵非凡，曹操从不舍得带它出征作战，只在凯旋归来时才会骑上。", "small_5_ma_4_1.png", "big_5_ma_4_1.png", 12, 5, 1, 1, 500, 999, nil, 1, 501504, },
	id_5015042 = {5015042, "爪黄飞电碎片二", "气质高贵非凡，曹操从不舍得带它出征作战，只在凯旋归来时才会骑上。", "small_5_ma_4_2.png", "big_5_ma_4_2.png", 12, 5, 1, 1, 500, 999, nil, 1, 501504, },
	id_5015043 = {5015043, "爪黄飞电碎片三", "气质高贵非凡，曹操从不舍得带它出征作战，只在凯旋归来时才会骑上。", "small_5_ma_4_3.png", "big_5_ma_4_3.png", 12, 5, 1, 1, 500, 999, nil, 1, 501504, },
	id_5015044 = {5015044, "爪黄飞电碎片四", "气质高贵非凡，曹操从不舍得带它出征作战，只在凯旋归来时才会骑上。", "small_5_ma_4_4.png", "big_5_ma_4_4.png", 12, 5, 1, 1, 500, 999, nil, 1, 501504, },
	id_5015045 = {5015045, "爪黄飞电碎片五", "气质高贵非凡，曹操从不舍得带它出征作战，只在凯旋归来时才会骑上。", "small_5_ma_4_5.png", "big_5_ma_4_5.png", 12, 5, 1, 1, 500, 999, nil, 1, 501504, },
	id_5015046 = {5015046, "爪黄飞电碎片六", "气质高贵非凡，曹操从不舍得带它出征作战，只在凯旋归来时才会骑上。", "small_5_ma_4_6.png", "big_5_ma_4_6.png", 12, 5, 1, 1, 500, 999, nil, 1, 501504, },
	id_5015051 = {5015051, "照夜玉狮子碎片一", "令赵云七进七出而落于不败，落入陷坑生而又能飞跃而起的那匹马，就是照夜玉狮子！", "small_5_ma_5_1.png", "big_5_ma_5_1.png", 12, 5, 1, 1, 500, 999, nil, 1, 501505, },
	id_5015052 = {5015052, "照夜玉狮子碎片二", "令赵云七进七出而落于不败，落入陷坑生而又能飞跃而起的那匹马，就是照夜玉狮子！", "small_5_ma_5_2.png", "big_5_ma_5_2.png", 12, 5, 1, 1, 500, 999, nil, 1, 501505, },
	id_5015053 = {5015053, "照夜玉狮子碎片三", "令赵云七进七出而落于不败，落入陷坑生而又能飞跃而起的那匹马，就是照夜玉狮子！", "small_5_ma_5_3.png", "big_5_ma_5_3.png", 12, 5, 1, 1, 500, 999, nil, 1, 501505, },
	id_5015054 = {5015054, "照夜玉狮子碎片四", "令赵云七进七出而落于不败，落入陷坑生而又能飞跃而起的那匹马，就是照夜玉狮子！", "small_5_ma_5_4.png", "big_5_ma_5_4.png", 12, 5, 1, 1, 500, 999, nil, 1, 501505, },
	id_5015055 = {5015055, "照夜玉狮子碎片五", "令赵云七进七出而落于不败，落入陷坑生而又能飞跃而起的那匹马，就是照夜玉狮子！", "small_5_ma_5_5.png", "big_5_ma_5_5.png", 12, 5, 1, 1, 500, 999, nil, 1, 501505, },
	id_5015056 = {5015056, "照夜玉狮子碎片六", "令赵云七进七出而落于不败，落入陷坑生而又能飞跃而起的那匹马，就是照夜玉狮子！", "small_5_ma_5_6.png", "big_5_ma_5_6.png", 12, 5, 1, 1, 500, 999, nil, 1, 501505, },
	id_5015061 = {5015061, "乌云踏雪碎片一", "乌关外名驹，千里绝群，张飞之马，云踏雪。即通体黑色，四蹄白色之意。", "small_5_ma_6_1.png", "big_5_ma_6_1.png", 12, 5, 1, 1, 500, 999, nil, 1, 501506, },
	id_5015062 = {5015062, "乌云踏雪碎片二", "乌关外名驹，千里绝群，张飞之马，云踏雪。即通体黑色，四蹄白色之意。", "small_5_ma_6_2.png", "big_5_ma_6_2.png", 12, 5, 1, 1, 500, 999, nil, 1, 501506, },
	id_5015063 = {5015063, "乌云踏雪碎片三", "乌关外名驹，千里绝群，张飞之马，云踏雪。即通体黑色，四蹄白色之意。", "small_5_ma_6_3.png", "big_5_ma_6_3.png", 12, 5, 1, 1, 500, 999, nil, 1, 501506, },
	id_5015064 = {5015064, "乌云踏雪碎片四", "乌关外名驹，千里绝群，张飞之马，云踏雪。即通体黑色，四蹄白色之意。", "small_5_ma_6_4.png", "big_5_ma_6_4.png", 12, 5, 1, 1, 500, 999, nil, 1, 501506, },
	id_5015065 = {5015065, "乌云踏雪碎片五", "乌关外名驹，千里绝群，张飞之马，云踏雪。即通体黑色，四蹄白色之意。", "small_5_ma_6_5.png", "big_5_ma_6_5.png", 12, 5, 1, 1, 500, 999, nil, 1, 501506, },
	id_5015066 = {5015066, "乌云踏雪碎片六", "乌关外名驹，千里绝群，张飞之马，云踏雪。即通体黑色，四蹄白色之意。", "small_5_ma_6_6.png", "big_5_ma_6_6.png", 12, 5, 1, 1, 500, 999, nil, 1, 501506, },
	id_5023011 = {5023011, "司马法碎片一", "春秋时代齐国的名将司马穰苴所写的名书，共五篇。", "small_3_shu_1_1.png", "big_3_shu_1_1.png", 12, 3, 1, 1, 300, 999, nil, 2, 502301, },
	id_5023012 = {5023012, "司马法碎片二", "春秋时代齐国的名将司马穰苴所写的名书，共五篇。", "small_3_shu_1_2.png", "big_3_shu_1_2.png", 12, 3, 1, 1, 300, 999, nil, 2, 502301, },
	id_5023013 = {5023013, "司马法碎片三", "春秋时代齐国的名将司马穰苴所写的名书，共五篇。", "small_3_shu_1_3.png", "big_3_shu_1_3.png", 12, 3, 1, 1, 300, 999, nil, 2, 502301, },
	id_5023021 = {5023021, "土豪兵法碎片一", "由不知名的民间人士所编著，每一页都用金粉写成，极具收藏价值！", "small_3_shu_2_1.png", "big_3_shu_2_1.png", 12, 3, 1, 1, 300, 999, nil, 2, 502302, },
	id_5023022 = {5023022, "土豪兵法碎片二", "由不知名的民间人士所编著，每一页都用金粉写成，极具收藏价值！", "small_3_shu_2_2.png", "big_3_shu_2_2.png", 12, 3, 1, 1, 300, 999, nil, 2, 502302, },
	id_5023023 = {5023023, "土豪兵法碎片三", "由不知名的民间人士所编著，每一页都用金粉写成，极具收藏价值！", "small_3_shu_2_3.png", "big_3_shu_2_3.png", 12, 3, 1, 1, 300, 999, nil, 2, 502302, },
	id_5023031 = {5023031, "魏公子兵法碎片一", "战国四公子之一的信陵君所编著，将诸侯献上的兵书归纳为一册。", "small_3_shu_3_1.png", "big_3_shu_3_1.png", 12, 3, 1, 1, 300, 999, nil, 2, 502303, },
	id_5023032 = {5023032, "魏公子兵法碎片二", "战国四公子之一的信陵君所编著，将诸侯献上的兵书归纳为一册。", "small_3_shu_3_2.png", "big_3_shu_3_2.png", 12, 3, 1, 1, 300, 999, nil, 2, 502303, },
	id_5023033 = {5023033, "魏公子兵法碎片三", "战国四公子之一的信陵君所编著，将诸侯献上的兵书归纳为一册。", "small_3_shu_3_3.png", "big_3_shu_3_3.png", 12, 3, 1, 1, 300, 999, nil, 2, 502303, },
	id_5023034 = {5023034, "魏公子兵法碎片四", "战国四公子之一的信陵君所编著，将诸侯献上的兵书归纳为一册。", "small_3_shu_3_4.png", "big_3_shu_3_4.png", 12, 3, 1, 1, 300, 999, nil, 2, 502303, },
	id_5023041 = {5023041, "经书碎片一", "经书，收录了以周代记录为中心的传说及史实的名书。", "small_3_shu_4_1.png", "big_3_shu_4_1.png", 12, 3, 1, 1, 300, 999, nil, 2, 502304, },
	id_5023042 = {5023042, "经书碎片二", "经书，收录了以周代记录为中心的传说及史实的名书。", "small_3_shu_4_2.png", "big_3_shu_4_2.png", 12, 3, 1, 1, 300, 999, nil, 2, 502304, },
	id_5023043 = {5023043, "经书碎片三", "经书，收录了以周代记录为中心的传说及史实的名书。", "small_3_shu_4_3.png", "big_3_shu_4_3.png", 12, 3, 1, 1, 300, 999, nil, 2, 502304, },
	id_5023044 = {5023044, "经书碎片四", "经书，收录了以周代记录为中心的传说及史实的名书。", "small_3_shu_4_4.png", "big_3_shu_4_4.png", 12, 3, 1, 1, 300, 999, nil, 2, 502304, },
	id_5023051 = {5023051, "史记碎片一", "由司马迁撰写，记录了我国从传说中的黄帝到汉武帝后期长达3000年左右的历史。", "small_3_shu_5_1.png", "big_3_shu_5_1.png", 12, 3, 1, 1, 300, 999, nil, 2, 502305, },
	id_5023052 = {5023052, "史记碎片二", "由司马迁撰写，记录了我国从传说中的黄帝到汉武帝后期长达3000年左右的历史。", "small_3_shu_5_2.png", "big_3_shu_5_2.png", 12, 3, 1, 1, 300, 999, nil, 2, 502305, },
	id_5023053 = {5023053, "史记碎片三", "由司马迁撰写，记录了我国从传说中的黄帝到汉武帝后期长达3000年左右的历史。", "small_3_shu_5_3.png", "big_3_shu_5_3.png", 12, 3, 1, 1, 300, 999, nil, 2, 502305, },
	id_5023054 = {5023054, "史记碎片四", "由司马迁撰写，记录了我国从传说中的黄帝到汉武帝后期长达3000年左右的历史。", "small_3_shu_5_4.png", "big_3_shu_5_4.png", 12, 3, 1, 1, 300, 999, nil, 2, 502305, },
	id_5023061 = {5023061, "诗经碎片一", "汉族文学史上最早的诗歌总集，先秦称为《诗》，共305首，取其整数称《诗三百》。", "small_3_shu_6_1.png", "big_3_shu_6_1.png", 12, 3, 1, 1, 300, 999, nil, 2, 502306, },
	id_5023062 = {5023062, "诗经碎片二", "汉族文学史上最早的诗歌总集，先秦称为《诗》，共305首，取其整数称《诗三百》。", "small_3_shu_6_2.png", "big_3_shu_6_2.png", 12, 3, 1, 1, 300, 999, nil, 2, 502306, },
	id_5023063 = {5023063, "诗经碎片三", "汉族文学史上最早的诗歌总集，先秦称为《诗》，共305首，取其整数称《诗三百》。", "small_3_shu_6_3.png", "big_3_shu_6_3.png", 12, 3, 1, 1, 300, 999, nil, 2, 502306, },
	id_5023064 = {5023064, "诗经碎片四", "汉族文学史上最早的诗歌总集，先秦称为《诗》，共305首，取其整数称《诗三百》。", "small_3_shu_6_4.png", "big_3_shu_6_4.png", 12, 3, 1, 1, 300, 999, nil, 2, 502306, },
	id_5024011 = {5024011, "三略碎片一", "《三略》原称《黄石公三略》，是中国古代的一部著名兵书，与《六韬》齐名。", "small_4_shu_1_1.png", "big_4_shu_1_1.png", 12, 4, 1, 1, 400, 999, nil, 2, 502401, },
	id_5024012 = {5024012, "三略碎片二", "《三略》原称《黄石公三略》，是中国古代的一部著名兵书，与《六韬》齐名。", "small_4_shu_1_2.png", "big_4_shu_1_2.png", 12, 4, 1, 1, 400, 999, nil, 2, 502401, },
	id_5024013 = {5024013, "三略碎片三", "《三略》原称《黄石公三略》，是中国古代的一部著名兵书，与《六韬》齐名。", "small_4_shu_1_3.png", "big_4_shu_1_3.png", 12, 4, 1, 1, 400, 999, nil, 2, 502401, },
	id_5024014 = {5024014, "三略碎片四", "《三略》原称《黄石公三略》，是中国古代的一部著名兵书，与《六韬》齐名。", "small_4_shu_1_4.png", "big_4_shu_1_4.png", 12, 4, 1, 1, 400, 999, nil, 2, 502401, },
	id_5024021 = {5024021, "六韬碎片一", "太公望所著名书，题为“周文王师姜望撰”，姜望即姜太公吕望。", "small_4_shu_2_1.png", "big_4_shu_2_1.png", 12, 4, 1, 1, 400, 999, nil, 2, 502402, },
	id_5024022 = {5024022, "六韬碎片二", "太公望所著名书，题为“周文王师姜望撰”，姜望即姜太公吕望。", "small_4_shu_2_2.png", "big_4_shu_2_2.png", 12, 4, 1, 1, 400, 999, nil, 2, 502402, },
	id_5024023 = {5024023, "六韬碎片三", "太公望所著名书，题为“周文王师姜望撰”，姜望即姜太公吕望。", "small_4_shu_2_3.png", "big_4_shu_2_3.png", 12, 4, 1, 1, 400, 999, nil, 2, 502402, },
	id_5024024 = {5024024, "六韬碎片四", "太公望所著名书，题为“周文王师姜望撰”，姜望即姜太公吕望。", "small_4_shu_2_4.png", "big_4_shu_2_4.png", 12, 4, 1, 1, 400, 999, nil, 2, 502402, },
	id_5024031 = {5024031, "孙膑兵法碎片一", "著名兵书，作者为战国时代齐国军事家孙膑，传说他是孙武的后代。", "small_4_shu_3_1.png", "big_4_shu_3_1.png", 12, 4, 1, 1, 400, 999, nil, 2, 502403, },
	id_5024032 = {5024032, "孙膑兵法碎片二", "著名兵书，作者为战国时代齐国军事家孙膑，传说他是孙武的后代。", "small_4_shu_3_2.png", "big_4_shu_3_2.png", 12, 4, 1, 1, 400, 999, nil, 2, 502403, },
	id_5024033 = {5024033, "孙膑兵法碎片三", "著名兵书，作者为战国时代齐国军事家孙膑，传说他是孙武的后代。", "small_4_shu_3_3.png", "big_4_shu_3_3.png", 12, 4, 1, 1, 400, 999, nil, 2, 502403, },
	id_5024034 = {5024034, "孙膑兵法碎片四", "著名兵书，作者为战国时代齐国军事家孙膑，传说他是孙武的后代。", "small_4_shu_3_4.png", "big_4_shu_3_4.png", 12, 4, 1, 1, 400, 999, nil, 2, 502403, },
	id_5024035 = {5024035, "孙膑兵法碎片五", "著名兵书，作者为战国时代齐国军事家孙膑，传说他是孙武的后代。", "small_4_shu_3_5.png", "big_4_shu_3_5.png", 12, 4, 1, 1, 400, 999, nil, 2, 502403, },
	id_5024041 = {5024041, "易经碎片一", "《易经》是一部中国古哲学书籍。广大精微，包罗万象，亦是中华文明的源头活水。", "small_4_shu_4_1.png", "big_4_shu_4_1.png", 12, 4, 1, 1, 400, 999, nil, 2, 502404, },
	id_5024042 = {5024042, "易经碎片二", "《易经》是一部中国古哲学书籍。广大精微，包罗万象，亦是中华文明的源头活水。", "small_4_shu_4_2.png", "big_4_shu_4_2.png", 12, 4, 1, 1, 400, 999, nil, 2, 502404, },
	id_5024043 = {5024043, "易经碎片三", "《易经》是一部中国古哲学书籍。广大精微，包罗万象，亦是中华文明的源头活水。", "small_4_shu_4_3.png", "big_4_shu_4_3.png", 12, 4, 1, 1, 400, 999, nil, 2, 502404, },
	id_5024044 = {5024044, "易经碎片四", "《易经》是一部中国古哲学书籍。广大精微，包罗万象，亦是中华文明的源头活水。", "small_4_shu_4_4.png", "big_4_shu_4_4.png", 12, 4, 1, 1, 400, 999, nil, 2, 502404, },
	id_5024045 = {5024045, "易经碎片五", "《易经》是一部中国古哲学书籍。广大精微，包罗万象，亦是中华文明的源头活水。", "small_4_shu_4_5.png", "big_4_shu_4_5.png", 12, 4, 1, 1, 400, 999, nil, 2, 502404, },
	id_5024051 = {5024051, "太平清领道碎片一", "于吉曾于汉顺帝时入山采药，忽见有书浮于水。取而观之，名太平青领道。", "small_4_shu_5_1.png", "big_4_shu_5_1.png", 12, 4, 1, 1, 400, 999, nil, 2, 502405, },
	id_5024052 = {5024052, "太平清领道碎片二", "于吉曾于汉顺帝时入山采药，忽见有书浮于水。取而观之，名太平青领道。", "small_4_shu_5_2.png", "big_4_shu_5_2.png", 12, 4, 1, 1, 400, 999, nil, 2, 502405, },
	id_5024053 = {5024053, "太平清领道碎片三", "于吉曾于汉顺帝时入山采药，忽见有书浮于水。取而观之，名太平青领道。", "small_4_shu_5_3.png", "big_4_shu_5_3.png", 12, 4, 1, 1, 400, 999, nil, 2, 502405, },
	id_5024054 = {5024054, "太平清领道碎片四", "于吉曾于汉顺帝时入山采药，忽见有书浮于水。取而观之，名太平青领道。", "small_4_shu_5_4.png", "big_4_shu_5_4.png", 12, 4, 1, 1, 400, 999, nil, 2, 502405, },
	id_5024055 = {5024055, "太平清领道碎片五", "于吉曾于汉顺帝时入山采药，忽见有书浮于水。取而观之，名太平青领道。", "small_4_shu_5_5.png", "big_4_shu_5_5.png", 12, 4, 1, 1, 400, 999, nil, 2, 502405, },
	id_5024061 = {5024061, "论语碎片一", "《论语》是儒家的经典著作之一，由孔子的弟子及其再传弟子编撰而成。", "small_4_shu_6_1.png", "big_4_shu_6_1.png", 12, 4, 1, 1, 400, 999, nil, 2, 502406, },
	id_5024062 = {5024062, "论语碎片二", "《论语》是儒家的经典著作之一，由孔子的弟子及其再传弟子编撰而成。", "small_4_shu_6_2.png", "big_4_shu_6_2.png", 12, 4, 1, 1, 400, 999, nil, 2, 502406, },
	id_5024063 = {5024063, "论语碎片三", "《论语》是儒家的经典著作之一，由孔子的弟子及其再传弟子编撰而成。", "small_4_shu_6_3.png", "big_4_shu_6_3.png", 12, 4, 1, 1, 400, 999, nil, 2, 502406, },
	id_5024064 = {5024064, "论语碎片四", "《论语》是儒家的经典著作之一，由孔子的弟子及其再传弟子编撰而成。", "small_4_shu_6_4.png", "big_4_shu_6_4.png", 12, 4, 1, 1, 400, 999, nil, 2, 502406, },
	id_5024065 = {5024065, "论语碎片五", "《论语》是儒家的经典著作之一，由孔子的弟子及其再传弟子编撰而成。", "small_4_shu_6_5.png", "big_4_shu_6_5.png", 12, 4, 1, 1, 400, 999, nil, 2, 502406, },
	id_5025011 = {5025011, "孟德新书碎片一", "《孟德新书》乃是曹操总结半生军事生涯、在前人基础上总结并创新军事理论的成果。", "small_5_shu_1_1.png", "big_5_shu_1_1.png", 12, 5, 1, 1, 500, 999, nil, 2, 502501, },
	id_5025012 = {5025012, "孟德新书碎片二", "《孟德新书》乃是曹操总结半生军事生涯、在前人基础上总结并创新军事理论的成果。", "small_5_shu_1_2.png", "big_5_shu_1_2.png", 12, 5, 1, 1, 500, 999, nil, 2, 502501, },
	id_5025013 = {5025013, "孟德新书碎片三", "《孟德新书》乃是曹操总结半生军事生涯、在前人基础上总结并创新军事理论的成果。", "small_5_shu_1_3.png", "big_5_shu_1_3.png", 12, 5, 1, 1, 500, 999, nil, 2, 502501, },
	id_5025014 = {5025014, "孟德新书碎片四", "《孟德新书》乃是曹操总结半生军事生涯、在前人基础上总结并创新军事理论的成果。", "small_5_shu_1_4.png", "big_5_shu_1_4.png", 12, 5, 1, 1, 500, 999, nil, 2, 502501, },
	id_5025015 = {5025015, "孟德新书碎片五", "《孟德新书》乃是曹操总结半生军事生涯、在前人基础上总结并创新军事理论的成果。", "small_5_shu_1_5.png", "big_5_shu_1_5.png", 12, 5, 1, 1, 500, 999, nil, 2, 502501, },
	id_5025016 = {5025016, "孟德新书碎片六", "《孟德新书》乃是曹操总结半生军事生涯、在前人基础上总结并创新军事理论的成果。", "small_5_shu_1_6.png", "big_5_shu_1_6.png", 12, 5, 1, 1, 500, 999, nil, 2, 502501, },
	id_5025021 = {5025021, "太平要术碎片一", "东汉末年黄巾起义，张角入山采药，遇“南华老仙”，授之《太平要术》。", "small_5_shu_2_1.png", "big_5_shu_2_1.png", 12, 5, 1, 1, 500, 999, nil, 2, 502502, },
	id_5025022 = {5025022, "太平要术碎片二", "东汉末年黄巾起义，张角入山采药，遇“南华老仙”，授之《太平要术》。", "small_5_shu_2_2.png", "big_5_shu_2_2.png", 12, 5, 1, 1, 500, 999, nil, 2, 502502, },
	id_5025023 = {5025023, "太平要术碎片三", "东汉末年黄巾起义，张角入山采药，遇“南华老仙”，授之《太平要术》。", "small_5_shu_2_3.png", "big_5_shu_2_3.png", 12, 5, 1, 1, 500, 999, nil, 2, 502502, },
	id_5025024 = {5025024, "太平要术碎片四", "东汉末年黄巾起义，张角入山采药，遇“南华老仙”，授之《太平要术》。", "small_5_shu_2_4.png", "big_5_shu_2_4.png", 12, 5, 1, 1, 500, 999, nil, 2, 502502, },
	id_5025025 = {5025025, "太平要术碎片五", "东汉末年黄巾起义，张角入山采药，遇“南华老仙”，授之《太平要术》。", "small_5_shu_2_5.png", "big_5_shu_2_5.png", 12, 5, 1, 1, 500, 999, nil, 2, 502502, },
	id_5025026 = {5025026, "太平要术碎片六", "东汉末年黄巾起义，张角入山采药，遇“南华老仙”，授之《太平要术》。", "small_5_shu_2_6.png", "big_5_shu_2_6.png", 12, 5, 1, 1, 500, 999, nil, 2, 502502, },
	id_5025031 = {5025031, "遁甲天书碎片一", "左慈常年在峨眉山修行，忽然有雷震碎石壁，露出‘天书三卷’，为《遁甲天书》。", "small_5_shu_3_1.png", "big_5_shu_3_1.png", 12, 5, 1, 1, 500, 999, nil, 2, 502503, },
	id_5025032 = {5025032, "遁甲天书碎片二", "左慈常年在峨眉山修行，忽然有雷震碎石壁，露出‘天书三卷’，为《遁甲天书》。", "small_5_shu_3_2.png", "big_5_shu_3_2.png", 12, 5, 1, 1, 500, 999, nil, 2, 502503, },
	id_5025033 = {5025033, "遁甲天书碎片三", "左慈常年在峨眉山修行，忽然有雷震碎石壁，露出‘天书三卷’，为《遁甲天书》。", "small_5_shu_3_3.png", "big_5_shu_3_3.png", 12, 5, 1, 1, 500, 999, nil, 2, 502503, },
	id_5025034 = {5025034, "遁甲天书碎片四", "左慈常年在峨眉山修行，忽然有雷震碎石壁，露出‘天书三卷’，为《遁甲天书》。", "small_5_shu_3_4.png", "big_5_shu_3_4.png", 12, 5, 1, 1, 500, 999, nil, 2, 502503, },
	id_5025035 = {5025035, "遁甲天书碎片五", "左慈常年在峨眉山修行，忽然有雷震碎石壁，露出‘天书三卷’，为《遁甲天书》。", "small_5_shu_3_5.png", "big_5_shu_3_5.png", 12, 5, 1, 1, 500, 999, nil, 2, 502503, },
	id_5025036 = {5025036, "遁甲天书碎片六", "左慈常年在峨眉山修行，忽然有雷震碎石壁，露出‘天书三卷’，为《遁甲天书》。", "small_5_shu_3_6.png", "big_5_shu_3_6.png", 12, 5, 1, 1, 500, 999, nil, 2, 502503, },
	id_5025041 = {5025041, "兵法二十四篇碎片一", "诸葛亮晚年时所著，上面记载了诸葛亮几十年来行军打仗，治国安邦的经验。", "small_5_shu_4_1.png", "big_5_shu_4_1.png", 12, 5, 1, 1, 500, 999, nil, 2, 502504, },
	id_5025042 = {5025042, "兵法二十四篇碎片二", "诸葛亮晚年时所著，上面记载了诸葛亮几十年来行军打仗，治国安邦的经验。", "small_5_shu_4_2.png", "big_5_shu_4_2.png", 12, 5, 1, 1, 500, 999, nil, 2, 502504, },
	id_5025043 = {5025043, "兵法二十四篇碎片三", "诸葛亮晚年时所著，上面记载了诸葛亮几十年来行军打仗，治国安邦的经验。", "small_5_shu_4_3.png", "big_5_shu_4_3.png", 12, 5, 1, 1, 500, 999, nil, 2, 502504, },
	id_5025044 = {5025044, "兵法二十四篇碎片四", "诸葛亮晚年时所著，上面记载了诸葛亮几十年来行军打仗，治国安邦的经验。", "small_5_shu_4_4.png", "big_5_shu_4_4.png", 12, 5, 1, 1, 500, 999, nil, 2, 502504, },
	id_5025045 = {5025045, "兵法二十四篇碎片五", "诸葛亮晚年时所著，上面记载了诸葛亮几十年来行军打仗，治国安邦的经验。", "small_5_shu_4_5.png", "big_5_shu_4_5.png", 12, 5, 1, 1, 500, 999, nil, 2, 502504, },
	id_5025046 = {5025046, "兵法二十四篇碎片六", "诸葛亮晚年时所著，上面记载了诸葛亮几十年来行军打仗，治国安邦的经验。", "small_5_shu_4_6.png", "big_5_shu_4_6.png", 12, 5, 1, 1, 500, 999, nil, 2, 502504, },
	id_5025051 = {5025051, "孙子兵法碎片一", "春秋时代齐国名将孙武所著兵书圣典，内容博大精深，思想精邃富赡。", "small_5_shu_5_1.png", "big_5_shu_5_1.png", 12, 5, 1, 1, 500, 999, nil, 2, 502505, },
	id_5025052 = {5025052, "孙子兵法碎片二", "春秋时代齐国名将孙武所著兵书圣典，内容博大精深，思想精邃富赡。", "small_5_shu_5_2.png", "big_5_shu_5_2.png", 12, 5, 1, 1, 500, 999, nil, 2, 502505, },
	id_5025053 = {5025053, "孙子兵法碎片三", "春秋时代齐国名将孙武所著兵书圣典，内容博大精深，思想精邃富赡。", "small_5_shu_5_3.png", "big_5_shu_5_3.png", 12, 5, 1, 1, 500, 999, nil, 2, 502505, },
	id_5025054 = {5025054, "孙子兵法碎片四", "春秋时代齐国名将孙武所著兵书圣典，内容博大精深，思想精邃富赡。", "small_5_shu_5_4.png", "big_5_shu_5_4.png", 12, 5, 1, 1, 500, 999, nil, 2, 502505, },
	id_5025055 = {5025055, "孙子兵法碎片五", "春秋时代齐国名将孙武所著兵书圣典，内容博大精深，思想精邃富赡。", "small_5_shu_5_5.png", "big_5_shu_5_5.png", 12, 5, 1, 1, 500, 999, nil, 2, 502505, },
	id_5025056 = {5025056, "孙子兵法碎片六", "春秋时代齐国名将孙武所著兵书圣典，内容博大精深，思想精邃富赡。", "small_5_shu_5_6.png", "big_5_shu_5_6.png", 12, 5, 1, 1, 500, 999, nil, 2, 502505, },
	id_5025061 = {5025061, "青囊书碎片一", "医圣华佗所创的医书，由于装在青色的袋子中，又名青囊书。", "small_5_shu_6_1.png", "big_5_shu_6_1.png", 12, 5, 1, 1, 500, 999, nil, 2, 502506, },
	id_5025062 = {5025062, "青囊书碎片二", "医圣华佗所创的医书，由于装在青色的袋子中，又名青囊书。", "small_5_shu_6_2.png", "big_5_shu_6_2.png", 12, 5, 1, 1, 500, 999, nil, 2, 502506, },
	id_5025063 = {5025063, "青囊书碎片三", "医圣华佗所创的医书，由于装在青色的袋子中，又名青囊书。", "small_5_shu_6_3.png", "big_5_shu_6_3.png", 12, 5, 1, 1, 500, 999, nil, 2, 502506, },
	id_5025064 = {5025064, "青囊书碎片四", "医圣华佗所创的医书，由于装在青色的袋子中，又名青囊书。", "small_5_shu_6_4.png", "big_5_shu_6_4.png", 12, 5, 1, 1, 500, 999, nil, 2, 502506, },
	id_5025065 = {5025065, "青囊书碎片五", "医圣华佗所创的医书，由于装在青色的袋子中，又名青囊书。", "small_5_shu_6_5.png", "big_5_shu_6_5.png", 12, 5, 1, 1, 500, 999, nil, 2, 502506, },
	id_5025066 = {5025066, "青囊书碎片六", "医圣华佗所创的医书，由于装在青色的袋子中，又名青囊书。", "small_5_shu_6_6.png", "big_5_shu_6_6.png", 12, 5, 1, 1, 500, 999, nil, 2, 502506, },
	id_5010011 = {5010011, "经验银马碎片一", "用官银铸造的银马，可用于强化战马，获得200经验。", "small_4_ma_91_1.png", "big_4_ma_91_1.png", 12, 4, 1, 1, 400, 999, nil, 1, 501001, },
	id_5010012 = {5010012, "经验银马碎片二", "用官银铸造的银马，可用于强化战马，获得200经验。", "small_4_ma_91_2.png", "big_4_ma_91_2.png", 12, 4, 1, 1, 400, 999, nil, 1, 501001, },
	id_5010013 = {5010013, "经验银马碎片三", "用官银铸造的银马，可用于强化战马，获得200经验。", "small_4_ma_91_3.png", "big_4_ma_91_3.png", 12, 4, 1, 1, 400, 999, nil, 1, 501001, },
	id_5010021 = {5010021, "经验金马碎片一", "由纯金铸造的金马，可用于强化战马，获得1000经验。", "small_5_ma_91_1.png", "big_5_ma_91_1.png", 12, 5, 1, 1, 500, 999, nil, 1, 501002, },
	id_5010022 = {5010022, "经验金马碎片二", "由纯金铸造的金马，可用于强化战马，获得1000经验。", "small_5_ma_91_2.png", "big_5_ma_91_2.png", 12, 5, 1, 1, 500, 999, nil, 1, 501002, },
	id_5010023 = {5010023, "经验金马碎片三", "由纯金铸造的金马，可用于强化战马，获得1000经验。", "small_5_ma_91_3.png", "big_5_ma_91_3.png", 12, 5, 1, 1, 500, 999, nil, 1, 501002, },
	id_5020011 = {5020011, "经验银书碎片一", "用官银铸造的银书，可用于强化兵书，获得200经验。", "small_4_shu_91_1.png", "big_4_shu_91_1.png", 12, 4, 1, 1, 400, 999, nil, 2, 502001, },
	id_5020012 = {5020012, "经验银书碎片二", "用官银铸造的银书，可用于强化兵书，获得200经验。", "small_4_shu_91_2.png", "big_4_shu_91_2.png", 12, 4, 1, 1, 400, 999, nil, 2, 502001, },
	id_5020013 = {5020013, "经验银书碎片三", "用官银铸造的银书，可用于强化兵书，获得200经验。", "small_4_shu_91_3.png", "big_4_shu_91_3.png", 12, 4, 1, 1, 400, 999, nil, 2, 502001, },
	id_5020021 = {5020021, "经验金书碎片一", "由纯金铸造的金书，可用于强化兵书，获得1000经验。", "small_5_shu_91_1.png", "big_5_shu_91_1.png", 12, 5, 1, 1, 500, 999, nil, 2, 502002, },
	id_5020022 = {5020022, "经验金书碎片二", "由纯金铸造的金书，可用于强化兵书，获得1000经验。", "small_5_shu_91_2.png", "big_5_shu_91_2.png", 12, 5, 1, 1, 500, 999, nil, 2, 502002, },
	id_5020023 = {5020023, "经验金书碎片三", "由纯金铸造的金书，可用于强化兵书，获得1000经验。", "small_5_shu_91_3.png", "big_5_shu_91_3.png", 12, 5, 1, 1, 500, 999, nil, 2, 502002, },
	id_5010101 = {5010101, "宝物精华碎片一", "融合了五行之力的宝物精华，能够激发宝物的潜在能力，可用于宝物精炼。", "small_5_ma_101_1.png", "big_5_ma_101_1.png", 12, 5, 1, 1, 500, 999, nil, 1, 501010, },
	id_5010102 = {5010102, "宝物精华碎片二", "融合了五行之力的宝物精华，能够激发宝物的潜在能力，可用于宝物精炼。", "small_5_ma_101_2.png", "big_5_ma_101_2.png", 12, 5, 1, 1, 500, 999, nil, 1, 501010, },
	id_5010103 = {5010103, "宝物精华碎片三", "融合了五行之力的宝物精华，能够激发宝物的潜在能力，可用于宝物精炼。", "small_5_ma_101_3.png", "big_5_ma_101_3.png", 12, 5, 1, 1, 500, 999, nil, 1, 501010, },
	id_5010104 = {5010104, "宝物精华碎片四", "融合了五行之力的宝物精华，能够激发宝物的潜在能力，可用于宝物精炼。", "small_5_ma_101_4.png", "big_5_ma_101_4.png", 12, 5, 1, 1, 500, 999, nil, 1, 501010, },
	id_5010105 = {5010105, "宝物精华碎片五", "融合了五行之力的宝物精华，能够激发宝物的潜在能力，可用于宝物精炼。", "small_5_ma_101_5.png", "big_5_ma_101_5.png", 12, 5, 1, 1, 500, 999, nil, 1, 501010, },
	id_5010106 = {5010106, "宝物精华碎片六", "融合了五行之力的宝物精华，能够激发宝物的潜在能力，可用于宝物精炼。", "small_5_ma_101_6.png", "big_5_ma_101_6.png", 12, 5, 1, 1, 500, 999, nil, 1, 501010, },
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
	local id_data = Item_treasure_fragment["id_" .. key_id]
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
	for k, v in pairs(Item_treasure_fragment) do
		if v[fieldNo] == fieldValue then
			setmetatable (v, mt)
			arrData[#arrData+1] = v
		end
	end

	return arrData
end

function release()
	_G["DB_Item_treasure_fragment"] = nil
	package.loaded["DB_Item_treasure_fragment"] = nil
	package.loaded["db/DB_Item_treasure_fragment"] = nil
end

