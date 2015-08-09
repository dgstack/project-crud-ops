/**
 * 
 */
package com.dgstack.dev.examples.service;

import java.util.List;

import com.dgstack.dev.examples.model.ProjectVO;

/**
 * @author digvijayb
 *
 */
public interface ProjectService {

	List<ProjectVO> getlistOfProject();
	
	ProjectVO editProject(int id);
	
	boolean updateProject(ProjectVO projectVO);
	
	boolean addProject(ProjectVO projectVO);
	
	boolean deleteProject(ProjectVO projectVO);
	
}
