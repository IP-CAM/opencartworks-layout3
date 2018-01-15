
import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

import org.junit.runner.RunWith;



@RunWith(Cucumber.class)
@CucumberOptions(features = ".",
                 plugin = {"html:output"}
                 )


public class runner{


}
