package kr.co.eodeatzy.common;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LoggerAspect {
    protected Logger log = LoggerFactory.getLogger(LoggerAspect.class);
    
    @Around("execution(* kr.co.eodeatzy.*Controller.*(..))")
    public Object logPrint(ProceedingJoinPoint joinpoint) throws Throwable {
        Object result = null;
        
        long start = System.currentTimeMillis(); 
 
        result = joinpoint.proceed();
        
        long end = System.currentTimeMillis(); 
        
        log.info(String.format("수행시간 : %dms %n", (end-start)));
        return result;
    }
}
