package com.bo.listener;

import com.bo.entity.Book;
import com.bo.entity.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author ty
 * @ClassName ContextLoaderListener
 * @Description 上下文加载监听，在服务器启动的时候即刻生效，用来生成用户数据和图书数据
 * @Date 2019/10/2
 * @Version 1.0
 **/
@WebListener
public class ContextLoaderListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("容器启动");
        //创建并生成用户数据列表
        List<User> userList = new ArrayList<>(3);
        User[] users = {
                new User(1, "111", "698d51a19d8a121ce581499d7b701668", "开到荼蘼", "1.jpeg", "江苏南京", LocalDate.of(2018, 6, 11)),
                new User(2, "222", "698d51a19d8a121ce581499d7b701668", "小幸运", "2.jpeg", "浙江杭州", LocalDate.of(2019, 2, 18))

        };
        userList = Arrays.asList(users);

        //创建并生成图书数据列表
        List<Book> bookList = new ArrayList<>(10);
        Book[] books = {
                new Book(1, "斗罗大陆", "b1.jpg", "唐家三少"),
                new Book(2, "唯我独仙", "b2.jpg", "唐家三少"),
                new Book(3, "空速星痕", "b3.jpg", "唐家三少"),
                new Book(4, "生肖守护神", "b4.jpg", "唐家三少"),
                new Book(5, "唐门英雄传", "b5.jpg", "唐家三少"),
                new Book(6, "沧源图", "b6.jpg", "我吃西红柿"),
                new Book(7, "星峰传说", "b7.jpg", "我吃西红柿"),
                new Book(8, "星辰变", "b8.jpg", "我吃西红柿"),
                new Book(9, "九鼎记", "b9.jpg", "我吃西红柿"),
                new Book(10, "雪影领主", "b10.jpg", "我吃西红柿")
        };
        bookList = Arrays.asList(books);

        //获得全局变量
        ServletContext servletContext = sce.getServletContext();
        //设置全局变量属性，将用户和图书列表数据记入，整个应用可以共享
        servletContext.setAttribute("userList", userList);
        servletContext.setAttribute("bookList", bookList);
    }

    /**
     * 销毁方法
     *
     * @param sce
     */
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("容器销毁");
    }
}
