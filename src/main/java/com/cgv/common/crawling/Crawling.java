package com.cgv.common.crawling;

import java.io.IOException;
import java.util.ArrayList;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class Crawling {

	public static void main(String[] args) throws IOException {
		Document doc = Jsoup.connect("http://www.cgv.co.kr/movies/").get();
		Elements ranks = doc.select(".rank");
		Elements imgs = doc.select(".thumb-image > img");
		Elements movieAges = doc.select(".ico-grade");
		Elements movieTitles = doc.select("div.box-contents strong.title");
		Elements likes = doc.select(".count-strong > i");
	}

}
