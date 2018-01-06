package Utils;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;


import java.util.concurrent.TimeUnit;

public class BrowserFactory {

        public static WebDriver driver;

        @BeforeClass
        public static void openBrowser()
        {
            if (AutomationConstants.Browser.equalsIgnoreCase("chrome"))
            {
                System.out.println("Starting Chrome Browser");
                System.setProperty("webdriver.chrome.driver","chromedriver.exe");
                driver = new ChromeDriver();
               // System.out.println("Afterdriverget");
                driver.manage().timeouts().implicitlyWait(40, TimeUnit.SECONDS);
                driver.manage().deleteAllCookies();
            }
            else if (AutomationConstants.Browser.equalsIgnoreCase("Firefox"))
            {
                System.setProperty("webdriver.gecko.driver","geckodriver.exe");
                driver = new FirefoxDriver();
            }
            else
            {
                System.out.println("sorry");
            }

            driver.get(AutomationConstants.URL);
        }


        @AfterClass
        public static void closeBrowser()
        {
            driver.quit();
        }



    }


