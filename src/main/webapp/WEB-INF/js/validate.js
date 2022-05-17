// login
const validateLogin = () =>{
    let isValid = true;
    let username = $('#username').val();
    let password = $('#password').val();
    if(username.length < 6)
    {
        $("#username").addClass('border border-danger');
        $("#errUsername").removeAttr('hidden');
        isValid = false;
    }else{
        $("#username").removeClass('border border-danger');
        $("#errUsername").attr('hidden', '');
    }
    if(password.length < 6)
    {
        $("#password").addClass('border border-danger');
        $("#errPassword").removeAttr('hidden');
        isValid = false;
    }else{
        $("#password").removeClass('border border-danger');
        $("#errPassword").attr('hidden', '');
    }
    return isValid;
}

const login = () =>{
    if(validateLogin())
        $('#login').submit();
}

//dang ky
const validateDangky = () =>{
    let isValid = true;
    let username = $('#username').val();
    let password = $('#password').val();
    let SdtRegex = /^(0)(\d{9,10})$/;
    let EmailRegex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    
    if($('#hoten').val()=='')
    {
        $("#hoten").addClass('border border-danger');
        $("#errHoten").removeAttr('hidden');
        isValid = false;
    }else{
        $("#hoten").removeClass('border border-danger');
        $("#errHoten").attr('hidden', '');
    }
    if(username.length < 6)
    {
        $("#username").addClass('border border-danger');
        $("#errUsername").removeAttr('hidden');
        isValid = false;
    }else{
        $("#username").removeClass('border border-danger');
        $("#errUsername").attr('hidden', '');
    }
    if(SdtRegex.test($('#sdt').val()) == false)
    {
        $("#sdt").addClass('border border-danger');
        $("#errSdt").removeAttr('hidden');
        isValid = false;
    }else{
        $("#sdt").removeClass('border border-danger');
        $("#errSdt").attr('hidden', '');
    }
    if(EmailRegex.test($('#email').val()) == false)
    {
        $("#email").addClass('border border-danger');
        $("#errEmail").removeAttr('hidden');
        isValid = false;
    }else{
        $("#email").removeClass('border border-danger');
        $("#errEmail").attr('hidden', '');
    }
    if(password.length < 6)
    {
        $("#password").addClass('border border-danger');
        $("#errPassword").removeAttr('hidden');
        isValid = false;
    }else{
        $("#password").removeClass('border border-danger');
        $("#errPassword").attr('hidden', '');
    }
    if($('#re-password').val() != password)
    {
        $("#re-password").addClass('border border-danger');
        $("#errRe-password").removeAttr('hidden');
        isValid = false;
    }else{
        $("#passwore-passwordrd").removeClass('border border-danger');
        $("#errRe-password").attr('hidden', '');
    }
    return isValid;
}

const dangky = () =>{
    if(validateDangky())
        $('#dangky').submit();
}

//validate đăng tin
const validateDangTin = () => {
	 let isValid = true;
	 let SdtRegex = /^(0)(\d{9,10})$/;
	 if($("#TieuDe").val().length <= 10)
    {
    	$("#TieuDe").focus();
        $("#TieuDe").addClass('border border-danger');
        $("#errTieuDe").removeAttr('hidden');
        isValid = false;
    }else{
        $("#TieuDe").removeClass('border border-danger');
        $("#errTieuDe").attr('hidden', '');
    }
	 if($("#ChuyenMuc").val() == '')
    {
    	$("#ChuyenMuc").focus();
        $("#ChuyenMuc").addClass('border border-danger');
        $("#errChuyenMuc").removeAttr('hidden');
        isValid = false;
    }else{
        $("#ChuyenMuc").removeClass('border border-danger');
        $("#errChuyenMuc").attr('hidden', '');
    }
	 if($("#DienTich").val() <= 0)
    {
    	$("#DienTich").focus();
        $("#DienTich").addClass('border border-danger');
        $("#errDienTich").removeAttr('hidden');
        isValid = false;
    }else{
        $("#DienTich").removeClass('border border-danger');
        $("#errDienTich").attr('hidden', '');
    }
	 if($("#GiaThue").val() <= 0)
    {
    	$("#GiaThue").focus();
        $("#GiaThue").addClass('border border-danger');
        $("#errGiaThue").removeAttr('hidden');
        isValid = false;
    }else{
        $("#GiaThue").removeClass('border border-danger');
        $("#errGiaThue").attr('hidden', '');
    }
	 if($("#ChuKyTT").val() == '')
    {
    	$("#ChuKyTT").focus();
        $("#ChuKyTT").addClass('border border-danger');
        $("#errChuKyTT").removeAttr('hidden');
        isValid = false;
    }else{
        $("#ChuKyTT").removeClass('border border-danger');
        $("#errChuKyTT").attr('hidden', '');
    }
	 if($("#Tinh").val() == '')
    {
    	$("#Tinh").focus();
        $("#Tinh").addClass('border border-danger');
        $("#errTinh").removeAttr('hidden');
        isValid = false;
    }else{
        $("#Tinh").removeClass('border border-danger');
        $("#errTinh").attr('hidden', '');
    }
	 if($("#Huyen").val() == '')
    {
    	$("#Huyen").focus();
        $("#Huyen").addClass('border border-danger');
        $("#errHuyen").removeAttr('hidden');
        isValid = false;
    }else{
        $("#Huyen").removeClass('border border-danger');
        $("#errHuyen").attr('hidden', '');
    }
	 if($("#Xa").val() == '')
    {
    	$("#Xa").focus();
        $("#Xa").addClass('border border-danger');
        $("#errXa").removeAttr('hidden');
        isValid = false;
    }else{
        $("#Xa").removeClass('border border-danger');
        $("#errXa").attr('hidden', '');
    }
	 if($("#DiaChi").val() == '')
    {
    	$("#DiaChi").focus();
        $("#DiaChi").addClass('border border-danger');
        $("#errDiaChi").removeAttr('hidden');
        isValid = false;
    }else{
        $("#DiaChi").removeClass('border border-danger');
        $("#errDiaChi").attr('hidden', '');
    }
	 if($("#MoTa").val() == '')
    {
    	$("#MoTa").focus();
        $("#MoTa").addClass('border border-danger');
        $("#errMoTa").removeAttr('hidden');
        isValid = false;
    }else{
        $("#MoTa").removeClass('border border-danger');
        $("#errMoTa").attr('hidden', '');
    }
	 if($("#TenLienHe").val() == '')
    {
    	$("#TenLienHe").focus();
        $("#TenLienHe").addClass('border border-danger');
        $("#errTenLienHe").removeAttr('hidden');
        isValid = false;
    }else{
        $("#TenLienHe").removeClass('border border-danger');
        $("#errTenLienHe").attr('hidden', '');
    }
	 if(SdtRegex.test($("#SDTLienHe").val()) == false)
    {
    	$("#SDTLienHe").focus();
        $("#SDTLienHe").addClass('border border-danger');
        $("#errSDTLienHe").removeAttr('hidden');
        isValid = false;
    }else{
        $("#SDTLienHe").removeClass('border border-danger');
        $("#errSDTLienHe").attr('hidden', '');
    }
    if($("#Lat").val() == '')
    {
        $("#errViTri").removeAttr('hidden');
        isValid = false;
    }else{
        $("#errViTri").attr('hidden', '');
    }
  	return isValid;
}

const dangtin = () => {

	if(validateDangTin())
	{
        $('#dangtin').submit();
     }   
}

const capnhat = () => {

	if(validateDangTin())
	{
        $('#capnhat').submit();
     }   
}