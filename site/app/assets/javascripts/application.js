// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var roundOne =
  [{"question": "以下哪个不是圣诞老人的昵称 ?", "options": "Noel,Santa,Snow White", "answer":"C"},
    {"question": "哪几个国家可以不用冬衣过圣诞 ?", "options": "丹麦,澳洲,南非,希腊,马尔代夫", "answer": "BCE"},
    {"question": "路德教为了纪念耶稣降临而发明了一种记录生日前24天的形式，如今变成了让小盆友每天寻找一件当天的礼物，以更期待圣诞的降临，这就是圣诞日历的由来，它的英文被称为?", "answer": "Advent Calendar"},
    {"question": "以下哪种不是圣诞日历？", "answer": "D", "options": "http://placehold.it/64x64, http://placehold.it/64x64,http://placehold.it/64x64,http://placehold.it/64x64"},
    {"question": "圣诞节的传统颜色是以下哪几种？", "options": "红,橙,绿,金,白,蓝", "answer": "ACDEF"},
    {"question": "红色是所有传统颜色中最经典的一种，你知道它来自于哪个传说？", "options": "伊甸园中的红苹果,圣果的颜色,圣袍的颜色", "answer": "A"},
    {"question": "每年的圣诞节都是12月25日，可是有个国家的圣诞节却一反常态不是12月二十五日而是12月27日，你知道是哪个国家吗？", "answer": "埃及"},
    {"question": "圣诞老人出门的行头非常多，最为引人注目的是帮他拉雪橇的动物，它是？","options": "梅花鹿,驯鹿,长颈鹿,麋鹿", "answer": "B"},
    {"question": "装饰圣诞树时，最常在圣诞树的最顶端放 ","options": "一个玩偶或一颗星星,一份礼物,一个圣诞老人<br />,一粒松果",  "answer": "A"},
    {"question": "在传统的圣诞餐桌上，__是不可缺少的菜式", "answer": "A", "options": "烤火鸡,烤羊腿,烤乳猪,烤全羊"},
    {"question": "在好侍12月圣诞专辑的宣传画面有出现圣诞老人吗？", "answer": "A", "options": "没有,有"},
    {"question": "看来你对圣诞节相关的知识很是了解，这么多题都难不倒你，已经接近成功，最后一题，圣诞老人我们一直叫他圣诞老人，那他原来的名字是什么？", "answer": "尼古拉"}
];
var QAs = function (round) {
  this.qas = [];
  this.current_index = 0;
  this.correct_num = 0;

  for (var i = 0, l = round.length; i < l; i ++) {
    qa = new QA(round[i]);
    qa.qas = this;
    this.qas.push(qa);
  };
};

QAs.prototype.next = function(){
  this.current_index += 1;
  return this.qas[this.current_index];
};


QAs.prototype.has_next = function(){
  return !(this.qas[this.current_index + 1] == undefined);
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
  this.qas      = null;

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
    console.log(this.options[0]);
    console.log(this.options[0] && this.options[0].match(/http|png|jpg/));
    if(this.options[0] && this.options[0].match(/http|png|jpg/)){
      this.type = "images";
    }
  }
};

QA.prototype.answer_match = function (answer) {
  switch (this.type) {
    case 'radio':
      return answer == this.answer;
    case 'choice':
      return answer == this.answer;
    case 'images':
      return answer == this.answer;
    case 'text':
      return answer.toLowerCase() == this.answer.toLowerCase();
    default:
  }
}


QA.prototype.render = function () {
  $("#question").html(this.qas.current_index + 1 + ". " + this.question);
  var answer = [];

  switch (this.type) {
    case 'radio':
      for (var i = 0, l = this.options.length; i < l; i ++) {
      cchar = String.fromCharCode(65 + i);
      answer.push("<div class='item'> <input type='radio' name='result[]' class='result' value='" + cchar +"'></input>" + cchar +". " +this.options[i] + "</div>");
    }
    break;
    case 'choice':
      for (var i = 0, l = this.options.length; i < l; i ++) {
      cchar = String.fromCharCode(65 + i);
      answer.push("<div class='item'> <input type='checkbox' name='result[]' class='result' value='" + cchar + "'></input> " + cchar + ". " + this.options[i] + "</div>");
    }
    break;

    case 'images':
      for (var i = 0, l = this.options.length; i < l; i ++) {
      cchar = String.fromCharCode(65 + i);
      answer.push(" <input type='radio' name='result[]' class='result' value='" +
                  cchar + "'/> "+ cchar + ". " +  "<img src=' " + this.options[i] + " ' /> " +  "</div>");
    }
    break;

    case 'text':
      answer.push("<div class='item'> <input type='textarea' name='result[]' class='input_text result'></input></item>");
    default:
  }
    $("#answer").html(answer.join(""));
}



