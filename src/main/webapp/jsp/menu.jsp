<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="components/Header.jsp" />
<meta charset="UTF-8">
<title>Menu</title>
</head>
<body class="bg-[#EAF9F4]">
	<jsp:include page="components/NavBar.jsp" />
	<div class="container mx-auto mt-10">
		<div class="bg-white border-1 rounded-md p-6">
			<div class="flex justify-between items-center">
				<h1 class="text-3xl text-[#005F3B] font-bold mb-5">Menu</h1>
				
				<button data-modal-target="crud-modal"
					data-modal-toggle="crud-modal" type="button"
					class="px-5 py-2.5 text-sm font-medium text-white inline-flex items-center bg-[#0E9F68] hover:bg-green-800 focus:ring-4 focus:outline-none focus:ring-blue-300 rounded-lg text-center">
					<svg class="w-6 h-6 text-gray-800 dark:text-white mr-2"
						aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
						viewBox="0 0 24 24">
    <path stroke="currentColor" stroke-linecap="round"
							stroke-linejoin="round" stroke-width="2"
							d="M12 7.8v8.4M7.8 12h8.4m4.8 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
  </svg>
					เพิ่มเมนู
				</button>
				<div id="crud-modal" tabindex="-1" aria-hidden="true"
					class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
					<div class="relative p-4 w-full max-w-md max-h-full">
						<!-- Modal content -->
						<div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
							<!-- Modal header -->
							<div
								class="flex items-center justify-between p-4 md:p-5 border-b rounded-t dark:border-gray-600">
								<h3 class="text-lg font-semibold text-gray-900 dark:text-white">
									เพิ่มเมนู</h3>
								<button type="button"
									class="text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white"
									data-modal-toggle="crud-modal">
									<svg class="w-3 h-3" aria-hidden="true"
										xmlns="http://www.w3.org/2000/svg" fill="none"
										viewBox="0 0 14 14">
                        <path stroke="currentColor"
											stroke-linecap="round" stroke-linejoin="round"
											stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                    </svg>
									<span class="sr-only">Close modal</span>
								</button>
							</div>
							<!-- Modal body -->
							<form class="p-4 md:p-5" action="/menu" method="post">
								<div class="grid gap-4 mb-4 grid-cols-2">
									<div class="col-span-2">
										<label for="name"
											class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">ชื่ออาหาร</label>
										<input type="text" name="name" id="name"
											class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
											placeholder="ชื่ออาหาร" required>
									</div>
									<div class="col-span-2">
										<label for="name"
											class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">ราคา</label>
										<input type="number" name="price" id="price"
											class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
											placeholder="ราคา" required>
									</div>
									<div class="col-span-2">
										<label for="img"
											class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">รูปภาพ</label>
										<input type="text" name="img" id="img"
											class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
											placeholder="รูปภาพ" required>
									</div>
									<div class="col-span-2">
											<div class="flex items-center mb-4">
												<input id="food" type="radio" value="1"
													name="categoryId"
													class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
												<label for="default-radio-1"
													class="ms-2 text-sm font-medium text-gray-900 dark:text-gray-300">อาหาร</label>
											</div>
											<div class="flex items-center">
												<input checked id="water" type="radio" value="2"
													name="categoryId"
													class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
												<label for="default-radio-2"
													class="ms-2 text-sm font-medium text-gray-900 dark:text-gray-300">เครื่องดื่ม</label>
											</div>
									</div>
								</div>
								<button type="submit"
									class="text-white inline-flex items-center bg-[#0E9F68] hover:bg-green-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">
									<svg class="me-1 -ms-1 w-5 h-5" fill="currentColor"
										viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
										<path fill-rule="evenodd"
											d="M10 5a1 1 0 011 1v3h3a1 1 0 110 2h-3v3a1 1 0 11-2 0v-3H6a1 1 0 110-2h3V6a1 1 0 011-1z"
											clip-rule="evenodd"></path></svg>
									ยืนยัน
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="relative overflow-x-auto shadow-md rounded-lg">
				<table
					class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
					<thead class="text-xs text-gray-700 bg-[#0E9F68] text-white">
						<tr>
							<th scope="col" class="px-6 py-3">ID</th>
							<th scope="col" class="px-6 py-3">ชื่ออาหาร</th>
							<th scope="col" class="px-6 py-3">ราคา</th>
							<th scope="col" class="px-6 py-3">รูปภาพ</th>
							<th scope="col" class="px-6 py-3">ประเภท</th>
							<th scope="col" class="px-6 py-3">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${menus}" var="menu" varStatus="loop">
							<tr class="">
								<th scope="row"
									class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">${menu.productId}
								</th>
								<td class="px-6 py-4 text-gray-900">${menu.productTitle}</td>
								<td class="px-6 py-4 text-gray-900">${menu.productPrice}</td>
								<td class="px-6 py-4 text-gray-900 w-52"><img src="${menu.img}" alt="" border=3 height=200 width=200></img></td>
								<td class="px-6 py-4 text-gray-900">${menu.category.categoryTitle}</td>
								
								<td
									class="px-6 py-4 text-blue-700 font-bold hover:text-blue-500">
									<a class="mr-4"
									href="/menu/edit/${menu.productId}" >Edit</a>
									<a class="text-red-700 hover:text-red-500"
									href="/menu/${menu.productId}"
									onclick="return confirm('Are you sure you want to delete this item?')">Delete</a>
									
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.3.0/flowbite.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</body>
</html>