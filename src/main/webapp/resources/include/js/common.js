var date = getDateFormat(new Date());
function getDateFormat(dateValue){
	var year = dateValue.getFullYear();
	var month = dateValue.getMonth()+1;
	month = (month<10) ? "0"+month : month;
	var day = dateValue.getDate();
	day = (day<10)? "0"+day : day;
	var result = year+"-"+month+"-"+day;
	return result;
}
	
	

function checkForm(item, msg){
	var message = "";
	console.log(item.val());
	
	if(item.val().replace(/\s/g,"")==""){
		message = msg+" 입력해 주세요";
		item.attr("placeholder", message);
		item.focus();
		return false;
	}else{
		return true;
	}
}

/* (?=pattern) or 연산으로 정의된 패턴과 일치하는 문자열 */
var pattern = [
	"((?=.*[a-zA-Z])(?=.*[0-9]).{8,10})",
	"((?=.*[a-zA-Z])(?=.*[0-9@#$%]).{8,12})",
	"^\\d{3}-\\d{3,4}-\\d{4}$" //핸드폰 번호 유효성 체크(-포함)
	/*"\d{3}-\d{3,4}-\d{4}"*/
	/*"^[가-힣]*$"*/
];

function inputVerify(index, data, printarea){
	var data_regExp = new RegExp(pattern[index]);
	var match = data_regExp.exec($(data).val());
	if(match==null){
		$(printarea).html("입력값이 형식에 맞지 않습니다.");
		$(data).val("");
		return false;
	}else {
		return true;
	}
}








