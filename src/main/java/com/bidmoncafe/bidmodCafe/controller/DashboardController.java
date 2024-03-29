package com.bidmoncafe.bidmodCafe.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.bidmoncafe.bidmodCafe.middleware.AuthMiddleware;
import com.bidmoncafe.bidmodCafe.model.OrderDetail;
import com.bidmoncafe.bidmodCafe.repository.BillRepository;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class DashboardController {
    
    @Autowired
    private BillRepository dashboardRepo;
    
    @GetMapping("/dashboard")
    public String fetchData(Model model, HttpServletRequest request) {
    	String path = AuthMiddleware.isAuth(request, "dashboard");
        List<OrderDetail> dashboard = dashboardRepo.fetchData();
        
        int totalQuantity = 0;
        double totalPrice = 0;
        for (OrderDetail orderDetail : dashboard) {
            totalQuantity += orderDetail.getQuantity();
            totalPrice += orderDetail.getPrice();
        }
        
        Map<String, Double> menuSalesPercentage = new HashMap<>();
        for (OrderDetail orderDetail : dashboard) {
            String menuName = orderDetail.getProduct().getProductTitle();
            double menuTotalSales = menuSalesPercentage.getOrDefault(menuName, 0.0);
            menuTotalSales += (orderDetail.getPrice() / totalPrice) * 100;
            menuSalesPercentage.put(menuName, menuTotalSales);
        }
        
        model.addAttribute("dashboard", dashboard);
        model.addAttribute("totalQuantity", totalQuantity);
        model.addAttribute("totalPrice", totalPrice);
        model.addAttribute("menuSalesPercentage", menuSalesPercentage);
        
        return path;
    }
}
