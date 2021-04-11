<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../includes/header.jsp"%>

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
												<button type="submit" class="modBtn btn btn-primary pull-right" style ="padding: 5px;">수정</button>
											</div>
										</div>
									</div>
								</div> 


	<script type="text/javascript" src="../resources/service.js"></script>

	


	<%@ include file="../includes/footer.jsp"%>