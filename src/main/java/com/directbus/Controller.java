package com.directbus;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

public class Controller {
	@Bean
    public WebMvcConfigurer configurer(){
        return new WebMvcConfigurer(){

            @Value("${storage.file.directory}")
            private String directory;

            @Override
            public void addCorsMappings(CorsRegistry registry) {
                registry.addMapping("/**");
            }

            @Override
            public void addResourceHandlers(ResourceHandlerRegistry registry) {
                WebMvcConfigurer.super.addResourceHandlers(registry);
                registry.addResourceHandler("/"+directory+"/**").addResourceLocations("file:"+directory+"/").setCachePeriod(10);
            }
        };
    }
}
