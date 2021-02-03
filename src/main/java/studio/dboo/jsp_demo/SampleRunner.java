package studio.dboo.jsp_demo;

import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.util.Date;

@Component
public class SampleRunner implements ApplicationRunner {
    @Override
    public void run(ApplicationArguments args) throws Exception {
        Date date = new Date();
        System.out.println(new SimpleDateFormat("YYYYMMdd").format(date));
    }

}
