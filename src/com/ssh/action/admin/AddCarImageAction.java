package com.ssh.action.admin;

<<<<<<< HEAD
import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

=======
>>>>>>> origin/master
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.domain.CarImage;
import com.ssh.service.CarImageService;

public class AddCarImageAction extends ActionSupport {
	private static final long serialVersionUID = -8825572473566455701L;
<<<<<<< HEAD

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
=======
	private CarImage carImage;
	private CarImageService carImageService;
>>>>>>> origin/master

	public CarImageService getCarImageService() {
		return carImageService;
	}

	public void setCarImageService(CarImageService carImageService) {
		this.carImageService = carImageService;
	}

<<<<<<< HEAD
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
			session.setAttribute("message", "�ϴ��ɹ���");
			CarImage carImage = new CarImage(this.carModelId, realpath);
			this.carImageService.add(carImage);
			return SUCCESS;
		}
		return ERROR;
	}
=======
	public CarImage getCarImage() {
		return carImage;
	}

	public void setCarImage(CarImage carImage) {
		this.carImage = carImage;
	}

	@Override
	public String execute() {
		this.carImageService.add(carImage);
		return SUCCESS;
	}

>>>>>>> origin/master
}
