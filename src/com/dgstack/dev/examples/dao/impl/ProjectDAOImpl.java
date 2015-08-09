/**
 * 
 */
package com.dgstack.dev.examples.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dgstack.dev.examples.dao.ProjectDAO;
import com.dgstack.dev.examples.model.ProjectVO;

/**
 * @author digvijayb
 *
 */
public class ProjectDAOImpl extends HibernateDaoSupport implements ProjectDAO {

	/**
	 * 
	 */
	public ProjectDAOImpl() {
		System.out.println("ProjectDAOImpl CREATED");
	}

	@Override
	public List<ProjectVO> getlistOfProject() {
		return getHibernateTemplate().loadAll(ProjectVO.class);
	}

	@Override
	public ProjectVO editProject(int id) {
		
		return getHibernateTemplate().get(ProjectVO.class, id);
	}

	@Override
	public boolean updateProject(ProjectVO projectVO) {
		getHibernateTemplate().update(projectVO);
		return true;
	}

	@Override
	public boolean addProject(ProjectVO projectVO) {
		getHibernateTemplate().save(projectVO);
		return true;
	}

	@Override
	public boolean deleteProject(ProjectVO projectVO) {
		getHibernateTemplate().bulkUpdate("DELETE from ProjectVO where Id = ?", projectVO.getId());
		return true;
	}

}
