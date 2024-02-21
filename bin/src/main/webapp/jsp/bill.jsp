<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bill</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style>
</head>

<body>
	<a href="/orderdetail">OrderDetail</a>
	<div class="page-content container">
		<div class="container px-0">
			<div class="row mt-4">
				<div class="col-12 col-lg-12">

					<div class="row">
						<div class="col-12">
							<div class="text-center text-150">
								<svg xmlns="http://www.w3.org/2000/svg" width="100" height="100"
									fill="#0E9F60" class="bi bi-check-circle-fill mb-3 "
									viewBox="0 0 16 16">
  <path
										d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0m-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z" />
</svg>
								<h1 class="text-default-d3 my-3">Bidmod-Cafe</h1>
							</div>
						</div>
					</div>
					<hr />
					<div class="row">
						<div class="col-sm-6">
							<div>
								<span class="text-sm align-middle fw-bold">Invoice:</span>
							</div>

							<div class="fw-bold">
								<div class="my-1">ชื่อพนักงาน:</div>
								<div class="my-1">ช่องทางการชำระเงิน:</div>
								<div class="my-1">เวลาที่เข้า:</div>
							</div>
						</div>
						<div class="col-sm-6 text-end">
							<div>
								<span class="text-sm align-middle fw-bold">${bills.orderType}-
									${bills.orderId}</span>
							</div>
							<div class="fw-bold">
								<div class="my-1">ชื่อพนักงาน:</div>
								<div class="my-1">${bills.method }</div>
								<div class="my-1">
									<fmt:formatDate value="${bills.date}"
										pattern="dd-MM-yyyy HH:mm" />
								</div>
							</div>
						</div>
					</div>

					<div class="mt-4">
						<div class="row text-600 text-white bgc-default-tp1 py-25">
							<div class="d-none d-sm-block col-1">#</div>
							<div class="col-10 col-sm-5">สินค้า</div>
							<div class="d-none d-sm-block col-5 col-sm-4">Qty</div>
							<div class="col-2">ราคารวม</div>
						</div>
						<c:forEach items="${bills.orderDetails}" var="bill"
							varStatus="loop">
							<div class="text-95 text-secondary-d3">
								<div class="row mb-2 mb-sm-0 py-25">
									<div class="d-none d-sm-block col-1">${loop.index + 1}</div>
									<div class="col-10 col-sm-5">${bill.product.productTitle}</div>
									<div class="d-none d-sm-block col-4">${bill.quantity}</div>
									<div class="col-2 text-secondary-d2">${bill.price}</div>
								</div>
							</div>
						</c:forEach>
						<hr />
						<div class="row mt-3">
							<div class="col-12 col-sm-7 text-95 mt-2 mt-lg-0">
								จำนวนสินค้าทั้งหมด :
								<c:set var="totalQuantity" value="0" />
								<c:forEach items="${bills.orderDetails}" var="bill">
									<c:set var="totalQuantity"
										value="${totalQuantity + bill.quantity}" />
								</c:forEach>
								<span class="fw-bold">${totalQuantity}</span>
							</div>
							<div
								class="col-12 col-sm-5 text-90 order-first order-sm-last text-end">
								<div class="row my-2">
									<div class="col-7 text-right h4 fw-bold">ยอดเงินสุทธิ</div>
									<div class="col-5">
										<span class="h4 fw-bold">${bills.total}</span>
									</div>
								</div>
								<div class="row my-2">
									<div class="col-7 text-right">รับเงิน</div>
									<div class="col-5">
										<span class="text-120 text-secondary-d1">${bills.moneyChange + bills.total}</span>
									</div>
								</div>
								<div class="row my-2">
									<div class="col-7 text-right">เงินทอน</div>
									<div class="col-5">
										<span class="text-120 text-secondary-d1">${bills.moneyChange}</span>
									</div>
								</div>
							</div>
						</div>
						<hr />
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>