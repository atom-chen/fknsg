-- Filename: DB_Star_triger.lua
-- Author: auto-created by XmlToScript tool.
-- Function: it`s auto-created by XmlToScript tool.

module("DB_Star_triger", package.seeall)

keys = {
	"id", "scene1", "description1", "option1", "reward1", "option2", "reward2", 
}

Star_triger = {
	id_1001 = {1001, "逛街奇遇1", "暴雨不断，洪水突发，已至城西啦！", "召集道士，抗洪抢险！", "3,100,1", "下雨啦，快收衣服啊！", "1,25,1", },
	id_1002 = {1002, "逛街奇遇2", "有人报告大虫下山惊到百姓！", "大胆老虎，放着我来！", "1,45,1", "等我先拍个照发个微博先！", "3,20,1", },
	id_1003 = {1003, "逛街奇遇3", "有一只小螳螂拦在马车前啦！", "果然今天不宜出行，回府吧。", "3,25,1", "反正也要让母螳螂吃掉，无视它。", "3,45,1", },
	id_1004 = {1004, "逛街奇遇4", "年逾古稀的老妪摔倒在眼前。", "老吾老以及人之老，扶！", "3,55,1", "恐怕是要碰瓷，装作没看见吧…", "3,45,1", },
	id_1005 = {1005, "逛街奇遇5", "提着一篮子鲜花的小姑娘跑过来，眼巴巴的看着你。", "幼吾幼以及人之幼，买！", "3,40,1", "体验生活，跟小姑娘一起卖花。", "1,50,1", },
	id_1006 = {1006, "逛街奇遇6", "有人献上一张藏宝图。", "召集部下，前往寻宝。", "3,30,1", "撕成几块，做成拼图以供玩乐。", "1,35,1", },
	id_1007 = {1007, "逛街奇遇7", "西域教士前来想要讲经说法。", "刚好最近有点失眠，听听看。", "1,85,1", "金窝银窝不如自己狗窝让他回家。", "1,20,1", },
	id_1008 = {1008, "逛街奇遇8", "有位名士前来投靠。", "告诉他我们有美酒美女还有美主公！", "1,65,1", "长相过于猥琐，让他整个容再来。", "1,50,1", },
	id_1009 = {1009, "逛街奇遇9", "暴雪不停，已经大雪封门十几天，府里没米没柴，锅盖和锅都冻住啦。", "……先挖出一条出去的道路吧。", "3,85,1", "让我们尽情地在雪地里翻滚吧！", "3,25,1", },
	id_1010 = {1010, "逛街奇遇10", "有个得了癔症的人举刀冲了过来！", "看看对方的“神经刀法”有何高明！", "1,95,1", "精神病杀人可不犯法，快躲开啊！", "1,45,1", },
	id_1011 = {1011, "逛街奇遇11", "邻居家小孩晚上啼哭不止。", "捂耳无用，果断搬家。", "3,50,1", "气沉丹田，来一首深情的催眠曲。", "3,15,1", },
	id_1012 = {1012, "逛街奇遇12", "旱灾蔓延，恐怕今年颗粒无收了。", "向宇宙发射SOS，请求境外支援。", "3,50,1", "召开励志宣讲会，给百姓洗脑。", "3,45,1", },
	id_1013 = {1013, "逛街奇遇13", "瘟疫爆发，众多百姓深受疾病所苦。", "对天空大喊，请赐我力量吧！", "1,25,1", "学的针灸这下有用武之地了。", "1,25,1", },
	id_1014 = {1014, "逛街奇遇14", "一个流氓有眼无珠，前来讹诈。", "你弱他就强，清风拂山岗。讹他！", "1,60,1", "君子动手不动口，让拳头说话。", "1,30,1", },
	id_1015 = {1015, "逛街奇遇15", "不小心刚好站在两军交战的对峙地点。", "使用遁地术，迅速转移。", "1,30,1", "对两军说教，好孩子不要打架。", "1,15,1", },
	id_1016 = {1016, "逛街奇遇16", "无意间得知幕僚贪赃枉法。", "人非圣贤孰能无过，原谅了他吧。", "3,35,1", "眼里不揉沙子，按规矩办了。", "3,45,1", },
	id_1017 = {1017, "逛街奇遇17", "在路上捡到一枚玉佩。", "贴出布告，寻访失主。", "1,25,1", "拿着玉佩到包子铺换一个包子吃。", "3,45,1", },
	id_1018 = {1018, "逛街奇遇18", "到临县视察，丢失了随身携带的佩剑。", "武器乃身外之物，丢就丢了。", "3,70,1", "买一把木剑装在剑鞘里装作没丢。", "1,30,1", },
	id_1019 = {1019, "逛街奇遇19", "下属报告有人挖到了一座独眼雕像。", "以此为由开展新一轮捏泥人大赛。", "1,35,1", "这是古董啊，收藏起来。", "1,35,1", },
	id_1020 = {1020, "逛街奇遇20", "神医华佗来啦！", "拿一本竹简速去求签名！", "1,55,1", "拔根华佗头发，似乎可延年益寿。", "3,30,1", },
	id_1021 = {1021, "逛街奇遇21", "在乡间小径散步之时，一路结婚队伍路过。", "拿起武器，准备抢亲！", "1,40,1", "祝天下有情人都是亲生兄妹。", "3,45,1", },
	id_1022 = {1022, "逛街奇遇22", "梅雨时节，阴雨连绵，昔日旧伤隐隐作痛。", "召唤美人，揉肩捶背。", "1,85,1", "是时候冬眠了。", "3,25,1", },
	id_1023 = {1023, "逛街奇遇23", "隔壁王二借了一勺盐一直不还。", "打一桶酱油再送过去。", "3,95,1", "拍他家的门命其归还一勺糖。", "3,40,1", },
	id_1024 = {1024, "逛街奇遇24", "有一国色天香的美人邀请月下谈天。", "备上美酒佳肴欣然赴约。", "1,60,1", "恐怕天阴无月，改约在房间内谈心。", "3,50,1", },
	id_1025 = {1025, "逛街奇遇25", "城外吊桥被张飞吼断了，百姓抗议说出入极为不便。", "派人去找刘备商谈赔偿。", "3,90,1", "仗义疏财，出钱修缮。", "1,40,1", },
	id_1026 = {1026, "逛街奇遇26", "临城征战不断，一大波灾民申请入城常驻。", "人多力量大，欢迎移民。", "3,95,1", "恐引发原住民与外来人矛盾，拒绝。", "3,40,1", },
	id_1027 = {1027, "逛街奇遇27", "偶然在小摊吃到了非常美味的一顿饭。", "把摊主请到家里做厨师。", "3,95,1", "去做店小二，赚点外快顺便蹭饭。", "3,10,1", },
	id_1028 = {1028, "逛街奇遇28", "路过赌坊下注，好运地赢了很多。", "拒绝黄赌毒，以后再也不去了。", "1,85,1", "赢来的钱分给穷人。", "1,40,1", },
	id_1029 = {1029, "逛街奇遇29", "早起练剑，不小心闪了腰。", "向相反方向练剑，争取把腰正过来。", "3,85,1", "扶着腰去吃早餐。", "1,35,1", },
	id_1030 = {1030, "逛街奇遇30", "家里的米面都吃完了。", "研墨，画饼充饥。", "3,60,1", "米面吃完了，还可以吃肉啊。", "1,15,1", },
	id_1031 = {1031, "逛街奇遇31", "忽然想不起来一个字如何写，被幕僚嘲笑莽夫无知。", "立刻让那个幕僚卷铺盖卷闪人。", "1,20,1", "回去发奋读书，再不让人嘲笑。", "3,25,1", },
	id_1032 = {1032, "逛街奇遇32", "外出吃饭，临近结账之时发现钱袋没有随身携带。", "主动申请留下做帮工，偿还饭款。", "1,60,1", "抓住邻桌的壮士，央其代为付款。", "3,45,1", },
	id_1033 = {1033, "逛街奇遇33", "气候异常，突然出现大规模的蝗虫聚集，有形成蝗灾的趋向。", "悬赏聘民间治蝗高手，防患于未然。", "3,80,1", "收集飞蝗，研制新菜推广到民间。", "3,40,1", },
	id_1034 = {1034, "逛街奇遇34", "曾经救助过的老农送上一大盆鸡肋骨。", "食之无味弃之可惜，保持纠结状态。", "1,75,1", "分发鸡肋，让其他人一起纠结。", "1,30,1", },
	id_1035 = {1035, "逛街奇遇35", "讨伐叛军，大获全胜。", "摆酒宴，集体庆祝一番。", "1,45,1", "乘胜追击，再接再厉。", "3,15,1", },
	id_1036 = {1036, "逛街奇遇36", "友人来访，赠与了一枚据说是左慈炼制的丹药。", "仙丹灵药，分而食之。", "1,70,1", "坚信科学，拒绝三无产品。", "1,30,1", },
	id_1037 = {1037, "逛街奇遇37", "接受裁缝建议，换了一套风格的衣装，结果看到的人都掩面偷笑。", "这是一个悲伤的故事……", "1,40,1", "穿自己的衣服，让别人说去吧！", "1,20,1", },
	id_1038 = {1038, "逛街奇遇38", "路遇劫匪，有侠士行侠仗义，击退劫匪。", "招募侠士，成为自己的左膀右臂。", "3,30,1", "救命之恩无以为报，唯以身相许。", "1,25,1", },
	id_1039 = {1039, "逛街奇遇39", "一年风调雨顺，无病无灾，庄稼大丰收。", "号召兵士都去帮忙收割。", "3,30,1", "粮价骤降，加入到大抢购的行列之中。", "3,45,1", },
	id_1040 = {1040, "逛街奇遇40", "有人抱着剑上门踢馆，要求比试一番。", "拒绝，告诉他自己不用剑。", "1,25,1", "派出得力武将与其大战三百回合。", "1,10,1", },
	id_1041 = {1041, "逛街奇遇41", "接到密报说有位饱读诗书的名士隐居在城郊。", "三次到名士居住茅草屋，求他出山。", "3,50,1", "与名士在沙盘上来一场对决。", "1,35,1", },
	id_1042 = {1042, "逛街奇遇42", "一个嗷嗷待哺的孤儿被放在路中间。", "被人不小心踩到怎么办，放到路边。", "3,55,1", "给他喂点米糊，继续赶路。", "1,35,1", },
	id_1043 = {1043, "逛街奇遇43", "月末之时，结算银钱发现入不敷出。", "拜访当地豪绅，寻求支援。", "3,85,1", "找出之前藏宝图，前去求财。", "3,25,1", },
	id_1044 = {1044, "逛街奇遇44", "出门突遇滂沱大雨。", "站在断桥边等着有人送伞。", "1,35,1", "生命在于运动，在雨里奔跑起来吧！", "3,30,1", },
	id_1045 = {1045, "逛街奇遇45", "得到一匹千里良驹。", "亲自驯服，收为己用。", "1,40,1", "准备高品质饲料，精心喂养。", "3,25,1", },
	id_1046 = {1046, "逛街奇遇46", "酷热难耐，无心睡眠。", "去找幕僚交流感情。", "1,45,1", "去找美婢看雪看星星看月亮。", "1,40,1", },
	id_1047 = {1047, "逛街奇遇47", "城墙年久失修，砖瓦掉落砸在面前。", "拿着转头找到掉落的凹洞补上去。", "3,90,1", "召集乡绅，商讨修补城墙之事。", "3,45,1", },
	id_1048 = {1048, "逛街奇遇48", "西域商人带来一种名为马铃薯的食物。", "询问煮食方法，做一顿全薯宴。", "3,40,1", "想办法套来培植方法向百姓推广。", "1,30,1", },
	id_1049 = {1049, "逛街奇遇49", "一队舞狮人从身边路过。", "借一套服装立即加入他们。", "3,100,1", "假装自己是绣球，在前面引路。", "1,30,1", },
	id_1050 = {1050, "逛街奇遇50", "独自赶路，傍晚之时也未赶到村镇或驿站。", "以天为盖地为庐，睡。", "1,30,1", "野外露宿不安全，连夜赶路。", "1,50,1", },
	id_1051 = {1051, "逛街奇遇51", "借宿的小屋忽然着火。", "借火点燃火把取暖。", "1,30,1", "跑到几十里之外的河边打水灭火。", "3,35,1", },
	id_1052 = {1052, "逛街奇遇52", "看到一群小孩在水塘边拿石子打水漂。", "摩拳擦掌，加入其中！", "1,35,1", "指导他们如何才能打得更多。", "3,20,1", },
	id_1053 = {1053, "逛街奇遇53", "被人要求在七步之内作一首诗。", "站在原地不动，苦思成诗。", "3,45,1", "闲来无事，何必作诗，走人。", "3,35,1", },
	id_1054 = {1054, "逛街奇遇54", "被曹操邀请来玩一个闯关游戏。", "向关羽请教千里走单骑的经验。", "1,95,1", "礼尚往来，先邀请曹操来玩。", "3,45,1", },
	id_1055 = {1055, "逛街奇遇55", "冬日气温骤降，房门被冻，无法出入。", "暴力破除，重装窗扉。", "1,90,1", "挖一条地道，以供出入。", "1,10,1", },
	id_1056 = {1056, "逛街奇遇56", "天显奇观，彗星凌月。", "招呼众人，同观异象。", "1,40,1", "和小伙伴们一起惊呆了。", "1,25,1", },
	id_1057 = {1057, "逛街奇遇57", "外出讨伐，忽然发现粮草不足。", "写信向邻城求援。", "1,65,1", "遣回一部分兵将，使粮草充沛。", "1,10,1", },
	id_1058 = {1058, "逛街奇遇58", "突染恶疾，卧床不起。", "躺在床上处理事务。", "1,100,1", "派人寻访华佗，邀其上门医治。", "3,25,1", },
	id_1059 = {1059, "逛街奇遇59", "偶得一本兵法奇书。", "每日三炷香，供起来。", "3,50,1", "翻书中是否有藏着秘宝图的夹层。", "1,15,1", },
	id_1060 = {1060, "逛街奇遇60", "井中之水泛黄味苦，无法入口。", "差人重新打一口井。", "3,25,1", "搁置片刻等浊物与水分离。", "1,25,1", },
	id_1061 = {1061, "逛街奇遇61", "城外一个老翁家里的一根葫芦藤长出了七个不同颜色的葫芦。", "天降异象，必有妖孽，铲了它。", "3,100,1", "在老翁家前设路障，给钱才能看。", "1,45,1", },
	id_1062 = {1062, "逛街奇遇62", "仲夏六月，天降大雪，民心涣散。", "编纂新话本，改变百姓关注方向。", "3,60,1", "执棋品茗，坐等雪停。", "3,15,1", },
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
	local id_data = Star_triger["id_" .. key_id]
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
	for k, v in pairs(Star_triger) do
		if v[fieldNo] == fieldValue then
			setmetatable (v, mt)
			arrData[#arrData+1] = v
		end
	end

	return arrData
end

function release()
	_G["DB_Star_triger"] = nil
	package.loaded["DB_Star_triger"] = nil
	package.loaded["db/DB_Star_triger"] = nil
end

