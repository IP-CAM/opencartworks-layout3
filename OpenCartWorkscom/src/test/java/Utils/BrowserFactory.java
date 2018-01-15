package Utils;

import cucumber.api.java.After;
import cucumber.api.java.Before;
import org.openqa.selenium.WebDriver;

public class BrowserFactory {
    public static WebDriver driver;

    @Before
    public void openBrowser()  {
        Log.info("opening chromeBrowser");
        driver = DriverUtils.getDriver();
        driver.manage().deleteAllCookies();
    }

    @After
    public void closeBrowser(){
      driver.quit();
    }
}
