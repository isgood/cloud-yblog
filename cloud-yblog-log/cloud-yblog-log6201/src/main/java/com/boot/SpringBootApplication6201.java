package com.boot;

import com.boot.config.ScanClassProperties;
import com.boot.config.SwaggerConfig;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Import;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@SpringBootApplication
@Import(SwaggerConfig.class)
@EnableSwagger2
@EnableConfigurationProperties(ScanClassProperties.class)
public class SpringBootApplication6201 {

  public static void main(String[] args) {
      SpringApplication.run(SpringBootApplication6201.class,args);
  }
}
