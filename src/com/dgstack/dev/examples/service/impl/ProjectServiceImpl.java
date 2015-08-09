package com.dgstack.dev.examples.service.impl;

import java.util.List;

import com.dgstack.dev.examples.dao.ProjectDAO;
import com.dgstack.dev.examples.model.ProjectVO;
import com.dgstack.dev.examples.service.ProjectService;

public abstract class ProjectServiceImpl implements ProjectService {

	protected abstract ProjectDAO createProjectDao();
	
	public ProjectServiceImpl() {
	}

	@Override
	public List<ProjectVO> getlistOfProject() {
		return createProjectDao().getlistOfProject();
	}

	@Override
	public ProjectVO editProject(int id) {
		return createProjectDao().editProject(id);
	}

	@Override
	public boolean updateProject(ProjectVO projectVO) {
		return createProjectDao().updateProject(projectVO);
	}

	@Override
	public boolean addProject(ProjectVO projectVO) {
		return createProjectDao().addProject(projectVO);
	}

	@Override
	public boolean deleteProject(ProjectVO projectVO) {
		return createProjectDao().deleteProject(projectVO);
	}
	
}
