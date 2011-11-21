package com.frameworkset.proxy;

import java.lang.reflect.Method;

/**
 * <p>Title: Interceptor</p>
 *
 * <p>Description: ����������</p>
 *
 * <p>Copyright: Copyright (c) 2005</p>
 *
 * <p>Company: </p>
 *
 * @author biaoping.yin
 * @version 1.0
 */
public interface Interceptor {
	/**
	 * �������������а������쳣�׳�
	 * @param method
	 * @param args
	 * @throws Throwable
	 */
    public void before(Method method,Object[] args) throws Throwable;
    /**
	 * �������������а������쳣�׳�
	 * @param method
	 * @param args
	 * @throws Throwable
	 */
    public void after(Method method,Object[] args) throws Throwable;
    /**
	 * �������������а������쳣�׳�
	 * @param method
	 * @param args
	 * @throws Throwable
	 */
    public void afterThrowing(Method method,Object[] args,Throwable throwable) throws Throwable;
    
//    /**
//	 * �������������а������쳣�׳�
//	 * @param method
//	 * @param args
//	 * @throws Throwable
//	 */
//    public void afterThrowing(Method method,Object[] args) throws Throwable;
    /**
	 * �������������а������쳣�׳�
	 * @param method
	 * @param args
	 * @throws Throwable
	 */
    public void afterFinally(Method method,Object[] args) throws Throwable;
    
    

}