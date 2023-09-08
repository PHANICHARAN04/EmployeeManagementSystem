package com.klef.ep.services;

import java.util.List;

import javax.ejb.Remote;

import com.klef.ep.models.ProjectsApplied;

@Remote
public interface ProjectsAppliedServices {
  public String addproject(ProjectsApplied proapp);
  public String deleteproject(String title);
  public List<ProjectsApplied> viewallprojects();
  public String updateproject(int token);
}