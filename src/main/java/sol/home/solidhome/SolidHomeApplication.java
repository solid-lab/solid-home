package sol.home.solidhome;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class SolidHomeApplication extends SpringBootServletInitializer  {

    public static void main(String[] args) {
        SpringApplication.run(SolidHomeApplication.class, args);
    }

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(SolidHomeApplication.class);
    }
}
