function convertFormDataToObj(form){
	return form.reduce((acc,cur)=>{
		acc[cur.name] = cur.value
		return acc;
	},{})
}

export { convertFormDataToObj }