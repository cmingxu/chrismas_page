var roundOne =
  [{"question": "以下哪个不是圣诞老人的昵称 ?", "options": "A 、Noel,B 、Santa,C 、Snow White", "answer":"C"},
    {"question": "哪几个国家可以不用冬衣过圣诞 ?", "options": "A、丹麦,B、澳洲,C、南非,D、希腊,F、马尔代夫", "answer": "BCE"},
    {"question": "路德教为了纪念耶稣降临而发明了一种记录生日前24天的形式，如今变成了让小盆友每天寻找一件当天的礼物，以更期待圣诞的降临，这就是圣诞日历的由来，它的英文被称为?", "answer": "Advent Calendar"},
    {"question": "以下哪种不是圣诞日历？", "answer": "D"},
    {"question": "圣诞节的传统颜色是以下哪几种？", "options": "A、红,B、橙,C、绿,D、金,E、白,F、蓝", "answer": "ACDEF"},
    {"question": "红色是所有传统颜色中最经典的一种，你知道它来自于哪个传说？", "options": "A、伊甸园中的红苹果,B、圣果的颜色,C、圣袍的颜色", "answer": "A"},
    {"question": "每年的圣诞节都是12月25日，可是有个国家的圣诞节却一反常态不是12月二十五日而是12月27日，你知道是哪个国家吗？", "answer": "埃及"},
    {"question": "圣诞老人出门的行头非常多，最为引人注目的是帮他拉雪橇的动物，它是？","options": "A、梅花鹿,B、驯鹿,C、长颈鹿,D、麋鹿", "answer": "B"},
    {"question": "装饰圣诞树时，最常在圣诞树的最顶端放 ","options": "A、一个玩偶或一颗星星,B、一份礼物,C、一个圣诞老人,D、一粒松果",  "answer": "A"},
    {"question": "在传统的圣诞餐桌上，__是不可缺少的菜式", "answer": "A", "options": "A、烤火鸡 B、烤羊腿 C、烤乳猪 D、烤全羊"},
    {"question": "在好侍12月圣诞专辑的宣传画面有出现圣诞老人吗？", "answer": "A", "options": "A、没有 B、有"},
    {"question": "看来你对圣诞节相关的知识很是了解，这么多题都难不倒你，已经接近成功，最后一题，圣诞老人我们一直叫他圣诞老人，那他原来的名字是什么？", "answer": "尼古拉"}
];
var QAs = function (round) {
  this.qas = [];
  this.current_index = 0;
  this.correct_num = 0;

  for (var i = 0, l = round.length; i < l; i ++) {
    this.qas.push(new QA(round[i]));
  };
};

QAs.prototype.next = function(){
  this.current_index += 1;
  return this.qas[this.current_index + 1];
};

QAs.prototype.first = function(){
  return this.qas[0];
};

QAs.prototype.current = function(){
  return this.qas[this.current_index];
};

var QA = function (options) {
  this.question = options.question;
  this.answer   = options.answer;

  if(undefined == options.options){
    this.type = "text";
  }else{
    if(options.answer.length == 1){
      this.type = "radio";
    }
    else{
      this.type = "choice";
    }
    this.options  = options.options.split(",");
  }
};

QA.prototype.answer_match = function (answer) {
  console.log(answer);
  switch (this.type) {
    case 'radio':
    break;
    case 'choice':
    break;

    case 'text':
      break;
    default:
  }
}


QA.prototype.render = function () {
  $("#question").html(this.question);
  var answer = [];

  switch (this.type) {
    case 'radio':
      for (var i = 0, l = this.options.length; i < l; i ++) {
      answer.push("<div class='item'> <input type='radio' name='result' class='result'></input>" + this.options[i] + "</div>");
    }
    break;
    case 'choice':
      for (var i = 0, l = this.options.length; i < l; i ++) {
      answer.push("<div class='item'> <input type='checkbox' name='result' class='result'></input> " + this.options[i] + "</div>");
    }
    break;

    case 'text':
      answer.push("<div class='item'> <input type='textarea' name='result' class='input_text result'></input></item>");
    default:
  }
    $("#answer").html(answer.join(""));
}



