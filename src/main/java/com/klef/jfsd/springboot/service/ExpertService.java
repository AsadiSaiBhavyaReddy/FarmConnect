package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Content;
import com.klef.jfsd.springboot.model.Expert;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.model.Query;
import com.klef.jfsd.springboot.model.ReplyQuery;

public interface ExpertService 
{
    public String ExpertRegistration(Expert expert);
    public Expert checkExpertLogin(String email,String password);
    public String updateExpert(Expert expert);
    public String addContent(Content content);
	public List<Content> ViewAllContents();
	public Content displayContentByid(int cid );
	public List<Query> ViewAllQueries();
	public String addReplyQuery(ReplyQuery replyquery);
}
