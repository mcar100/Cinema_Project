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

export { callAjax }