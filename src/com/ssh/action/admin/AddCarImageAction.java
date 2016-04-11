package com.ssh.action.admin;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.domain.CarImage;
import com.ssh.service.CarImageService;

public class AddCarImageAction extends ActionSupport {
	private static final long serialVersionUID = -8825572473566455701L;

	private CarImageService carImageService;
	private File[] file;
	private String[] fileName;
	private String[] fileType;
	private int carModelId;

	public int getCarModelId() {
		return carModelId;
	}

	public void setCarModelId(int carModelId) {
		this.carModelId = carModelId;
	}

	public CarImageService getCarImageService() {
		return carImageService;
	}

	public void setCarImageService(CarImageService carImageService) {
		this.carImageService = carImageService;
	}

	public File[] getFile() {
		return file;
	}

	public void setFile(File[] file) {
		this.file = file;
	}

	public String[] getFileName() {
		return fileName;
	}

	public void setFileName(String[] fileName) {
		this.fileName = fileName;
	}

	public String[] getFileType() {
		return fileType;
	}

	public void setFileType(String[] fileType) {
		this.fileType = fileType;
	}

	public String upload() throws IOException {
		// String realpath =
		// ServletActionContext.getServletContext().getRealPath("/image");
		String realpath = "E:\\";
		if (file != null) {
			File savepath = new File(realpath);
			if (!savepath.exists())
				savepath.mkdirs();
			for (int i = 0; i < file.length; i++) {
				File savefile = new File(realpath, fileName[i]);
				FileUtils.copyFile(file[i], savefile);
			}
			HttpSession session = ServletActionContext.getRequest().getSession();
			session.setAttribute("message", "上传成功！");
			CarImage carImage = new CarImage(this.carModelId, realpath);
			this.carImageService.add(carImage);
			return SUCCESS;
		}
		return ERROR;
	}
}
