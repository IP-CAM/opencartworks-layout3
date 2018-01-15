    package Utils;

import cucumber.api.java.After;
import cucumber.api.java.Before;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.support.events.EventFiringWebDriver;

import java.util.concurrent.TimeUnit;


    public class DriverUtils {

    public static EventFiringWebDriver webDriver;
    public static WebDriver driver;
    private static String OS = System.getProperty("os.name").toLowerCase();
    private static String userPath = System.getProperty("user.dir");



    public static void setDriver() {
        if (driver == null)
        {
            if (AutomationConstants.Browser.equalsIgnoreCase("chrome")) {
                Log.info("Starting the Browser");

                {

                    setDriverPathForBrowser("chrome");
                        if(isLinux())
                        {
                        ChromeOptions options = new ChromeOptions();
                        options.setBinary(userPath + "C:\\Users\\User\\Desktop\\OpenCartWorkscom\\drivers\\linux");
                        driver = new EventFiringWebDriver(new ChromeDriver(options));
                            driver.manage().timeouts().implicitlyWait(40, TimeUnit.SECONDS);

                        }
                        else
                        {
                        driver = new EventFiringWebDriver(new ChromeDriver());
                        }
                }

            } else if (AutomationConstants.Browser.equalsIgnoreCase("Firefox")) {

                setDriverPathForBrowser("Firefox");
                driver = new EventFiringWebDriver(new FirefoxDriver());
                driver.manage().timeouts().implicitlyWait(40, TimeUnit.SECONDS);
                driver.manage().deleteAllCookies();

        } else if (AutomationConstants.Browser.equalsIgnoreCase("IE")) {

                System.setProperty("webdriver.ie.driver", "IEDriverServer.exe");
                driver = new EventFiringWebDriver(new InternetExplorerDriver());
                driver.manage().timeouts().implicitlyWait(40, TimeUnit.SECONDS);
                driver.manage().deleteAllCookies();

        } else {
            Log.info("No Driver Initialised");
        }
        driver.get(AutomationConstants.URL);
    }
    }


        private static void setDriverPathForBrowser(String browserName) {
            {
                browserName = browserName.toLowerCase();
                switch (browserName){
                case "chrome" :
                {
                    if (isMac())
                    {
                        System.setProperty("webdriver.chrome.driver", userPath + "/src/test/resources/drivers/windows/chromedriver.exe");
                    }
                    else if (isLinux())
                    {
                        System.setProperty("webdriver.chrome.driver", userPath + "/src/test/resources/drivers/linux/chromedriver.exe");
                    }
                    else if (isWindows())
                    {
                        System.setProperty("webdriver.chrome.driver", userPath + "/src/test/resources/drivers/windows/chromedriver.exe");
                    }
                    break;
                }
                    case "Firefox" :
                    {
                        if (isMac())
                        {
                            System.setProperty("webdriver.gecko.driver", userPath + "/src/test/resources/drivers/geckodriver.exe");
                        }
                        else if (isLinux())
                        {
                          Log.info("sorry");
                        }
                        else if (isWindows())
                        {
                            System.setProperty("webdriver.gecko.driver", userPath + "/src/test/resources/drivers/Windows/geckodriver.exe");
                        }
                        break;
                    }
            }
        }
        }


        public static EventFiringWebDriver  getDriver() {

        setDriver();
        return webDriver;
        }


        private static boolean isWindows() {
        return (OS.indexOf("win") >= 0);
    }

    private static boolean isMac() {
        return (OS.indexOf("mac") >= 0);
    }

    private static boolean isLinux() {
        return (OS.indexOf("linux") >= 0);
    }





    }





