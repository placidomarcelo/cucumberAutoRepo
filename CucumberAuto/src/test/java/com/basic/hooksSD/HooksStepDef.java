package com.basic.hooksSD;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.en.And;
import cucumber.api.java.en.But;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class HooksStepDef {

	
	WebDriver driver = null;
	
	@Before(order=1)
	public void beforesetup() {
		System.out.println("in Before1");
		System.setProperty("webdriver.chrome.driver", "C:\\Users\\Marcelo\\Drivers\\chromedriver.exe");
		driver = new ChromeDriver();
	}
	
	@Before(order=2)
	public void beforesetup1() {
		System.out.println("in Before2");
		
	}
	
	@Given("^User need to be on Facebook login page$")
	public void user_need_to_be_on_Facebook_login_page() {
			driver.get("https://wwww.facebook.com/");
	
	}

	@When("^User enters user \"([^\"]*)\" first name$")
	public void user_enters_user_first_name(String userName) throws InterruptedException {
		driver.findElement(By.xpath("//*[@id=\"u_0_m\"]")).sendKeys(userName);
		Thread.sleep(1000);

	}

	@Then("^User checks user \"([^\"]*)\" first name is present$")
	public void user_checks_user_first_name_is_present(String userName) throws InterruptedException {
		String userNameActual = driver.findElement(By.xpath("//*[@id=\"u_0_m\"]")).getAttribute("value");
		Assert.assertEquals(userName, userNameActual);
		Thread.sleep(1000);

	}
	@And("^User enters user \"([^\"]*)\"  surname$")
	public void user_enters_user_surname(String surName) throws InterruptedException {
		driver.findElement(By.xpath("//*[@id=\"u_0_o\"]")).sendKeys(surName);
		Thread.sleep(1000);
	}
	@Then("^User Mobile field should be blank")
		public void user_Mobile_field_should_be_blank() throws InterruptedException {
			String mobileActual = driver.findElement(By.xpath("//*[@id=\"u_0_t\"]")).getAttribute("value");
			Assert.assertEquals("", mobileActual);
			Thread.sleep(1000);
	}
	
//	@Then("close browser")
//	public void close_browser() {
//		driver.quit();
//		driver = null;
//	
//	}
		
	@After(order=2)
	public void tearDown1() {
		System.out.println("in After1");
		driver.quit();
		driver = null;
	}
	
	@After(order=1)
	public void tearDown2() {
		System.out.println("in After2");
	
	}
			}
	

		



