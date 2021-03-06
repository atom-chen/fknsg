-- Filename: DB_Npc_name.lua
-- Author: auto-created by XmlToScript tool.
-- Function: it`s auto-created by XmlToScript tool.

module("DB_Npc_name", package.seeall)

keys = {
	"id", "surname", "girl_name", "boy_name", 
}

Npc_name = {
	id_1 = {1, "巴", "染姝", "元颙", },
	id_2 = {2, "白", "姬翎", "百里", },
	id_3 = {3, "柏", "妃卿", "晟轩", },
	id_4 = {4, "包", "绮嫣", "玄奕", },
	id_5 = {5, "鲍", "姒鸾", "玉珩", },
	id_6 = {6, "暴", "尤芯", "舒玄", },
	id_7 = {7, "贝", "冉纯", "云鹤", },
	id_8 = {8, "毕", "天伊", "容云", },
	id_9 = {9, "边", "纯寂", "奚笙", },
	id_10 = {10, "卞", "怡巧", "雪衣", },
	id_11 = {11, "别", "之风", "子然", },
	id_12 = {12, "卜", "映儿", "习凛", },
	id_13 = {13, "蔡", "秋晴", "灏君", },
	id_14 = {14, "苍", "飞雨", "凌天", },
	id_15 = {15, "曹", "穆春", "孜墨", },
	id_16 = {16, "岑", "初柔", "夫晏", },
	id_17 = {17, "柴", "幻雪", "黎轩", },
	id_18 = {18, "长孙", "友柳", "兼默", },
	id_19 = {19, "常", "怀清", "牧玑", },
	id_20 = {20, "车", "之彤", "凌玄", },
	id_21 = {21, "陈", nil, nil, },
	id_22 = {22, "成", nil, nil, },
	id_23 = {23, "程", nil, nil, },
	id_24 = {24, "池", nil, nil, },
	id_25 = {25, "仇", nil, nil, },
	id_26 = {26, "淳于", nil, nil, },
	id_27 = {27, "从", nil, nil, },
	id_28 = {28, "崔", nil, nil, },
	id_29 = {29, "戴", nil, nil, },
	id_30 = {30, "单", nil, nil, },
	id_31 = {31, "单于", nil, nil, },
	id_32 = {32, "澹台", nil, nil, },
	id_33 = {33, "邓", nil, nil, },
	id_34 = {34, "狄", nil, nil, },
	id_35 = {35, "刁", nil, nil, },
	id_36 = {36, "丁", nil, nil, },
	id_37 = {37, "东方", nil, nil, },
	id_38 = {38, "董", nil, nil, },
	id_39 = {39, "窦", nil, nil, },
	id_40 = {40, "堵", nil, nil, },
	id_41 = {41, "杜", nil, nil, },
	id_42 = {42, "段", nil, nil, },
	id_43 = {43, "樊", nil, nil, },
	id_44 = {44, "范", nil, nil, },
	id_45 = {45, "方", nil, nil, },
	id_46 = {46, "房", nil, nil, },
	id_47 = {47, "费", nil, nil, },
	id_48 = {48, "封", nil, nil, },
	id_49 = {49, "酆", nil, nil, },
	id_50 = {50, "冯", nil, nil, },
	id_51 = {51, "凤", nil, nil, },
	id_52 = {52, "伏", nil, nil, },
	id_53 = {53, "扶", nil, nil, },
	id_54 = {54, "符", nil, nil, },
	id_55 = {55, "傅", nil, nil, },
	id_56 = {56, "富", nil, nil, },
	id_57 = {57, "干", nil, nil, },
	id_58 = {58, "甘", nil, nil, },
	id_59 = {59, "高", nil, nil, },
	id_60 = {60, "葛", nil, nil, },
	id_61 = {61, "公孙", nil, nil, },
	id_62 = {62, "公羊", nil, nil, },
	id_63 = {63, "公冶", nil, nil, },
	id_64 = {64, "宫", nil, nil, },
	id_65 = {65, "龚", nil, nil, },
	id_66 = {66, "贡", nil, nil, },
	id_67 = {67, "谷", nil, nil, },
	id_68 = {68, "顾", nil, nil, },
	id_69 = {69, "管", nil, nil, },
	id_70 = {70, "桂", nil, nil, },
	id_71 = {71, "郭", nil, nil, },
	id_72 = {72, "韩", nil, nil, },
	id_73 = {73, "杭", nil, nil, },
	id_74 = {74, "郝", nil, nil, },
	id_75 = {75, "何", nil, nil, },
	id_76 = {76, "和", nil, nil, },
	id_77 = {77, "贺", nil, nil, },
	id_78 = {78, "赫连", nil, nil, },
	id_79 = {79, "洪", nil, nil, },
	id_80 = {80, "侯", nil, nil, },
	id_81 = {81, "胡", nil, nil, },
	id_82 = {82, "花", nil, nil, },
	id_83 = {83, "华", nil, nil, },
	id_84 = {84, "滑", nil, nil, },
	id_85 = {85, "宦", nil, nil, },
	id_86 = {86, "皇甫", nil, nil, },
	id_87 = {87, "黄", nil, nil, },
	id_88 = {88, "惠", nil, nil, },
	id_89 = {89, "霍", nil, nil, },
	id_90 = {90, "姬", nil, nil, },
	id_91 = {91, "吉", nil, nil, },
	id_92 = {92, "计", nil, nil, },
	id_93 = {93, "纪", nil, nil, },
	id_94 = {94, "季", nil, nil, },
	id_95 = {95, "贾", nil, nil, },
	id_96 = {96, "江", nil, nil, },
	id_97 = {97, "姜", nil, nil, },
	id_98 = {98, "蒋", nil, nil, },
	id_99 = {99, "焦", nil, nil, },
	id_100 = {100, "解", nil, nil, },
	id_101 = {101, "金", nil, nil, },
	id_102 = {102, "经", nil, nil, },
	id_103 = {103, "井", nil, nil, },
	id_104 = {104, "景", nil, nil, },
	id_105 = {105, "康", nil, nil, },
	id_106 = {106, "柯", nil, nil, },
	id_107 = {107, "孔", nil, nil, },
	id_108 = {108, "赖", nil, nil, },
	id_109 = {109, "蓝", nil, nil, },
	id_110 = {110, "郎", nil, nil, },
	id_111 = {111, "劳", nil, nil, },
	id_112 = {112, "乐", nil, nil, },
	id_113 = {113, "雷", nil, nil, },
	id_114 = {114, "黎", nil, nil, },
	id_115 = {115, "李", nil, nil, },
	id_116 = {116, "历", nil, nil, },
	id_117 = {117, "连", nil, nil, },
	id_118 = {118, "廉", nil, nil, },
	id_119 = {119, "梁", nil, nil, },
	id_120 = {120, "林", nil, nil, },
	id_121 = {121, "蔺", nil, nil, },
	id_122 = {122, "凌", nil, nil, },
	id_123 = {123, "令狐", nil, nil, },
	id_124 = {124, "刘", nil, nil, },
	id_125 = {125, "柳", nil, nil, },
	id_126 = {126, "龙", nil, nil, },
	id_127 = {127, "娄", nil, nil, },
	id_128 = {128, "卢", nil, nil, },
	id_129 = {129, "鲁", nil, nil, },
	id_130 = {130, "陆", nil, nil, },
	id_131 = {131, "路", nil, nil, },
	id_132 = {132, "吕", nil, nil, },
	id_133 = {133, "罗", nil, nil, },
	id_134 = {134, "骆", nil, nil, },
	id_135 = {135, "麻", nil, nil, },
	id_136 = {136, "马", nil, nil, },
	id_137 = {137, "毛", nil, nil, },
	id_138 = {138, "茅", nil, nil, },
	id_139 = {139, "梅", nil, nil, },
	id_140 = {140, "蒙", nil, nil, },
	id_141 = {141, "孟", nil, nil, },
	id_142 = {142, "糜", nil, nil, },
	id_143 = {143, "米", nil, nil, },
	id_144 = {144, "苗", nil, nil, },
	id_145 = {145, "闵", nil, nil, },
	id_146 = {146, "明", nil, nil, },
	id_147 = {147, "缪", nil, nil, },
	id_148 = {148, "牧", nil, nil, },
	id_149 = {149, "慕", nil, nil, },
	id_150 = {150, "慕容", nil, nil, },
	id_151 = {151, "穆", nil, nil, },
	id_152 = {152, "倪", nil, nil, },
	id_153 = {153, "宁", nil, nil, },
	id_154 = {154, "牛", nil, nil, },
	id_155 = {155, "欧阳", nil, nil, },
	id_156 = {156, "潘", nil, nil, },
	id_157 = {157, "庞", nil, nil, },
	id_158 = {158, "裴", nil, nil, },
	id_159 = {159, "彭", nil, nil, },
	id_160 = {160, "蓬", nil, nil, },
	id_161 = {161, "平", nil, nil, },
	id_162 = {162, "蒲", nil, nil, },
	id_163 = {163, "濮", nil, nil, },
	id_164 = {164, "戚", nil, nil, },
	id_165 = {165, "齐", nil, nil, },
	id_166 = {166, "钱", nil, nil, },
	id_167 = {167, "乔", nil, nil, },
	id_168 = {168, "秦", nil, nil, },
	id_169 = {169, "邱", nil, nil, },
	id_170 = {170, "秋", nil, nil, },
	id_171 = {171, "裘", nil, nil, },
	id_172 = {172, "屈", nil, nil, },
	id_173 = {173, "全", nil, nil, },
	id_174 = {174, "冉", nil, nil, },
	id_175 = {175, "任", nil, nil, },
	id_176 = {176, "戎", nil, nil, },
	id_177 = {177, "荣", nil, nil, },
	id_178 = {178, "容", nil, nil, },
	id_179 = {179, "阮", nil, nil, },
	id_180 = {180, "芮", nil, nil, },
	id_181 = {181, "桑", nil, nil, },
	id_182 = {182, "山", nil, nil, },
	id_183 = {183, "上官", nil, nil, },
	id_184 = {184, "尚", nil, nil, },
	id_185 = {185, "韶", nil, nil, },
	id_186 = {186, "邵", nil, nil, },
	id_187 = {187, "申", nil, nil, },
	id_188 = {188, "申屠", nil, nil, },
	id_189 = {189, "沈", nil, nil, },
	id_190 = {190, "盛", nil, nil, },
	id_191 = {191, "施", nil, nil, },
	id_192 = {192, "石", nil, nil, },
	id_193 = {193, "时", nil, nil, },
	id_194 = {194, "史", nil, nil, },
	id_195 = {195, "寿", nil, nil, },
	id_196 = {196, "舒", nil, nil, },
	id_197 = {197, "双", nil, nil, },
	id_198 = {198, "舜", nil, nil, },
	id_199 = {199, "司", nil, nil, },
	id_200 = {200, "司空", nil, nil, },
	id_201 = {201, "司马", nil, nil, },
	id_202 = {202, "司徒", nil, nil, },
	id_203 = {203, "松", nil, nil, },
	id_204 = {204, "宋", nil, nil, },
	id_205 = {205, "苏", nil, nil, },
	id_206 = {206, "宿", nil, nil, },
	id_207 = {207, "孙", nil, nil, },
	id_208 = {208, "索", nil, nil, },
	id_209 = {209, "邰", nil, nil, },
	id_210 = {210, "谈", nil, nil, },
	id_211 = {211, "谭", nil, nil, },
	id_212 = {212, "汤", nil, nil, },
	id_213 = {213, "唐", nil, nil, },
	id_214 = {214, "陶", nil, nil, },
	id_215 = {215, "滕", nil, nil, },
	id_216 = {216, "田", nil, nil, },
	id_217 = {217, "通", nil, nil, },
	id_218 = {218, "童", nil, nil, },
	id_219 = {219, "屠", nil, nil, },
	id_220 = {220, "万", nil, nil, },
	id_221 = {221, "汪", nil, nil, },
	id_222 = {222, "王", nil, nil, },
	id_223 = {223, "危", nil, nil, },
	id_224 = {224, "韦", nil, nil, },
	id_225 = {225, "卫", nil, nil, },
	id_226 = {226, "尉迟", nil, nil, },
	id_227 = {227, "魏", nil, nil, },
	id_228 = {228, "温", nil, nil, },
	id_229 = {229, "闻", nil, nil, },
	id_230 = {230, "闻人", nil, nil, },
	id_231 = {231, "翁", nil, nil, },
	id_232 = {232, "乌", nil, nil, },
	id_233 = {233, "巫", nil, nil, },
	id_234 = {234, "吴", nil, nil, },
	id_235 = {235, "伍", nil, nil, },
	id_236 = {236, "武", nil, nil, },
	id_237 = {237, "奚", nil, nil, },
	id_238 = {238, "习", nil, nil, },
	id_239 = {239, "席", nil, nil, },
	id_240 = {240, "夏", nil, nil, },
	id_241 = {241, "夏侯", nil, nil, },
	id_242 = {242, "项", nil, nil, },
	id_243 = {243, "萧", nil, nil, },
	id_244 = {244, "谢", nil, nil, },
	id_245 = {245, "邢", nil, nil, },
	id_246 = {246, "安", nil, nil, },
	id_247 = {247, "熊", nil, nil, },
	id_248 = {248, "胥", nil, nil, },
	id_249 = {249, "徐", nil, nil, },
	id_250 = {250, "许", nil, nil, },
	id_251 = {251, "轩辕", nil, nil, },
	id_252 = {252, "宣", nil, nil, },
	id_253 = {253, "薛", nil, nil, },
	id_254 = {254, "荀", nil, nil, },
	id_255 = {255, "严", nil, nil, },
	id_256 = {256, "阎", nil, nil, },
	id_257 = {257, "颜", nil, nil, },
	id_258 = {258, "燕", nil, nil, },
	id_259 = {259, "阳", nil, nil, },
	id_260 = {260, "杨", nil, nil, },
	id_261 = {261, "姚", nil, nil, },
	id_262 = {262, "叶", nil, nil, },
	id_263 = {263, "叶赫那拉", nil, nil, },
	id_264 = {264, "伊", nil, nil, },
	id_265 = {265, "尹", nil, nil, },
	id_266 = {266, "印", nil, nil, },
	id_267 = {267, "应", nil, nil, },
	id_268 = {268, "雍", nil, nil, },
	id_269 = {269, "尤", nil, nil, },
	id_270 = {270, "于", nil, nil, },
	id_271 = {271, "余", nil, nil, },
	id_272 = {272, "鱼", nil, nil, },
	id_273 = {273, "俞", nil, nil, },
	id_274 = {274, "虞", nil, nil, },
	id_275 = {275, "宇文", nil, nil, },
	id_276 = {276, "郁", nil, nil, },
	id_277 = {277, "元", nil, nil, },
	id_278 = {278, "袁", nil, nil, },
	id_279 = {279, "岳", nil, nil, },
	id_280 = {280, "云", nil, nil, },
	id_281 = {281, "翟", nil, nil, },
	id_282 = {282, "湛", nil, nil, },
	id_283 = {283, "张", nil, nil, },
	id_284 = {284, "章", nil, nil, },
	id_285 = {285, "召", nil, nil, },
	id_286 = {286, "赵", nil, nil, },
	id_287 = {287, "甄", nil, nil, },
	id_288 = {288, "郑", nil, nil, },
	id_289 = {289, "支", nil, nil, },
	id_290 = {290, "钟离", nil, nil, },
	id_291 = {291, "仲", nil, nil, },
	id_292 = {292, "仲孙", nil, nil, },
	id_293 = {293, "周", nil, nil, },
	id_294 = {294, "朱", nil, nil, },
	id_295 = {295, "诸", nil, nil, },
	id_296 = {296, "诸葛", nil, nil, },
	id_297 = {297, "祝", nil, nil, },
	id_298 = {298, "庄", nil, nil, },
	id_299 = {299, "卓", nil, nil, },
	id_300 = {300, "宗", nil, nil, },
	id_301 = {301, "宗政", nil, nil, },
	id_302 = {302, "邹", nil, nil, },
	id_303 = {303, "祖", nil, nil, },
	id_304 = {304, "左", nil, nil, },
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
	local id_data = Npc_name["id_" .. key_id]
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
	for k, v in pairs(Npc_name) do
		if v[fieldNo] == fieldValue then
			setmetatable (v, mt)
			arrData[#arrData+1] = v
		end
	end

	return arrData
end

function release()
	_G["DB_Npc_name"] = nil
	package.loaded["DB_Npc_name"] = nil
	package.loaded["db/DB_Npc_name"] = nil
end

