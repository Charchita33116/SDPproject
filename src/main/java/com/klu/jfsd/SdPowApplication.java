package com.klu.jfsd;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.context.annotation.ComponentScan;

import com.ulisesbocchio.jasyptspringboot.annotation.EnableEncryptableProperties;



@SpringBootApplication
@ComponentScan()
@EnableEncryptableProperties
@ServletComponentScan

public class SdPowApplication {

    public static void main(String[] args) {
        SpringApplication.run(SdPowApplication.class, args);
        System.out.println("SDP Application Started!");
    }
 
}
