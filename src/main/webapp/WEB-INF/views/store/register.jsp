<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../includes/header.jsp"%>


<div class="regModal modal" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Modal title</h5>
      </div>
      <div class="modal-body">
        <p>회원 가입이 완료되었습니다.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="regCommit btn btn-primary" >확인</button>
      </div>
    </div>
  </div>
</div>

<div class="content">

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="card card-profile">
					<div class="card-avatar">
						<a href="javascript:;"> <img class="img"
							src="../resources/assets/img/photo.jpg" />
						</a>	
					</div>
					<div class="card-body" style="text-align: left;">
						<div class="row" style="text-align: center;">
								<div class="col-md-12">
									<p>매장명<p> 
								</div>
						</div>
						<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label class="bmd-label-floating">카테고리</label> <input
											type="text" class="form-control" readonly="readonly"
											name='mid' >
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label class="bmd-label-floating">Kiosk Serial Number</label> <input
											type="text" class="form-control" readonly="readonly"
											name='mid' >
									</div>
								</div>
								<div class="col-md-12">
									<div class="addr form-group">
										<label class="bmd-label-floating">Address</label> 
                            			<input type="text" onClick="goPopup();" class="form-control" id="roadFullAddr"  >
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
                            			<input type="hidden" class="lat form-control"  >
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
                            			<input type="hidden" class="lng form-control"   >
									</div>
								</div>
						</div>
					


						<a href="/admin/store/menuList?sno=10" class="regBtn btn btn-primary btn-round">등록</a>
					</div>
				</div>
			</div>		
		</div>
	</div>
</div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a992392fec7fc62c30d19315b7c1a5e1&libraries=services"></script>
<script>
/* manList.sendList(${pageDTO.page} , ${pageDTO.perSheet}).then(res => res.json()).then(result => {
   for (let resultElement of result) {
      
      tableList.innerHTML += "<tr><td><img src= '"+resultElement.logoImg+"'></td>" +
      "<td onclick='sendRead("+JSON.stringify(resultElement.mid)+")'>"+resultElement.mid+"</td>" +
      "<td>"+resultElement.email+"</td>" +
      "<td>"+resultElement.phone+"</td>" +
      "<td>"+resultElement.enabled+"</td>" +
      "<td>"+resultElement.approval+"</td>" +
      "<td>"+resultElement.regdate+"</td>" +
      "<td>"+resultElement.updatedate+"</td></tr>"
   }
   
}) */


// registerPost

/* document.querySelector(".regBtn").addEventListener("click" , function(e) {
	e.preventDefault()
	const obj = {}
	const form = document.querySelector(".regMan")
	const input = document.querySelectorAll(".regMan input")
	
	 for (let i of input.length) {
		obj[form.elements[i].name] = form.elements[i].value
	} 
	
	obj.cdn = document.querySelector("input[name='cdn']").dataset.filename
	obj.health = document.querySelector("input[name='health']").dataset.filename
	obj.hygiene = document.querySelector("input[name='hygiene']").dataset.filename
	obj.license = document.querySelector("input[name='license']").dataset.filename
	
	
	service.sendRegister(obj).then(result => {$(".regModal").modal("show")}) 
	
} , false) */

/* // regCommit
document.querySelector(".regCommit").addEventListener("click" , function(e){
	
	location.href = "/admin/manager/list"
	
} , false) */



// juso
function goPopup(){
   // 주소검색을 수행할 팝업 페이지를 호출합니다.
   // 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrCoordUrl.do)를 호출하게 됩니다.
   var pop = window.open("/admin/store/jusoPopup","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
}


function jusoCallBack(roadFullAddr){
   // 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
      document.querySelector("#roadFullAddr").value = roadFullAddr;
      document.querySelector(".addr").className += 'is-focused'
    // 주소-좌표 변환 객체를 생성합니다
      var geocoder = new kakao.maps.services.Geocoder();

       // 주소로 좌표를 검색합니다
      geocoder.addressSearch(roadFullAddr, function(result, status) {

          // 정상적으로 검색이 완료됐으면 
           if (status === kakao.maps.services.Status.OK) {
            
              document.querySelector(".lat").value =result[0].y;
              document.querySelector(".lng").value =result[0].x;
           }
      }) 

} 


</script>

<%@ include file="../includes/footer.jsp"%>