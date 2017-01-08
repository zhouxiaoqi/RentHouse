package com.renthouse.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/file")
@Controller
public class TestController {

	@RequestMapping("/fileUpload")
	public String fileupload(@RequestParam("file") MultipartFile file, HttpServletRequest request) {
		// 判断是否为空
		if (!file.isEmpty()) {
			String filepath = "/users/zhouqi/desktop" + "/learn/" + new Date() + file.getOriginalFilename();
			// 转存文件
			try {
				file.transferTo(new File(filepath));
				System.out.println("上传成功");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("上传失败");
			}

		}
		return "jsp/list";
	}

	@RequestMapping("/list")
	public ModelAndView list(HttpServletRequest request) {
		String filepath = "/users/zhouqi/desktop" + "/learn/";
		ModelAndView mAndView = new ModelAndView("jsp/list");
		File uploadDest = new File(filepath);
		String[] fileNames = uploadDest.list();
		for (int i = 0; i < fileNames.length; i++) {
			System.out.println(fileNames[i]);
		}
		return mAndView;
	}

	// ------多文件

	@RequestMapping("/filesupload")
	public String filesupload(@RequestParam("files") MultipartFile[] files) {
		if (files != null && files.length > 0) {
			for(int i = 0;i<files.length;i++){
				MultipartFile file = files[i];
				saveFile(file);
			}
		}
		return "jsp/list";
	}

	private boolean saveFile(MultipartFile file) {
		if (!file.isEmpty()) {
			try {
				String filepath = "/users/zhouqi/desktop" + "/learn/" + new Date() + file.getOriginalFilename();
				file.transferTo(new File(filepath));
				return true;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return false;
	}

}
