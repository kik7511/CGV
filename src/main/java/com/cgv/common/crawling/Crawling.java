package com.cgv.common.crawling;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URL;
import java.sql.PreparedStatement;
import java.util.HashMap;
import java.util.Map;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Crawling {

	public static void main(String[] args) throws Exception {
		 Connection conn = Jsoup.connect("https://www.musinsa.com/category/014001");
	        Document doc = conn.get();
	        Elements elements = doc.select(".li_box");
	        
	        for(int i = 0; i < elements.size() ; i++) {
	            Element el = elements.get(i);
	            String no = el.attr("data-no");
	            String title = el.selectFirst(".item_title").text();
	            String info = el.selectFirst(".list_info").text();
	            String price = el.selectFirst(".price").text();
	            String link = el.selectFirst(".list_info a").attr("href");
	            Element img = el.selectFirst(".list_img img");

	            Map<String, String> map = new HashMap<>();
	            map.put("no", no);
	            map.put("title", title);
	            map.put("info", info);
	            map.put("price", price);
	            map.put("link", link);

	            saveDB(map);
	            saveFile(no, img.attr("data-original"));
	            System.out.println(no + "번 작업 완료");
	        }
	    }

	    static void saveFile(String no, String imgSrc) throws Exception {
	        URL url = new URL(imgSrc);

	        BufferedInputStream bis = new BufferedInputStream(url.openStream());
	        File file = new File("C:\\mu", no);
	        if(!file.exists()) {
	        	file.mkdirs();
	        }

	        file = new File(file, "thumb.jpg");
	        BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(file));

	        int b = 0;
	        while((b = bis.read()) != -1) {
	        	bos.write(b);
	        }
	        bos.close();
	    }

	    static void saveDB(Map<String, String> map) throws Exception {
	        PreparedStatement pstmt = DBConn.getConnection().prepareStatement(
	        		"INSERT INTO TBL_MUSINSA_SAMPLE VALUES(?, ?, ?, ?, ?)");
	        pstmt.setString(1, map.get("no"));
	        pstmt.setString(2, map.get("title"));
	        pstmt.setString(3, map.get("info"));
	        pstmt.setString(4, map.get("price"));
	        pstmt.setString(5, map.get("link"));
	        pstmt.executeUpdate();
	        pstmt.close();
	}

}
