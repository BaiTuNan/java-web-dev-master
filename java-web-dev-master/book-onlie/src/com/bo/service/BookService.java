package com.bo.service;

import com.bo.entity.Book;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/**
 * @author ty
 * @ClassName BookService
 * @Description 图书业务逻辑类
 * @Date 2019/10/2
 * @Version 1.0
 **/
public class BookService {

    public static List<Book> init() {
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
        return bookList;
    }


    }
