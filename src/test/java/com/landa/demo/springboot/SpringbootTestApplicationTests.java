package com.landa.demo.springboot;

import org.junit.*;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.text.SimpleDateFormat;
import java.util.Date;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SpringbootTestApplicationTests {
	@BeforeClass
	public static void beforeClassTest() {
		System.out.println("before class test");
	}
	@Before
	public void beforeTest() {
		System.out.println("before test");
	}
	@Test
	public void contextLoads() {
	}
	@Test
	public void Test1() {
		System.out.println("test 1+1=2");
		Assert.assertEquals(2, 1 + 1);
	}

	@Test
	public void Test2() {
		System.out.println("test 2+2=4");
		Assert.assertEquals(4, 2 + 2);
	}
	@After
	public void afterTest() {
		System.out.println("after test");
	}

	@AfterClass
	public static void afterClassTest() {
		System.out.println("after class test");
	}
}
