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
		ajaxObj["error"] = function(request,status,error){
			reject(error);
		}
		$.ajax(ajaxObj)
	})
}

export { callAjax }