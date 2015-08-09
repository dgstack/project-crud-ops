package com.dgstack.dev.examples.dao;

import java.util.List;

import com.dgstack.dev.examples.model.ProjectVO;

public interface ProjectDAO {

	List<ProjectVO> getlistOfProject();

	ProjectVO editProject(int id);

	boolean updateProject(ProjectVO projectVO);

	boolean addProject(ProjectVO projectVO);

	boolean deleteProject(ProjectVO projectVO);
}
