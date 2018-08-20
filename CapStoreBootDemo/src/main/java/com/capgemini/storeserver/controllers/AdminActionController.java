package com.capgemini.storeserver.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.capgemini.storeserver.beans.Category;
import com.capgemini.storeserver.beans.Coupon;
import com.capgemini.storeserver.beans.Customer;
import com.capgemini.storeserver.beans.Discount;
import com.capgemini.storeserver.beans.Merchant;
import com.capgemini.storeserver.beans.Product;
import com.capgemini.storeserver.services.AdminServices;

@Controller	
public class AdminActionController {

	@Autowired
	private AdminServices adminService;

	
	@ModelAttribute("merchant")
	public Merchant getMerchant() {
		return new Merchant();

	}

	@ModelAttribute("category")
	public Category getCategory() {
		return new Category();

	}

	@ModelAttribute("customerList")
	public List<Merchant> getMerchantList() {
		return new ArrayList<Merchant>();

	}
	@ModelAttribute("merchantList")
	public List<Customer> getCustomerList() {
		return new ArrayList<Customer>();

	}
	
	@ModelAttribute("coupon")
	public Coupon getCoupon() {
		return new Coupon();

	}
	
	@ModelAttribute("discount")
	public Discount getDiscount() {
		return new Discount();

	}
	
	@ModelAttribute("message")
	public String getMessage() {
		return new String();

	}

	@ModelAttribute("productList")
	public List<Product> getProductList() {
		return new ArrayList<Product>();

	}
	@RequestMapping(value="/")
	public String getAdminLogin() {
		return "adminLogin";
		
	}
	
	@RequestMapping(value="/adminHome")
	public String getAdminHome() {
		return "adminHomePage";
		
	}
	//Working
	@RequestMapping(value="/addMerchant")
	public ModelAndView addMerchant(@ModelAttribute("merchant") Merchant merchant, BindingResult result) {
		try {
			merchant = adminService.addMerchant(merchant);
		}catch (Exception e) {
			return new ModelAndView("");
		}
		return new ModelAndView("", "merchant", merchant);
	}

	@RequestMapping(value="/removeMerchant")
	public ModelAndView removeMerchant(@RequestParam("merchantId") int merchantId) {
		try {
		adminService.removeMerchant(merchantId);
		}catch (Exception e) {
			return new ModelAndView("");
		}
		return new ModelAndView("removeMerchant", "message", "Successfully removed.");
	}

	@RequestMapping(value = "/getAllProduct")
	public ModelAndView getAllProduct() {
		List<Product> product;
		try {
			product = adminService.viewAllProducts();
		}catch (Exception e) {
			return new ModelAndView("");
		}
		return new ModelAndView("","productList", product);
	}

	@RequestMapping(value = "/updateCategory")
	public ModelAndView updateCategory(@RequestParam("categoryId") int categoryId,
			@RequestParam("categoryName") String categoryName, @RequestParam("type") String type) {
		Category category;
		try {
			category = adminService.updateCategory(categoryId, categoryName, type);
		}catch (Exception e) {
			return new ModelAndView("");
		}
		return new ModelAndView("","category", category);
	}

	@RequestMapping(value="/addCoupon")
	public ModelAndView addCoupon(@Valid @ModelAttribute("coupon") Coupon coupon) {
		System.out.println("hello");
		try {
			coupon = adminService.addCoupon(coupon);
			System.out.println(coupon);
		}catch (Exception e) {
			return new ModelAndView("");
		}
		return new ModelAndView("addCoupon");
	}

	@RequestMapping(value="/removeCoupon")
	public ModelAndView removeCoupon(int couponId) {
		try {
			adminService.removeCoupon(couponId);
		}catch (Exception e) {
			return new ModelAndView("");
		}
		return new ModelAndView("","message", "Successfully removed.");
	}

	@RequestMapping(value="/getAllCustomer")
	public ModelAndView getAllCustomer()
	{
		List<Customer> customerList;
		try {
		customerList = adminService.viewAllCustomer();
		}catch (Exception e) {
			return new ModelAndView("");
		}
		
		return new ModelAndView("","customerList", customerList);
	}
	
	@RequestMapping(value="/addDiscount")
	public ModelAndView addDiscount(@ModelAttribute("discount") Discount discount) {
        try {
		discount = adminService.addDiscount(discount);
        }catch (Exception e) {
        	return new ModelAndView("");
		}
        return new ModelAndView("","discount", discount); 
	}

	@RequestMapping( value="/removeDiscount")
	public ModelAndView removeDiscount(@RequestParam("discountId")int discountId)  {
		try {
		adminService.removeDiscount(discountId);
		}catch (Exception e) {
			return new ModelAndView("");
		}
		return new ModelAndView("","message", "Successfully Removed.");  
	}
	
	@RequestMapping(value="/getAllMerchants")
	public ModelAndView getAllMerchants()
	{
		List<Merchant> merchantList;
		try {
			merchantList = adminService.viewAllMerchant();
		}catch (Exception e) {
			return new ModelAndView("");
		}
		
		return new ModelAndView("","merchantList", merchantList);
	}
}
