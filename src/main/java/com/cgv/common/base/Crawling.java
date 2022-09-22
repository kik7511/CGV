package com.cgv.common.base;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;

public class Crawling {

    public static void main(String[] args) {
        final String naverMovieUrl = "https://movie.naver.com/movie/sdb/browsing/bmovie.naver?open=2022";
        Connection movie = Jsoup.connect(naverMovieUrl);

        try {
            Document document = movie.get();
            
            Elements titleElements = document.select("ul.directory_list > li");
            
            for (int j = 0; j < titleElements.size(); j++) {
                final String title = titleElements.get(j).text();
                System.out.println("영화 제목: " + title);
            }
            
            
            
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}