
function checkFormBlank(form){
	try{
		if(typeof form !== "object"){
			throw new Error('폼 형식이 객체 타입이 아닙니다.');
		}

		for(let key in form){
			if(!form[key]){
				const korName = $(`[name=${key}]`).data("kor");
				throw new Error(`${korName}을(를) 입력해주세요.`);
			}
		}
	
		return { result: true, message: ''};	
	}
	catch(e){
		return { result: false, message: e.message }
	}

}

export {checkFormBlank}