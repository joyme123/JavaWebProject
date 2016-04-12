package com.ssh.action.admin;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.domain.CarImage;
import com.ssh.service.CarImageService;

public class AddCarImageAction extends ActionSupport {
	private static final long serialVersionUID = -8825572473566455701L;
	private CarImageService carImageService;
	private List<File> uploadFile;
	private List<String> uploadFileFileName;
	private List<String> uploadFileContentType;

	public List<String> getUploadFileFileName() {
		return uploadFileFileName;
	}

	public void setUploadFileFileName(List<String> uploadFileFileName) {
		this.uploadFileFileName = uploadFileFileName;
	}

	public List<String> getUploadFileContentType() {
		return uploadFileContentType;
	}

	public void setUploadFileContentType(List<String> uploadFileContentType) {
		this.uploadFileContentType = uploadFileContentType;
	}

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

	public List<File> getUploadFile() {
		return this.uploadFile;
	}

	public void setUploadFile(List<File> uploadFile) {
		this.uploadFile = uploadFile;
	}

	public String upload() throws IOException {
		String realpath = ServletActionContext.getServletContext().getRealPath("/assets/upload");
		String url = "";
		if (uploadFile != null) {
			File savepath = new File(realpath);
			if (!savepath.exists())
				savepath.mkdirs();
			for (int i = 0; i < uploadFile.size(); i++) {
				File savefile = new File(realpath, uploadFileFileName.get(i));
				if (url.equals(""))
					url = url + "/assets/upload/" + uploadFileFileName.get(i);
				else
					url = url + "|/assets/upload/" + uploadFileFileName.get(i);
				FileUtils.copyFile(uploadFile.get(i), savefile);
			}
			HttpSession session = ServletActionContext.getRequest().getSession();
			session.setAttribute("message", "上传成功！");
			CarImage carImage = new CarImage(this.carModelId, url);
			this.carImageService.add(carImage);
			return SUCCESS;
		}
		return ERROR;
	}
}
