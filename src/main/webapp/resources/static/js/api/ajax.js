function callAjax(method="POST", url="/", formObj){
	const ajaxObj = {
		url: `http://localhost:9090${url}`,
		type: method
	}
	
	if(formObj){
		ajaxObj["contentType"] = "application/json",
		ajaxObj["data"] = JSON.stringify(formObj)
	}
	
	return new Promise((resolve, reject)=>{ 
		ajaxObj["success"] =  function(result){
			resolve(result)
		}
		ajaxObj["error"] = function(jqxHr,textError,errorThrown){
			if(jqxHr.status===404){
				reject({message:"API Not Found"});
			}
			else{
				reject(errorThrown);
			}
		}
		$.ajax(ajaxObj)
	})
}

const makeRequestUrl = (url, pathVariable, params) => {
	let customUrl = url;
	customUrl += addPathVariable(pathVariable);
	customUrl += addParams(params);
	console.log(customUrl);
	return customUrl;
}

const addPathVariable = (pathVariable) => {
	let pathUrl = '';
	if(!pathVariable){
		return pathUrl;
	}
	if(Array.isArray(pathVariable)){
		for(let i=0; i<pathVariable.length; i++){
			pathUrl += `/${pathVariable[i]}`;
		}		
	}
	else{
		pathUrl += `/${pathVariable}`;
	}
	return pathUrl;
};

const addParams = (params) => {
	let paramsUrl = ''
	if(typeof params !== "object"){
		return paramsUrl;
	}
	paramsUrl += '?'
	for(let [key, value] of Object.entries(params)){
		paramsUrl += `&${key}=${value}`;
	}
	return paramsUrl;
}

export { callAjax, makeRequestUrl}