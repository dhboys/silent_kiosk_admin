<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../includes/header.jsp"%>


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
						<c:forEach items="${topping }" var ="topping">
						
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats">
                <div class="card-header card-header-warning card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">content_copy</i>
                  </div>
                  <h3 class="card-title">${topping.tname }  </h3>
                  <p class="card-category">${topping.tprice }</p>
                   <p class="card-category">${topping.timg }</p>
                </div>
                <div class="card-footer">
                  <div class="stats">
						<button data-tno="${topping.tno }" type="submit" class="modBtn btn btn-primary pull-right" style ="padding: 5px;">수정</button>
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

<form action="/admin/store/toppingModify" method="get" class="actionForm">
	 
</form>


<script type="text/javascript" src="../resources/service.js"></script>

<script>
const actionForm = document.querySelector(".actionForm")
//toppingModify

document.querySelectorAll(".modBtn").forEach(event => {
	event.addEventListener("click" , function(e){
		e.preventDefault()
const tno = e.currentTarget.getAttribute("data-tno")
	
actionForm.innerHTML += "<input type='hidden' name='tno' value='"+tno+"'>"
actionForm.setAttribute("action" , "/admin/store/toppingModify?tno="+tno)
//$(".modifyModal").modal("show")
actionForm.submit()

	
	} , false)
})
</script>


<%@ include file="../includes/footer.jsp"%>