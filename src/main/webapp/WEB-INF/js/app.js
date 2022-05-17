var citis = document.getElementById("Tinh");
var districts = document.getElementById("Huyen");
var wards = document.getElementById("Xa");
var Parameter = {
  url: "https://provinces.open-api.vn/api/?depth=3", //Đường dẫn đến file chứa dữ liệu hoặc api do backend cung cấp
  method: "GET", //do backend cung cấp
  responseType: "application/json", //kiểu Dữ liệu trả về do backend cung cấp
};
//gọi ajax = axios => nó trả về cho chúng ta là một promise
var promise = axios(Parameter);
//Xử lý khi request thành công
promise.then(function (result) {
  renderCity(result.data);
});

function renderCity(data) {
  for (const x of data) {
    citis.options[citis.options.length] = new Option(x.name, x.name);
  }

  // xứ lý khi thay đổi tỉnh thành thì sẽ hiển thị ra quận huyện thuộc tỉnh thành đó
  citis.onchange = function () {
    districts.length = 1;
    wards.length = 1;
    if(this.value != ""){
      const result = data.filter(n => n.name === this.value);

      for (const k of result[0].districts) {
        districts.options[districts.options.length] = new Option(k.name, k.name);
      }
    }
  };

   // xứ lý khi thay đổi quận huyện thì sẽ hiển thị ra phường xã thuộc quận huyện đó
  districts.onchange = function () {
    wards.length = 1;
    const dataCity = data.filter((n) => n.name === citis.value);
    if (this.value != "") {
      const dataWards = dataCity[0].districts.filter(n => n.name === this.value)[0].wards;

      for (const w of dataWards) {
        wards.options[wards.options.length] = new Option(w.name, w.name);
      }
    }
  };
}