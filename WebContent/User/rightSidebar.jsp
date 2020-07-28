<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<body>
	<div>
		<h2>Complaints Nearby</h2>
		<div class="col-md-2 static">
			<div class="suggestions" id="sticky-sidebar">
				<div class="follow-user">
					<c:forEach items="${sessionScope.map}" var="i">
						<div>
							<h3>
								<a>${i.key}</a>
							</h3>
							<c:forEach items="${i.value}" var="j">
								<h4>
									<a
										href="<%=request.getContextPath()%>/AreaController?flag=searchareabycity&id=${j.id}"
										class="text-green">${j.areaName}</a>
								</h4>
							</c:forEach>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>

	</div>
	</div>
	</div>





</body>
</html>