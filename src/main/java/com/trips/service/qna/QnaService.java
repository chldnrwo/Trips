package com.trips.service.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.trips.domain.qna.PageInfo;
import com.trips.domain.qna.QnaDto;
import com.trips.mapper.qna.QnaMapper;

import software.amazon.awssdk.core.sync.RequestBody;
import software.amazon.awssdk.services.s3.S3Client;
import software.amazon.awssdk.services.s3.model.ObjectCannedACL;
import software.amazon.awssdk.services.s3.model.PutObjectRequest;

@Service
public class QnaService {
	@Autowired
	private QnaMapper qnaMapper;
	
//	@Autowired
//	private S3Client s3Client;
//	
////	// s3 파일 버켓 설정해야함
//	@Value("${aws.s3.bucket}")
//	private String bucketName;
//	

	public int QnaRegister(QnaDto qna) {
		// TODO Auto-generated method stub
		int cnt = qnaMapper.insert(qna);
				
		
		return cnt;
	}

	public List<QnaDto> listQna() {
		// TODO Auto-generated method stub
		return qnaMapper.list();
	}

	public QnaDto get(int id) {
		// TODO Auto-generated method stub
		return qnaMapper.select(id);
	}


	





	


	

//	

	
}
