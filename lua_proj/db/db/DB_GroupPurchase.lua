-- Filename: DB_GroupPurchase.lua
-- Author: auto-created by XmlToScript tool.
-- Function: it`s auto-created by XmlToScript tool.

module("DB_GroupPurchase", package.seeall)

keys = {
	"id", "price", "vip", "oriprice", "icon", "name", "quality", "reward", "numtop", "num1", "reward1", "num2", "reward2", "num3", "reward3", "num4", "reward4", "num5", "reward5", "num6", "reward6", "num7", "reward7", "num8", "reward8", "num9", "reward9", "num10", "reward10", "num11", "reward11", "num12", "reward12", "num13", "reward13", "num14", "reward14", "num15", "reward15", "num16", "reward16", "num17", "reward17", "num18", "reward18", "num19", "reward19", "num20", "reward20", "goodsId", "changeTime", 
}

GroupPurchase = {
	id_1 = {1, 50, 0, 100, 1, "1档礼包", 2, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 10, 5, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 10, "1|0|200000,14|5010101|1,7|30003|5,7|30013|5,7|60006|5,7|30102|5", 20, "1|0|300000,14|5010101|1,7|60007|100,7|60002|500,7|60006|10,7|30102|10,13|40001|15", 30, "1|0|400000,7|30201|1,7|501010|1,7|30003|10,7|30013|10,7|60006|20,7|30102|20", 40, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 60, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 70, "1|0|200000,14|5010101|1,7|30003|5,7|30013|5,7|60006|5,7|30102|5", 80, "1|0|300000,14|5010101|1,7|60007|100,7|60002|500,7|60006|10,7|30102|10,13|40001|15", 90, "1|0|400000,7|30201|1,7|501010|1,7|30003|10,7|30013|10,7|60006|20,7|30102|20", 100, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, "1|2|3|4,5|6|7|8,1|2|3|4", 000000, },
	id_2 = {2, 100, 1, 200, 2, "2档礼包", 3, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 20, 5, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 10, "1|0|200000,14|5010101|1,7|30003|5,7|30013|5,7|60006|5,7|30102|5", 20, "1|0|300000,14|5010101|1,7|60007|100,7|60002|500,7|60006|10,7|30102|10,13|40001|15", 30, "1|0|400000,7|30201|1,7|501010|1,7|30003|10,7|30013|10,7|60006|20,7|30102|20", 40, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 60, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 70, "1|0|200000,14|5010101|1,7|30003|5,7|30013|5,7|60006|5,7|30102|5", 80, "1|0|300000,14|5010101|1,7|60007|100,7|60002|500,7|60006|10,7|30102|10,13|40001|15", 90, "1|0|400000,7|30201|1,7|501010|1,7|30003|10,7|30013|10,7|60006|20,7|30102|20", 100, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 110, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 120, "1|0|200000,14|5010101|1,7|30003|5,7|30013|5,7|60006|5,7|30102|5", 130, "1|0|300000,14|5010101|1,7|60007|100,7|60002|500,7|60006|10,7|30102|10,13|40001|15", 140, "1|0|400000,7|30201|1,7|501010|1,7|30003|10,7|30013|10,7|60006|20,7|30102|20", 150, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 200, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 250, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 300, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 400, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 450, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", "1|2|3|4,5|6|7|8,1|2|3|4", 000000, },
	id_3 = {3, 150, 2, 300, 3, "3档礼包", 4, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 20, 5, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 10, "1|0|200000,14|5010101|1,7|30003|5,7|30013|5,7|60006|5,7|30102|5", 20, "1|0|300000,14|5010101|1,7|60007|100,7|60002|500,7|60006|10,7|30102|10,13|40001|15", 30, "1|0|400000,7|30201|1,7|501010|1,7|30003|10,7|30013|10,7|60006|20,7|30102|20", 40, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 60, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 70, "1|0|200000,14|5010101|1,7|30003|5,7|30013|5,7|60006|5,7|30102|5", 80, "1|0|300000,14|5010101|1,7|60007|100,7|60002|500,7|60006|10,7|30102|10,13|40001|15", 90, "1|0|400000,7|30201|1,7|501010|1,7|30003|10,7|30013|10,7|60006|20,7|30102|20", 100, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 110, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 120, "1|0|200000,14|5010101|1,7|30003|5,7|30013|5,7|60006|5,7|30102|5", 130, "1|0|300000,14|5010101|1,7|60007|100,7|60002|500,7|60006|10,7|30102|10,13|40001|15", 140, "1|0|400000,7|30201|1,7|501010|1,7|30003|10,7|30013|10,7|60006|20,7|30102|20", 150, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 200, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 250, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 300, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 400, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 450, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", "1|2|3|4,5|6|7|8,1|2|3|4", 000000, },
	id_4 = {4, 200, 3, 400, 4, "4档礼包", 5, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 20, 5, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 10, "1|0|200000,14|5010101|1,7|30003|5,7|30013|5,7|60006|5,7|30102|5", 20, "1|0|300000,14|5010101|1,7|60007|100,7|60002|500,7|60006|10,7|30102|10,13|40001|15", 30, "1|0|400000,7|30201|1,7|501010|1,7|30003|10,7|30013|10,7|60006|20,7|30102|20", 40, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 60, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 70, "1|0|200000,14|5010101|1,7|30003|5,7|30013|5,7|60006|5,7|30102|5", 80, "1|0|300000,14|5010101|1,7|60007|100,7|60002|500,7|60006|10,7|30102|10,13|40001|15", 90, "1|0|400000,7|30201|1,7|501010|1,7|30003|10,7|30013|10,7|60006|20,7|30102|20", 100, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 110, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 120, "1|0|200000,14|5010101|1,7|30003|5,7|30013|5,7|60006|5,7|30102|5", 130, "1|0|300000,14|5010101|1,7|60007|100,7|60002|500,7|60006|10,7|30102|10,13|40001|15", 140, "1|0|400000,7|30201|1,7|501010|1,7|30003|10,7|30013|10,7|60006|20,7|30102|20", 150, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 200, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 250, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 300, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 400, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 450, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", "1|2|3|4,5|6|7|8,1|2|3|4", 000000, },
	id_5 = {5, 250, 4, 500, 1, "1档礼包", 1, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 20, 5, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 10, "1|0|200000,14|5010101|1,7|30003|5,7|30013|5,7|60006|5,7|30102|5", 20, "1|0|300000,14|5010101|1,7|60007|100,7|60002|500,7|60006|10,7|30102|10,13|40001|15", 30, "1|0|400000,7|30201|1,7|501010|1,7|30003|10,7|30013|10,7|60006|20,7|30102|20", 40, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 60, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 70, "1|0|200000,14|5010101|1,7|30003|5,7|30013|5,7|60006|5,7|30102|5", 80, "1|0|300000,14|5010101|1,7|60007|100,7|60002|500,7|60006|10,7|30102|10,13|40001|15", 90, "1|0|400000,7|30201|1,7|501010|1,7|30003|10,7|30013|10,7|60006|20,7|30102|20", 100, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 110, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 120, "1|0|200000,14|5010101|1,7|30003|5,7|30013|5,7|60006|5,7|30102|5", 130, "1|0|300000,14|5010101|1,7|60007|100,7|60002|500,7|60006|10,7|30102|10,13|40001|15", 140, "1|0|400000,7|30201|1,7|501010|1,7|30003|10,7|30013|10,7|60006|20,7|30102|20", 150, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 200, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 250, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 300, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 400, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 450, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", "1|2|3|4,5|6|7|8,1|2|3|4", 000000, },
	id_6 = {6, 300, 5, 600, 2, "2档礼包", 2, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 20, 5, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 10, "1|0|200000,14|5010101|1,7|30003|5,7|30013|5,7|60006|5,7|30102|5", 20, "1|0|300000,14|5010101|1,7|60007|100,7|60002|500,7|60006|10,7|30102|10,13|40001|15", 30, "1|0|400000,7|30201|1,7|501010|1,7|30003|10,7|30013|10,7|60006|20,7|30102|20", 40, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 60, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 70, "1|0|200000,14|5010101|1,7|30003|5,7|30013|5,7|60006|5,7|30102|5", 80, "1|0|300000,14|5010101|1,7|60007|100,7|60002|500,7|60006|10,7|30102|10,13|40001|15", 90, "1|0|400000,7|30201|1,7|501010|1,7|30003|10,7|30013|10,7|60006|20,7|30102|20", 100, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 110, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 120, "1|0|200000,14|5010101|1,7|30003|5,7|30013|5,7|60006|5,7|30102|5", 130, "1|0|300000,14|5010101|1,7|60007|100,7|60002|500,7|60006|10,7|30102|10,13|40001|15", 140, "1|0|400000,7|30201|1,7|501010|1,7|30003|10,7|30013|10,7|60006|20,7|30102|20", 150, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 200, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 250, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 300, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 400, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 450, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", "1|2|3|4,5|6|7|8,1|2|3|4", 000000, },
	id_7 = {7, 350, 6, 700, 3, "3档礼包", 3, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 20, 5, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 10, "1|0|200000,14|5010101|1,7|30003|5,7|30013|5,7|60006|5,7|30102|5", 20, "1|0|300000,14|5010101|1,7|60007|100,7|60002|500,7|60006|10,7|30102|10,13|40001|15", 30, "1|0|400000,7|30201|1,7|501010|1,7|30003|10,7|30013|10,7|60006|20,7|30102|20", 40, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 60, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 70, "1|0|200000,14|5010101|1,7|30003|5,7|30013|5,7|60006|5,7|30102|5", 80, "1|0|300000,14|5010101|1,7|60007|100,7|60002|500,7|60006|10,7|30102|10,13|40001|15", 90, "1|0|400000,7|30201|1,7|501010|1,7|30003|10,7|30013|10,7|60006|20,7|30102|20", 100, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 110, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 120, "1|0|200000,14|5010101|1,7|30003|5,7|30013|5,7|60006|5,7|30102|5", 130, "1|0|300000,14|5010101|1,7|60007|100,7|60002|500,7|60006|10,7|30102|10,13|40001|15", 140, "1|0|400000,7|30201|1,7|501010|1,7|30003|10,7|30013|10,7|60006|20,7|30102|20", 150, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 200, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 250, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 300, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 400, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 450, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", "1|2|3|4,5|6|7|8,1|2|3|4", 000000, },
	id_8 = {8, 400, 7, 800, 4, "4档礼包", 4, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 20, 5, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 10, "1|0|200000,14|5010101|1,7|30003|5,7|30013|5,7|60006|5,7|30102|5", 20, "1|0|300000,14|5010101|1,7|60007|100,7|60002|500,7|60006|10,7|30102|10,13|40001|15", 30, "1|0|400000,7|30201|1,7|501010|1,7|30003|10,7|30013|10,7|60006|20,7|30102|20", 40, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 60, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 70, "1|0|200000,14|5010101|1,7|30003|5,7|30013|5,7|60006|5,7|30102|5", 80, "1|0|300000,14|5010101|1,7|60007|100,7|60002|500,7|60006|10,7|30102|10,13|40001|15", 90, "1|0|400000,7|30201|1,7|501010|1,7|30003|10,7|30013|10,7|60006|20,7|30102|20", 100, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 110, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 120, "1|0|200000,14|5010101|1,7|30003|5,7|30013|5,7|60006|5,7|30102|5", 130, "1|0|300000,14|5010101|1,7|60007|100,7|60002|500,7|60006|10,7|30102|10,13|40001|15", 140, "1|0|400000,7|30201|1,7|501010|1,7|30003|10,7|30013|10,7|60006|20,7|30102|20", 150, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 200, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 250, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 300, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 400, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 450, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", "1|2|3|4,5|6|7|8,1|2|3|4", 000000, },
	id_9 = {9, 450, 8, 900, 1, "1档礼包", 1, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 20, 5, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 10, "1|0|200000,14|5010101|1,7|30003|5,7|30013|5,7|60006|5,7|30102|5", 20, "1|0|300000,14|5010101|1,7|60007|100,7|60002|500,7|60006|10,7|30102|10,13|40001|15", 30, "1|0|400000,7|30201|1,7|501010|1,7|30003|10,7|30013|10,7|60006|20,7|30102|20", 40, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 60, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 70, "1|0|200000,14|5010101|1,7|30003|5,7|30013|5,7|60006|5,7|30102|5", 80, "1|0|300000,14|5010101|1,7|60007|100,7|60002|500,7|60006|10,7|30102|10,13|40001|15", 90, "1|0|400000,7|30201|1,7|501010|1,7|30003|10,7|30013|10,7|60006|20,7|30102|20", 100, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 110, "1|0|100000,7|60007|50,7|60002|300,7|30002|5,7|30012|5,7|30102|5", 120, "1|0|200000,14|5010101|1,7|30003|5,7|30013|5,7|60006|5,7|30102|5", 130, "1|0|300000,14|5010101|1,7|60007|100,7|60002|500,7|60006|10,7|30102|10,13|40001|15", 140, "1|0|400000,7|30201|1,7|501010|1,7|30003|10,7|30013|10,7|60006|20,7|30102|20", 150, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 200, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 250, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 300, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 400, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", 450, "1|0|500000,14|5015061|1,7|501010|1,7|60007|200,7|60002|1000,7|60006|30,7|30102|30,13|40001|30", "1|2|3|4,5|6|7|8,1|2|3|4", 000000, },
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
	local id_data = GroupPurchase["id_" .. key_id]
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
	for k, v in pairs(GroupPurchase) do
		if v[fieldNo] == fieldValue then
			setmetatable (v, mt)
			arrData[#arrData+1] = v
		end
	end

	return arrData
end

function release()
	_G["DB_GroupPurchase"] = nil
	package.loaded["DB_GroupPurchase"] = nil
	package.loaded["db/DB_GroupPurchase"] = nil
end
