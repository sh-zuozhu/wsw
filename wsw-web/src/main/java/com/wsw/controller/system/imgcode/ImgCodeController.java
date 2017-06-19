package com.wsw.controller.system.imgcode;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.font.FontRenderContext;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * Application: 万事屋后台管理系统<br/>
 * Description: 图片验证码<br/>
 * Copyright: Copyright (c) 2016 万事屋工作室<br/>
 * Create Date：2017年6月16日<br/>
 * 
 * @Author zhangpingan
 * @Version 1.0
 *
 */
@Controller
@RequestMapping(value="/code")
public class ImgCodeController {
	
	public static Logger LOG = LoggerFactory.getLogger(ImgCodeController.class);
	
	@RequestMapping
	public void generateImgCode(HttpServletResponse response){
		ByteArrayOutputStream output = new ByteArrayOutputStream();
		drawImg(output);
		try {
			ServletOutputStream out = response.getOutputStream();
			output.writeTo(out);
			out.close();
		} catch (IOException e) {
			LOG.error("图片验证码io异常");
		}
	}
	
	private String drawImg(ByteArrayOutputStream output){
		String code = "";
		for (int i = 0; i < 4; i++) {
			code += randomChar();
		}
		int width = 70;
		int height = 25;
		BufferedImage bi = new BufferedImage(width, height, BufferedImage.TYPE_3BYTE_BGR);
		Graphics2D g = bi.createGraphics();
		Font font = new Font("Times New Roman", Font.PLAIN, 20);
		g.setFont(font);
		g.setColor(new Color(66, 2, 82));
		g.setBackground(new Color(226, 226, 240));
		g.clearRect(0, 0, width, height);
		FontRenderContext context = g.getFontRenderContext();
		Rectangle2D bounds = font.getStringBounds(code, context);
		double x = (width - bounds.getWidth())/2;
		double y = (height - bounds.getHeight())/2;
		double ascent = bounds.getY();
		double baseY = y - ascent;
		g.drawString(code, (int)x, (int)baseY);
		g.dispose();
		try {
			ImageIO.write(bi, "jpg", output);
		} catch (IOException e) {
			LOG.error("图片验证码io异常");
		}
		return code;
	}
	
	private char randomChar(){
		Random r = new Random();
		String s = "ABCDEFGHJKLMNPRSTUVWXYZ0123456789";
		return s.charAt(r.nextInt(s.length()));
	}

}
