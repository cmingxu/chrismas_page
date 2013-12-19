# -*- encoding : utf-8 -*-
#
    JSON_QUESTION_ROUND_ONE =<<EOF
      [{"question": "以下哪个不是圣诞老人的昵称 ?", "options": "A 、Noel,B 、Santa,C 、Snow White", "answer":"C"},
       {"question": "哪几个国家可以不用冬衣过圣诞 ?", "options": "A、丹麦,B、澳洲,C、南非,D、希腊,F、马尔代夫", "answer": "BCE"},
       {"question": "路德教为了纪念耶稣降临而发明了一种记录生日前24天的形式，如今变成了让小盆友每天寻找一件当天的礼物，以更期待圣诞的降临，这就是圣诞日历的由来，它的英文被称为?", "answer": "Advent Calendar"},
       {"question": "以下哪种不是圣诞日历？", "options": "", "answer": "D"},
       {"question": "圣诞节的传统颜色是以下哪几种？", "options": "A、红,B、橙,C、绿,D、金,E、白,F、蓝", "answer": "ACDEF"},
       {"question": "红色是所有传统颜色中最经典的一种，你知道它来自于哪个传说？", "options": "A、伊甸园中的红苹果,B、圣果的颜色,C、圣袍的颜色", "answer": "A"},
       {"question": "每年的圣诞节都是12月25日，可是有个国家的圣诞节却一反常态不是12月二十五日而是12月27日，你知道是哪个国家吗？", "answer": "埃及"},
       {"question": "圣诞老人出门的行头非常多，最为引人注目的是帮他拉雪橇的动物，它是？","options": "A、梅花鹿,B、驯鹿,C、长颈鹿,D、麋鹿", "answer": "B"},
       {"question": "装饰圣诞树时，最常在圣诞树的最顶端放 ","options": "A、一个玩偶或一颗星星,B、一份礼物,C、一个圣诞老人,D、一粒松果",  "answer": "A"},
       {"question": "在传统的圣诞餐桌上，__是不可缺少的菜式", "answer": "A", "options": "A、烤火鸡,B、烤羊腿,C、烤乳猪,D、烤全羊"},
       {"question": "在好侍12月圣诞专辑的宣传画面有出现圣诞老人吗？", "answer": "A", "options": "A、没有,B、有"},
       {"question": "看来你对圣诞节相关的知识很是了解，这么多题都难不倒你，已经接近成功，最后一题，圣诞老人我们一直叫他圣诞老人，那他原来的名字是什么？", "answer": "尼古拉"}
    ]
EOF


class Question
    JSON_QUESTION =<<EOF
    [
{"question": "红色的石榴也是圣诞节的传统元素，用来调鸡尾酒、制作营养果昔，还能放进沙拉里。如果要榨一杯250ml的石榴汁，至少需要多少个石榴？", 
"options": "A. 1个,B. 2个,C. 3个,D. 4个","answer": "B"},

{"question": "对于圣诞节来说，最传统的蛋奶饮料可能就是eggnog蛋酒了，它是用生鸡蛋、牛奶或者鲜奶油、糖和香料制成的，以下哪些香料可以用来做传统的蛋酒？",
  "options": "A. 肉桂棒, B. 香草荚, C. 茴香, D. 肉豆蔻, E. 小豆蔻", "answer": "ABE"},

 {"question": " 肉桂棒可以算是最有圣诞气氛的香料，它是用肉桂树的哪部分制成?"
 "options": "A. 树根, B. 树叶, C. 树皮, D.  果实", "answer": "C"},

 {"question": "肉桂的香气非常甜蜜，常用来制作热饮和甜点。以下哪种食材和它最为搭配？",
 "options": "A. 草莓, B. 香蕉, C. 粗粮面包, D. 苹果", "answer": "D"},

 {"question": " 若是你想要喝热的饮料，还有一种在加热红酒中放入橙皮、柠檬皮和肉桂棒、丁香等香料制成的圣诞特饮，它的英文名字叫做?",
  "answer": "Mulled Wine"},

 {"question": "虽然热红酒微甜，但它的口感与圣诞甜点非常搭配，红丝绒蛋糕有着诱人的绛红色蛋糕内层，天然的制作做法中并不放食用色素来调配红色，而是选择了如下一种食材",
"options": "A. 红糖, B. 甜菜根, C. 红树莓, D. 车厘子", "answer": "B"},

{"question": "另一种圣诞节极其著名的甜点是mince pie，它的中文译名繁多，以下哪种更正确？",
"options": "A. 肉馅饼, B. 卤肉饼, C. 百果馅小馅饼, D. 月饼", "answer": "C"},

{"question": "mince pie的内馅由很多干果和白兰地制成，以下哪种红色食材是品种之一：",
"options": "A. 山楂, B. 蔓越莓, C. 番茄, D. 甜菜根", "answer": "B"},
{"question": " 红烩更接近于以下哪几种西方烹饪方式：",
"options": "A. Stew, B. Fry, C.Roast, D.Braise", "answer": "AD"},
{"question": "传统红烩的红色来自于以下哪些食材？",
"options": "A. 番茄, B. 红葡萄酒, C. 甜菜根, D. 红高粱", "answer": "ABC"},
{"question": "现代红烩更多使用番茄来制作，它不但可以带来酸甜的口感，其中还含有如下哪些对身体有益的成分？",
"options": "A.维生素C, B. 维生素E, C. 番茄红素, D. 抗氧化剂", "answer": "ACD"},
{"question": "又到最后一题，我总是很想给你出很难题，但是你的知识面实在广，那好吧，请回答以下哪些可以用番茄红烩调料来制作",
"options": "A. 红酱意大利面, B. 烘焙美食, C. 鸡尾酒, D. 波尔多红烩牛肉, E. 乌克兰红菜汤", "answer": "ABDE"}
]
EOF
  def self.all
    JSON.parse(JSON_QUESTION).map do |qhash|
      q = OpenStruct.new(qhash) 
      q.options = q.options.split(",") if q.options
      q.type = "text" unless q.options
      q.type = "checkbox" if q.answer.size() > 1 and q.options.present?
      q.type = "radio" if q.answer.size() == 1 

      q
    end

  end


  def self.age_poll_options
    [["20-30","20-30"], ["30-40","30-40"], ["40-50", "40-50"], ["50+", "50以上"]]
  end


  def self.gender_poll_options
    [["男","男"], ["女","女"]]
  end
end
