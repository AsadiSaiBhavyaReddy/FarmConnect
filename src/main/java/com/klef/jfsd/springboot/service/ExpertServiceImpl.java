package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Content;
import com.klef.jfsd.springboot.model.Expert;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.model.Query;
import com.klef.jfsd.springboot.model.ReplyQuery;
import com.klef.jfsd.springboot.repository.ContentRepository;
import com.klef.jfsd.springboot.repository.ExpertRepository;
import com.klef.jfsd.springboot.repository.QueryrRepository;
import com.klef.jfsd.springboot.repository.ReplyQueryRepository;
@Service
public class ExpertServiceImpl implements ExpertService
{
    @Autowired
	private ExpertRepository expertRepository;
    @Autowired
    private ContentRepository contentRepository;
    @Autowired
    private QueryrRepository queryrRepository;
    @Autowired
    private ReplyQueryRepository replyQueryRepository;
    
	@Override
	public String ExpertRegistration(Expert expert) 
	{
		expertRepository.save(expert);
		return "Expert Registered Succesfully";
	}
	@Override
	public Expert checkExpertLogin(String email, String password) {
		return expertRepository.checkexpertLogin(email, password);
	}
	@Override
	public String updateExpert(Expert expert) {
		Expert e =expertRepository.findById(expert.getId()).get();
		e.setContactno(expert.getContactno());
		e.setDateofbirth(expert.getDateofbirth());
		
		e.setPassword(expert.getPassword());
		e.setName(expert.getName());
		e.setGender(expert.getGender());
		e.setExpertise(expert.getExpertise());
		expertRepository.save(e);
		return "Expert Profile Updated Successfully";
	}
	@Override
	public String addContent(Content content) {
		contentRepository.save(content);
		return "Content Added Successfully";
	}
	@Override
	public List<Content> ViewAllContents() {
		return contentRepository.findAll();
	}
	@Override
	public Content displayContentByid(int cid) {
		return contentRepository.findById(cid).get();
	}
	@Override
	public List<Query> ViewAllQueries() {
		 return queryrRepository.findAll();
	}
	@Override
	public String addReplyQuery(ReplyQuery replyquery) {
		replyQueryRepository.save(replyquery);
		return "Reply Query  Added Successfully";
	}
	
	

  


}
