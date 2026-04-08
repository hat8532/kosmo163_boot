package com.tj.app;

import org.mybatis.spring.annotation.MapperScan; // 1. 임포트 확인
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan("com.tj.app")
@SpringBootApplication
public class Kosmo163BootApplication {
    public static void main(String[] args) {
        SpringApplication.run(Kosmo163BootApplication.class, args);
    }
}