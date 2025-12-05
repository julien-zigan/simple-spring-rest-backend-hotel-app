package de.steinuntersteinen.hotel.config.cors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
class GlobalCorsConfig {

    private final CorsProperties corsProperties;

    @Autowired
    public GlobalCorsConfig(CorsProperties corsProperties) {
        this.corsProperties = corsProperties;
    }

    @Bean
    public WebMvcConfigurer corsConfigurer() {
        return new WebMvcConfigurer() {
            @Override
            public void addCorsMappings(CorsRegistry registry) {
                registry.addMapping(corsProperties.getMapping())
                        .allowedOrigins(corsProperties.getAllowedOrigins())
                        .allowedMethods(corsProperties.getAllowedMethods())
                        .allowedHeaders(corsProperties.getAllowedHeaders())
                        .exposedHeaders(corsProperties.getExposedHeaders())
                        .allowCredentials(corsProperties.getAllowCredentials())
                        .maxAge(corsProperties.getMaxAge());
            }
        };
    }
}
