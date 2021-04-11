<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../includes/header.jsp"%>

<div class="modifyModal modal" tabindex="-1">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Modal title</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<p>${manager.enabled == false ? "등록" :" 삭제" }하시겠습니까?</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="delCancel btn btn-secondary" data-bs-dismiss="modal">취소</button>
				<button type="button" class="delAgree btn btn-primary">수정</button>
			</div>
		</div>
	</div>
</div>


<div class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="cardHeaderStyle card-header card-header-primary">
						<div>
							<h4 class="card-title ">Simple Table</h4>
							<p class="card-category">Here is a subtitle for this table</p>
						</div>
					</div>

					<div class="card-body">
						<div class="row">
							<c:forEach items="${menu }" var="menu">

								<div class="col-lg-3 col-md-6 col-sm-6">
									<div class="card card-stats">
										<div class="card-header card-header-warning card-header-icon">
											<div class="card-icon">
												<i class="material-icons">content_copy</i>
											</div>
											<h3 class="card-title">${menu.menuName }</h3>
											<p class="card-category">${menu.content }</p>
											<p class="card-category">${menu.MPrice }</p>
											<p class="card-category">${menu.MImg }</p>
											
										</div>
										<div class="card-footer">
											<div class="stats">
												<button data-mno="${menu.mno }" type="submit" class="modBtn btn btn-primary pull-right" style ="padding: 5px;">수정</button>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>


						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

<form action="/admin/store/menuModify" method="get" class="actionForm">
	 
</form>


	<script type="text/javascript" src="../resources/service.js"></script>

	<script>
	
	const actionForm = document.querySelector(".actionForm")	
// MenuModify
	
		document.querySelectorAll(".modBtn").forEach(event => {
			event.addEventListener("click" , function(e){
				e.preventDefault()
		const mno = e.currentTarget.getAttribute("data-mno")
			
		actionForm.innerHTML += "<input type='hidden' value='"+mno+"'>"
		actionForm.setAttribute("action" , "/admin/store/menuModify?mno="+mno)
		//$(".modifyModal").modal("show")
		actionForm.submit()
		
			
			} , false)
		})
	
	
	</script>


	<%@ include file="../includes/footer.jsp"%>