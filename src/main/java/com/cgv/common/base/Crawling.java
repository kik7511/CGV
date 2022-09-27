package com.cgv.common.base;

import java.io.IOException;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Crawling {

    public static void getMovieList() {
        final String naverMovieUrl = "https://movie.naver.com/movie/sdb/browsing/bmovie.naver?open=2022";
        Connection conn = Jsoup.connect(naverMovieUrl);

        try {	
            Document document = conn.get();
            String titleKo = getTitleKo(document);
            String titleEn = getTitleEn(document);
            String poster = getPoster(document);
            String summary = getSummary(document);
            String content = getContent(document);
            String story = getStory(document);
            String people = getPeople(document);
            String photo = getPhoto(document);
            String staff = getStaff(document);
            System.out.println(titleKo);
            System.out.println(titleEn);
            System.out.println(poster);
            System.out.println(summary);
            System.out.println(content);
            System.out.println(story);
            System.out.println(people);
            System.out.println(photo);
            System.out.println(staff);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

	private static String getStaff(Document document) {
		Elements titleKo = document.select("");
		StringBuilder sb = new StringBuilder();
		return null;
	}

	private static String getPhoto(Document document) {
		Elements titleKo = document.select("");
		StringBuilder sb = new StringBuilder();
		return null;
	}

	private static String getPeople(Document document) {
		Elements titleKo = document.select("");
		StringBuilder sb = new StringBuilder();
		return null;
	}

	private static String getStory(Document document) {
		Elements titleKo = document.select("");
		StringBuilder sb = new StringBuilder();
		return null;
	}

	private static String getContent(Document document) {
		Elements titleKo = document.select("");
		StringBuilder sb = new StringBuilder();
		return null;
	}

	private static String getSummary(Document document) {
		Elements titleKo = document.select("");
		StringBuilder sb = new StringBuilder();
		return null;
	}

	private static String getPoster(Document document) {
		Elements titleKo = document.select("");
		StringBuilder sb = new StringBuilder();
		return null;
	}

	private static String getTitleEn(Document document) {
		Elements titleKo = document.select("");
		StringBuilder sb = new StringBuilder();
		return null;
	}

	private static String getTitleKo(Document document) {
		Elements titleKo = document.select("div.mv_info > h3.h_movie");
		StringBuilder sb = new StringBuilder();
		for(Element element : titleKo) {
			for(Element a : element.select("a")) {
				sb.append(a.text());
				sb.append(" ");
			}
			break;
		}
		return sb.toString();
	}
	public static void main(String[] args) {
		getMovieList();
	  }
}